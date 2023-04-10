import 'dart:math';

void main() {
final number =Random().nextInt(10)+1;
print('Random: $number'); 
}


/*
  //+ 
print (Koshuu(10, 10));
final dagyKosh = 40+ Koshuu(15, 10);
  print(dagyKosh);
  final emiKemit = dagyKosh - 10;
  
  print('Кемитилгенде: $emiKemit');
  print("_________________");
  //-
print(kemit(40, 9));
//*
print(koboyt(4, 2));
// /
print(boluu(70, 3));
// ~/ калдык мн болот
print(takbol( 40, 3));
// %
print(payiz(24, 2));
print(a[2]);
} 

int Koshuu (int a, int b) {
  final result = a+b; 
  return result;
}

int kemit(int a, int b) {
final summa = a - b;
return summa;
}

num koboyt(num a, num b) {
  final summa = a* b;
  return summa;
}
num boluu(num a, num b) {
  final summa = a/ b;
  return summa;
}
num takbol(num a, num b) {
  final summa =  a ~/ b;
  return summa;
}
num payiz(num a, num b) {
  final summa =  a % b;
  return summa;
}

// Variablis -  типы данных. озгормолор
// число. текст. логика
// String - тексттерди алуучу маалымат туру
// жалан текст жазылат. тырнакчага алынышы шарт
// String A= "" ;     ; - создун бутушу
// int b = 10; интижер- бул бутун сандарды алуучу маалыматтын туру
// //- бул болчок сандарды алуучу маалымат туру
// doubl C=1.2 ; 1.4 ; 10.5 ;
// num d= 10 ; // - болчок сандыда бутун сандыда алат
// num i = 1.5;
// bool f= true- чын , bool s= false - жалган
// bool -бул логикалык маалымат туру
// dinamic g = true; dinamic w - "Hello World" ; dinamic t- 10; 10.2; 
// динамик баардык маалымат турун алат. бирок муну мн жазсак бул чон болуп тушуп
// коп мегабайт камтып калат. ошого  арбирин озунчо колдонгонубуз жакшы
// dinamic - бул динамикалуу маалымат туру
// {} - функция бул программисттин ишин женилдетет. дарт тилинде функцияны колдонобуз
// функцияга озубуз ат койсок болот
// print-  бул проектке логика бергенде 
//ошол логиканы дебаг консолго корсотуп чыгарып берет.
// void - натыйжа бербеген параметри жок функция
// void printMesseg ("string name, int.age")
// print(name)
// print(age)
// TextFormField - onChanchet алат 
// Value - маани берет. эмнени жазсак Debug Console до корсотот 
// null - берсек кнопкабыз иштебей калат. 
// hintext- стринг алат. подсказкага окшош. мисалы: телефон иконканын алдына 
// телефон номери деп жазылып турган болот. биз номерди жазсак бул очуп кетет
//Dart Collections = list, set, map
// List  [] List printList = [""];
// Set {} - бир озгормону бир эле жолу алат
// Set printSet {true, falce, 100, 40.5,Bilim2200} эгер ушул жерге 100 дон 
// экоону жазсак бироосун эле алат
// Map{} -  Map printMap = {"Hello": "Salam",};
// {20: "Free": "Follow": 30};
// print (printMap);
// List birlist = <String> ["Salam", "code", "dina"]
// print(birlist)
// <> - бул знакты бир гана стринг алсык десек беребиз <String>
// list birlist = <int> [10, 20, 40, 1000]
// Map birMap = <dinamic, string> {10: "10", "free": "hello"}; 
// print (birMap);
List a = <String> ["a", "b", "c", "d"];
// лист элемент мн иштейт. жогорудагы торт тамганы 0 дон баштап эсептен
// 0 = a, 1= b, 2= c, 3=d  болот. 


