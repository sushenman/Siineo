import 'package:sqflite/sqflite.dart';
class DatabaseHelper {
  static Database? database;

  late List<Map<String, dynamic>> cartData;
  final String table = 'Cart';
  final String columnId = 'id';
  final String columnSlug = 'slug';
  final String columnTitle = 'title';
  final String columnPrice = 'price';
  final String columnImage = 'image';
  final String columnQuantity = 'quantity';
 DatabaseHelper._init();
  static final DatabaseHelper instance = DatabaseHelper._init();
  
  Future<Database> get cartDatabase async {
    if (database != null)
      return database!;
    else {
      database = await _initDB(table);
      return database!;
    }
  }
  Future <Database> _initDB(String table) async {


    final dbPath = await getDatabasesPath();
    final path = dbPath + table;

    return await openDatabase(
      path,
      version: 1,
      onCreate: _onCreate, 
    );
  }
  Future<void> _onCreate(Database db, int version) async {
    await db.execute('''
      CREATE TABLE $table(
        $columnId INTEGER PRIMARY KEY AUTOINCREMENT,
        $columnSlug TEXT,
        $columnTitle TEXT,
        $columnPrice TEXT,
        $columnImage TEXT,
        $columnQuantity TEXT
      )
    ''');
  }
  Future<int> insertCart(Map<String, dynamic> cart) async {
    final db  = await instance.cartDatabase;
    try {
      if (cart.isNotEmpty) {
        final List<Map<String, dynamic>> existingItems = await db.query(
          'Cart',
          where: 'slug = ?',
          whereArgs: [cart['slug']],
        );

        if (existingItems.isEmpty) {
          await db.insert('Cart', cart);
        
          return 0; // Successful insertion
        } else {
         
          return 3; // The same value already exists in the cart
        }
      } else {
         
        return 1; // Empty data provided
      }
    } catch (e) {
     
      print('Error inserting data: $e');
      return 2; // Error during insertion
    }
  }

Future <void> displayCart(Map<String, dynamic> cart) async {
    try {
      final db = await instance.cartDatabase;
       cartData = await db.query('Cart');
      print(cartData);
      cart["items"] = cartData;

     
    } catch (e) {
       
      print('Error displaying cart: $e');
    
    }
}
}