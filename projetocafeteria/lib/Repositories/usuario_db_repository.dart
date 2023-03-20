import 'package:projetocafeteria/Repositories/usuario_repository.dart';
import 'package:projetocafeteria/models/dblocal.dart';
import 'package:projetocafeteria/models/usuario.dart';
import 'package:sqflite/sqlite_api.dart';

class UsuarioDBRepository implements UsuarioRepository {
  @override
  late DBLocal dbLocal;

  UsuarioDBRepository() {
    dbLocal = DBLocal("usuarios");
  }

  @override
  Future<int?> atualizar({
    required Usuario entidade,
    required String condicao,
    required List valoresCondicao,
  }) async {
    Database banco = await dbLocal.getConexao();
    return await banco.update(
      dbLocal.tabela,
      entidade.toMap(),
      where: condicao,
      whereArgs: valoresCondicao,
    );
  }

  @override
  Future<Usuario> buscar(int id) async {
    Database banco = await dbLocal.getConexao();
    var dados = await banco.query(
      dbLocal.tabela,
      where: "id=?",
      whereArgs: [id],
    );
    return Usuario.fromMap(dados.first);
  }

  @override
  Future<int?> inserir(Usuario entidade) async {
    Database banco = await dbLocal.getConexao();
    return await banco.insert(dbLocal.tabela, entidade.toMap());
  }

  @override
  Future<List<Usuario>> listar() async {
    Database banco = await dbLocal.getConexao();
    var dados = await banco.query(
      dbLocal.tabela,
    );
    return dados.map((mapa) => Usuario.fromMap(mapa)).toList();
  }

  @override
  Future<int?> remover(
      {required String condicao, required List valoresCondicao}) async {
    Database banco = await dbLocal.getConexao();
    return await banco.delete(
      dbLocal.tabela,
      where: condicao,
      whereArgs: valoresCondicao,
    );
  }
}
