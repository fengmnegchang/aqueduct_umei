import 'package:mysql1/mysql1.dart';
import 'dart:async';

class MySqlManager {
  static Future<Results> query(String sql) async {
    // Open a connection (testdb should already exist)
    final conn = await MySqlConnection.connect(new ConnectionSettings(host: 'localhost', port: 3306, user: 'root', db: 'qianbailu'));

    // Query the database using a parameterized query
    var results = await conn.query(sql);
    // Finally, close the connection
    await conn.close();

    return results;
  }
}
