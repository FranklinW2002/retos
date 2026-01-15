import 'servidor_correo.dart';

void main(List<String> args) {
  final correo1 = ServidorCorreo();
  final correo2 = ServidorCorreo();
  correo1.conectar();
  correo1.enviarCorreo('Joe', 'problemas');
  correo1.enviarCorreo('Profe', 'notas');
  correo2.enviarCorreo('gobierno', 'impuestos');
  correo2.enviarCorreo('mama', 'invitacion');
  correo1.estaConectado;
  correo2.desconectar();

}