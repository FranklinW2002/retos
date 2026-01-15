

class ServidorCorreo {

  static final _instancia = ServidorCorreo._interno();
  factory ServidorCorreo()=>_instancia;
  ServidorCorreo._interno();

  bool _conectado = false;

   bool get estaConectado=>_conectado;

   void conectar(){
    if(!_conectado){
      _conectado = true;
      print('servidor conectado correctamente');
    }else{
      print('el servidor ya esta conectado');
    }
  }

  void enviarCorreo(String destinatario,String asunto){
    if(_conectado){
      print('Correo enviado a $destinatario con asunto $asunto');
    }else{
      print('el servidor no esta conectado');
    }
  }
 

   void desconectar(){
    if(_conectado){
      _conectado = false;
      print('servidor desconectado correctamente');
    }else{
      print('el servidor ya esta desconectado');
    }
  }
}