import 'package:projetocafeteria/models/IRepository.dart';
import 'package:projetocafeteria/models/dblocal.dart';
import 'package:projetocafeteria/models/usuario.dart';

abstract class UsuarioRepository implements IRepository<Usuario> {
  late DBLocal dbLocal;
}
