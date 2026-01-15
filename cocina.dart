Future<void> precalentarHorno() async {
  print('Precalentando el horno...');
  await Future.delayed(Duration(seconds: 4));
  print('Horno listo');
}

void main() async {
  print('Empiezo a cocinar');
  precalentarHorno(); // tarea en segundo plano
  print('Cortando verduras');
  await Future.delayed(Duration(seconds: 2));
  print('Preparando la salsa');
}
