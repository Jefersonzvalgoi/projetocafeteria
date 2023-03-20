import 'package:sqflite/sqflite.dart';
import 'package:sqflite/sqlite_api.dart';
import 'package:path/path.dart';

class DBLocal {
  final String _tabela;
  final String _nomeDotabase;

  DBLocal(this._tabela, [this._nomeDotabase = "banco.db"]);

  String get tabela => this._tabela;

  Future<Database> getConexao() async {
    String caminhoDoBanco = await getDatabasesPath();

    String caminhoCompleto = join(caminhoDoBanco, _nomeDotabase);
    return await openDatabase(caminhoCompleto, version: 1,
        onCreate: (Database db, int version) async {
      await db.execute(
          'CREATE TABLE $_tabela (id INTEGER PRIMARY KEY AUTOINCREMENT, nome TEXT, email TEXT)');
    });
  }
}
