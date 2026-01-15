class Tienda {
  static const String nombre = "Tienda La Económica";
  static String anuncio = "Bienvenidos a nuestra tienda";

  static int _productosVendidos = 0; 

  static void cambiarAnuncio(String texto) {
    anuncio = texto;
  }

  static void aumentarVentas() {
    _productosVendidos++;
  }

  static int obtenerVentas() {
    return _productosVendidos;
  }
}

class Producto {
  final String codigo;
  late String descripcion;
  double precio = 0;
  dynamic observacion;

  Producto(this.codigo);

  void registrarVenta(String descripcion, double precio, dynamic observacion) {
    this.descripcion = descripcion;
    this.precio = precio;
    this.observacion = observacion;


    Tienda.aumentarVentas();
  }

  void resumen() {
    print("Código: $codigo");
    print("Descripción: $descripcion");
    print("Precio: \$${precio}");
    print("Observación: $observacion");
    print("Tienda: ${Tienda.nombre}");
    print("Anuncio: ${Tienda.anuncio}");
 
  }
}

void main() {
  
  Producto producto1 = Producto("P001");
  Producto producto2 = Producto("P002");

  producto1.registrarVenta("Laptop Gamer", 1200.50, "Incluye mouse");
  producto2.registrarVenta("Teclado Mecánico", 85.99, 10);

  Tienda.cambiarAnuncio("¡Ofertas por tiempo limitado!");

  producto1.resumen();
  producto2.resumen();

  print("Total de productos vendidos: ${Tienda.obtenerVentas()}");
}
