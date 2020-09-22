// Declaraciones de built-intypes.
int n1 = 5; // type expecifitado
double n2; // n2=null
num n3; // number int/double
var n4 = 4; // type inferido

String s1 = 'Hello, world!';
String s2 = 'hello ' 'world!';
var s3 = '''
multi 
line\ttext
'''; // inferido
var s4 = '$n2=null, 11=${n1 + 6}'; // interpolación
var s5 = r'Yo no\n salto'; // raw

bool b1 = true; // o false

dynamic d1 = 4; // d1 = cualquier type

// Constantes .
const PI = 3.14; // compile-time const.
final area = PI * 5 * 5; // run-time
// un único punto de asignación

//Enum
enum tallas { XS, S, M, L, XL, XXL, XXXL }

// Una función.
void printInteger(int aNumber) {
  print('The number is $aNumber.');
}

// El punto de entrada (main).
int main(List<String> arguments) {
  print('Hello world!');

  assert(PI == 3.14); // verificación

  // Condicionales
  d1 = 10 > n4 ? "Greater" : "Smaller"; // dynamic de int a String

  if (n1 > 0 && n4 < 3) {
    n4 = n2 ?? n4; // n2 si no es null, o n3
  }

// Colecciones
  var list1 = [1, 2, 3]; // lista
  var list2 = <int>[]; // lista vacia
  List<int> list3; // idem
  var list4 = List.empty(); // idem
  var list5 = List(5); // Tamaño fijo

  var map1 = {'uno': 1, 'dos': 2}; // mapas k,v
  var map2 = <int, String>{}; // mapa int->string

  var set1 = {1, 2, 3, 1}; // conjunto
  var set2 = {};
  var set3 = <int>{};

// find, add, remove, update
  list1.add(4);
  list1.contains(3);
  list1.remove(2);
  list1.removeAt(0);
  d1 = list1.firstWhere((element) => element > 3, orElse: () => 0);
  print('value: $d1');

  map1['tres'] = 3;
  map1.remove('tres');
  d1 = map1['dos'];
  print('value: $d1');

  set1.add(4);
  set1.remove(3);

// Ciclos
  // forEach + lambda
  tallas.values.forEach((v) => print('value: $v, index: ${v.index}'));

  printInteger(n1);
  return arguments.length;
}
