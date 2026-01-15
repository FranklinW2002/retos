Future<void> descargarArchivo() async {
  print('Iniciando descarga...');
  await Future.delayed(Duration(seconds: 3));
  print('Descarga completada');
}

void main() async {
  print('Abriendo la app');
  descargarArchivo();
  print('Revisando mensajes');
  await Future.delayed(Duration(seconds: 1));
  print('Usando redes sociales');
}
