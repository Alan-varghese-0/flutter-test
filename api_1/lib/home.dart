import 'package:api_1/details.dart';
import 'package:api_1/pokemon.dart'; // shared model
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Pokemon> pokemonList = [];
  bool isLoading = false;
  int offset = 0;
  final int limit = 50;
  String selectedType = "All";

  final List<String> types = [
    "All",
    "grass",
    "fire",
    "water",
    "bug",
    "normal",
    "poison",
    "electric",
    "ground",
    "fairy",
    "fighting",
    "psychic",
    "rock",
    "ghost",
    "ice",
    "dragon",
    "dark",
    "steel",
    "flying",
  ];

  @override
  void initState() {
    super.initState();
    fetchPokemonPage(); // Load first page
  }

  Future<void> fetchPokemonPage() async {
    if (isLoading) return;
    setState(() => isLoading = true);

    try {
      var response = await Dio().get(
        "https://pokeapi.co/api/v2/pokemon?limit=$limit&offset=$offset",
      );

      List results = response.data['results'];

      var futures = results.map((item) async {
        var detail = await Dio().get(item['url']);
        var data = detail.data;

        return Pokemon(
          id: data['id'],
          name: data['name'],
          imageUrl: data['sprites']['front_default'] ?? "",
          types: (data['types'] as List)
              .map((t) => t['type']['name'].toString())
              .toList(),
          hp: (data['stats'][0]['base_stat']),
          attack: (data['stats'][1]['base_stat']),
          defense: (data['stats'][2]['base_stat']),
        );
      }).toList();

      var newPokemon = await Future.wait(futures);

      setState(() {
        pokemonList.addAll(newPokemon);
        offset += limit;
      });
    } catch (e) {
      print("Error fetching Pokémon: $e");
    } finally {
      setState(() => isLoading = false);
    }
  }

  Future<void> fetchPokemonByType(String type) async {
    if (type == "All") {
      pokemonList.clear();
      offset = 0;
      await fetchPokemonPage();
      return;
    }

    setState(() {
      isLoading = true;
      pokemonList.clear();
    });

    try {
      var response = await Dio().get("https://pokeapi.co/api/v2/type/$type");

      List results = response.data['pokemon'];

      var futures = results.take(50).map((item) async {
        var detail = await Dio().get(item['pokemon']['url']);
        var data = detail.data;

        return Pokemon(
          id: data['id'],
          name: data['name'],
          imageUrl: data['sprites']['front_default'] ?? "",
          types: (data['types'] as List)
              .map((t) => t['type']['name'].toString())
              .toList(),
          hp: (data['stats'][0]['base_stat']),
          attack: (data['stats'][1]['base_stat']),
          defense: (data['stats'][2]['base_stat']),
        );
      }).toList();

      var typePokemon = await Future.wait(futures);

      setState(() {
        pokemonList = typePokemon;
      });
    } catch (e) {
      print("Error fetching type Pokémon: $e");
    } finally {
      setState(() => isLoading = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Pokémon List"),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: DropdownButton<String>(
              value: selectedType,
              isExpanded: true,
              items: types
                  .map(
                    (type) => DropdownMenuItem(
                      value: type,
                      child: Text(type.toUpperCase()),
                    ),
                  )
                  .toList(),
              onChanged: (value) {
                if (value != null) {
                  setState(() => selectedType = value);
                  fetchPokemonByType(value.toLowerCase());
                }
              },
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: pokemonList.length + 1,
              itemBuilder: (context, index) {
                if (index == pokemonList.length) {
                  return isLoading
                      ? const Center(
                          child: Padding(
                            padding: EdgeInsets.all(16.0),
                            child: CircularProgressIndicator(),
                          ),
                        )
                      : ElevatedButton(
                          onPressed: selectedType == "All"
                              ? fetchPokemonPage
                              : null,
                          child: const Text("Load More"),
                        );
                }

                var p = pokemonList[index];
                return Card(
                  margin: const EdgeInsets.symmetric(
                    horizontal: 12,
                    vertical: 6,
                  ),
                  child: ListTile(
                    leading: Hero(
                      tag: p.id,
                      child: Image.network(p.imageUrl, width: 50, height: 50),
                    ),
                    title: Text(p.name.toUpperCase()),
                    subtitle: Text("Types: ${p.types.join(", ")}"),
                    trailing: Text("#${p.id}"),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => PokemonDetailPage(pokemon: p),
                        ),
                      );
                    },
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
