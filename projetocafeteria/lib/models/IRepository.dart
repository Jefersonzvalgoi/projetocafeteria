abstract class IRepository<T> {
  Future<List<T>> listar();

  Future<T> buscar(int id);

  Future<int?> inserir(T entidade);

  Future<int?> atualizar({
    required T entidade,
    required String condicao,
    required List valoresCondicao,
  });

  Future<int?> remover({
    required String condicao,
    required List valoresCondicao,
  });
}
