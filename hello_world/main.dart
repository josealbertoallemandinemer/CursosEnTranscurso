void main(){

  print("Hello World");

// int,bool,var,dynamic,...

int number=9;
int numero=10;
// bool=true;
// var=10;
// dynamic=10;

print(number.runtimeType);
print(number.toString());
print(number.runtimeType);
var llamo =number.toString();
print(llamo.runtimeType);
print(llamo);
 
var one = int.parse(llamo);
print(llamo.runtimeType);

int suma=number+numero+one;
// llamo
print(suma);

var name="John";
var surname="Doe";
var fullname=name+" "+surname+" " + 100.toString();
print(fullname);

var username='$name $surname\1000';
print(username);

var username1='${name.length} ${surname[0]}\1000';
print(username1);

var username2='$name $surname $number';
print(username2);



final int edadDeJuan=23;
print(edadDeJuan);
//no cambian


// DateTime.now();

//const        constantes son como final, pero no ejecutan mas que costantes

printMessage();

printMessage1('holu');

print(sum(100,200));


String? valor='jose';

// ? para poder asignar valores null

if (10<5) {
  valor=null;
}

// print(valor.length);  dara error porque no comprobamos si es null, para eso ?

print(valor?.length);
// print(valor!.length); esto es de riesgo y es si estas 100% que no es null

if (valor!= null) {


  print(valor.contains('a'));

  print(valor.length);

  
}

final email='tets@gmail.com';

final next= email.contains('admin') && email.endsWith('@gmai.com') || email.endsWith('@yahoo.com');

print(next);

// var price=100;
  // price gusano/=, lo combierte a double

// en vez de un if:

final familyName="allemandi Nemer";

// final inicial= familyName.length>0 ? familyName[0] : 'N/A';

final inicial= familyName.length>=2 ? '${familyName[0]}${familyName[1]}' : familyName.isNotEmpty ? familyName[0] : 'N/A';

print(inicial);


// familyname ?? 'holi';   si es nulo lo de la izquierda entonces derecha


//datetime.now().weekday;

print(createUserName('jose', 'allemandi'));


// printMensaje();

// final fn=printMensaje;

// fn();


// printMensaje((){
//  return '${DateTime.now().weekday}';
// });

printMensaje(()=>'${DateTime.now().weekday}');

printMensaje(getName);

printMen((text)=>'$text${DateTime.now().weekday}');



// var array=<tipo para no cargar mucho la base de datos>[,1,2,3,4];


// List <String> nombrito=[];
// nombrito.add('j');
// nombrito.addAll(["j","o"]);
// print(nombrito);


// nombrito.removeAt(0);
// nombrito.removeAt("j");



var people=<Person>[Person('josefo'),Person('josefino')];


print(people);


// people.remove(Person('josefo')); no funcionaria , remove elimina la primera coincidencia, aqui no funciona por person

var nu=[0,1,2,3,4,5,6,7,8,9];


nu.removeWhere((number)=>number==0);

print(nu);

nu=[];

//si hubiera puesto final no podria, habria que usar num.clear();  const no dejaria nada

print(nu);



var json = Map<String,String>();

// var json1 = <String,String>{

//    'name': 'donJose',
//    'age': '15'

// };

// var json1 = <String,String>{

//    'name': 'donJose',
//    'age': '15'

// };

// json['enabled']= 'true';

// var json1 = <String,object?>{

//    'name': 'donJose',
//    'age': '15'

// };

// json['avatar']= null;

json['name']= 'donJose';
json['age']= '15';

print(json);
print(json['name']);

final age= json['caca'] ?? 'not defined';

print(age);













}

void printMessage(){
  print("hello");
}

void printMessage1(String text){
  print(text);
}

int sum(int a, int b){

    //  final result=a+b;

    //  return result;

    return a+b;
}



// String createUserName(String firstName, String lastName){
//   return '$firstName$lastName';
// }

String createUserName(String firstName, String lastName)=> '$firstName$lastName';


// void printMensaje(){print('hallo');}

// void printMensaje()=>print('hallo');

void printMensaje(String Function() callback){
  
  print(callback());

}
//funcion dentro de otra

// String getDay()=>DateTime.now().weekday.toString();

String getDay()=>'${DateTime.now().weekday}';

String getName()=>'Jose';


void printMen(String Function(String text) callback){
  
  print(callback('nemer'));

}

class Person{

   final String name;
   Person(this.name);

   @override
   String toString(){
       return name;
   }


}