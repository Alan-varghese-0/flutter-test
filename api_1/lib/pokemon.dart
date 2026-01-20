class Pokemon {
  final int id;
  final String name;
  final String imageUrl;
  final List<String> types;
  final int? hp;
  final int? attack;
  final int? defense;

  Pokemon({
    required this.id,
    required this.name,
    required this.imageUrl,
    required this.types,
    this.hp,
    this.attack,
    this.defense,
  });
}
