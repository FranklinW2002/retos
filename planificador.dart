void main(List<String> args) {
  List<String> comidasFavoritas=['sancocho','encebollado','cevche','chucchucara'];
  comidasFavoritas.add('pescado');
  comidasFavoritas.remove('sancocho');
  print(comidasFavoritas[2]);

  List<List<String>> comidasSemanales = [

    ['desayuno1','almuerso1','cena1'],
    ['desayuno2','almuerso2','cena2'],
    ['desayuno3','almuerso3','cena3'],
    ['desayuno4','almuerso4','cena4'],
    ['desayuno5','almuerso5','cena5'],
    ['desayuno6','almuerso6','cena6'],
    ['desayuno7','almuerso7','cena7'],

  ];
  int i = 1;
  print(comidasSemanales[1][1]);
  comidasSemanales[4][2]='otra comida';
  for(List dia in comidasSemanales){
    print('------dia$i-------');
    i++;
    for(String comidas in dia){
      print(comidas);
    }
  }
}