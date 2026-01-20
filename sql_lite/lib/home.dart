import 'package:flutter/material.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Database? _database;
  TextEditingController _controller = TextEditingController();
  List<Map<String, dynamic>> _items = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _initializatindata();
  }

  Future<void> _initializatindata() async {
    final databasepath = await getDatabasesPath();
    final path = join(databasepath, 'example.db');
    _database = await openDatabase(
      path,
      version: 1,
      onCreate: (db, version) async {
        await db.execute('''CREATE TABLE items (
     id INTEGER PRIMARY KEY AUTOINCREMENT,
     name TEXT NOT NULL )''');
      },
    );
    _refresh();
  }

  Future<void> _isert(String name) async {
    if (_database == null) return;
    await _database!.insert('items', {
      'name': name,
    }, conflictAlgorithm: ConflictAlgorithm.replace);
    _controller.clear();
    _refresh();
  }

  Future<void> _refresh() async {
    if (_database == null) return;
    final item = await _database!.query('items');
    setState(() {
      _items = item;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Sql data ')),
      body: Center(
        child: Column(
          children: [
            TextField(
              controller: _controller,
              decoration: InputDecoration(
                labelText: 'enter your items',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                final name = _controller.text.trim();
                if (name.isNotEmpty) {
                  _isert(name);
                }
              },
              child: Text('insert data'),
            ),
            SizedBox(height: 50),
            Expanded(
              child: ListView.builder(
                itemCount: _items.length,
                itemBuilder: (context, index) {
                  final item = _items[index];
                  return ListTile(
                    title: Text(item['name']),
                    subtitle: Text('ID${item['id']}'),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
