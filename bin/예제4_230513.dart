import 'dart:html';

String sayHello(String NA) => "Hello $NA nice to meet you!";

num plus(num a, num b) => a + b;

String sayHi(
    {String name = 'Blackpanther', int age = 30, String country = 'wakanda'}) {
  return "Hello $name, you are $age, and you come from $country";
}

// Required //
String required_sayHi(
    {required String name, required int age, required String country}) {
  return "Hello $name, you are $age, and you come from $country";
}

// Optional Positional Parameters //
String OPP_sayHello(String name, int age, [String? country = 'KOREA']) =>
    "Hello $name, you are $age yearts old from $country";

// QQ Operator ?? ?= //
String capitalizeName1(String? name) {
  // 만약 null이 아니면 대문자로 //
  if (name != null) {
    return name.toUpperCase();
  }
  // 그렇지 않으면 'JM'으로 return //
  return 'JM';
}

// 짧게 만들기 1 //
String capitalizeName2(String? name) =>
// name이 null과 같이 않다면 toUpperCase() :(그렇지 않으면) 'JM'을 return  //
    name != null ? name.toUpperCase() : 'JM';

// ??를 사용하여 짧게 만들기 //
String capitalizeName(String? name) => name?.toUpperCase() ?? 'JM';

void main() {
  print(sayHello('JM'));

  print(sayHi(name: 'NA'));

  print(required_sayHi(name: "abc", age: 1111, country: 'USA'));

  print(OPP_sayHello('na', 1000));

  capitalizeName('NA');
  capitalizeName(null);

  String? myname;
  myname ??= 'NA';
  myname ??= 'JM';
  print(myname);
}
