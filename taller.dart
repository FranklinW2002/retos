class Taller {
  static const String nombre = "Taller de Pepe";
  static String mensajeBienvenida = "Bienvenidos al taller";

  int _totalReparaciones = 0;

  void cambiarMensaje(String mensaje) {
    mensajeBienvenida = mensaje;
  }

  void incrementarContador() {
    _totalReparaciones++;
  }

  int obtenerReparaciones() {
    return _totalReparaciones;
  }
}

class Empleado {
  final String nombre;
  final Taller taller;

  Empleado(this.nombre, this.taller);

  void actualizarMensaje(String mensaje) {
    taller.cambiarMensaje(mensaje);
  }
}

class Vehiculo {
  final String placa;
  late String diagnostico;
  static String estado = 'Pendiente';
  dynamic extraInfo;

  final Taller taller;

  Vehiculo({required this.placa, required this.taller});

  void registraDiagnostico(String diagnostico) {
    this.diagnostico = diagnostico;
    estado = 'Reparado';
    extraInfo = diagnostico;
    taller.incrementarContador();
  }

  void resumen() {
    print("Placa: $placa");
    print("Diagnóstico: $diagnostico");
    print("Estado: $estado");
    print(Taller.mensajeBienvenida);
    print(Taller.nombre);
  }
}

void main() {
  final Taller taller = Taller();

  final Empleado empleado = Empleado('Carlos', taller);
  empleado.actualizarMensaje("Bienvenidos al taller de Pepe");

  final Vehiculo vehiculo1 =
      Vehiculo(placa: "IA585W", taller: taller);
  final Vehiculo vehiculo2 =
      Vehiculo(placa: "IA700O", taller: taller);

  vehiculo1.registraDiagnostico("Falla en las luces");
  vehiculo2.registraDiagnostico("Falla en las llantas");

  vehiculo1.extraInfo = "Información adicional";
  vehiculo2.extraInfo = 10.5;

  vehiculo1.resumen();
  vehiculo2.resumen();

  print(
      "El taller ha reparado ${taller.obtenerReparaciones()} vehículos");
}
