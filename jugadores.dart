void main(List<String> args) {
  Map<String,int> puntajes ={

    'jugador1':0,
    'jugador2':10,
    'jugador3':20,
    'jugador4':30,

  };
  print(puntajes.keys);

  for (int puntajes in puntajes.values){
    int valor = 0;
    valor = valor +10;
    puntajes = puntajes + valor;
  }

  puntajes['jugador1']=100;
  puntajes['jugador5']=0;
  puntajes.remove('jugador4');
  print(puntajes);
}