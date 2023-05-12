void main() {
  String name = "na";
  bool alive = true;
  int age = 10;
  double money = 100.00;

  num x = 12;
  x = 1.1;

  //////////////////////////////////

  var numbers = [1, 2, 3, 4];

  List<int> numbers1 = [1, 2, 3, 4];

  numbers.add(1);

  // 리스트의 첫 번째 요소 //
  numbers.first;
  // 리스트의 마지막 요소 //
  numbers.last;

  // collection if //
  var giveMeFive = true;
  var numbers3 = [
    1,
    2,
    3,
    4,
    if (giveMeFive) 5,
  ];
  print(numbers3);

  // Text Interpolation //
  var name1 = 'NA';
  var age1 = 10;
  var greeting = 'Hello evertyone , my name is $name1 and I`m ${age1 + 1}';
  print(greeting);

  // Collection For //
  var oldFriends = ['na', 'jm'];
  var newFriends = [
    'a',
    'b',
    'c',
    'd',
    'e',
    for (var friend in oldFriends) "❤️ $friend",
  ];
  // for (var friend in oldFriends) {
  //   newFriends.add();
  // }
  print(newFriends);

  // Map //
  var player = {
    'name': 'na',
    'xp': 99.99,
    'superpower': false,
  };

  Map<List<int>, bool> player_num = {
    [1, 2, 3]: true,
    [2]: false,
    [3, 4, 5]: false,
  };

  List<Map<String, Object>> players = [
    {'name': 'NA', 'xp': 99.8},
    {'name': 'jm', 'xp': 88.8}
  ];

  print(player);
  print(player_num);
  print(players);

  // Set //
  Set<int> numbers4 = {1, 2, 3, 4};
  numbers4.add(1);
  numbers4.add(1);
  numbers4.add(1);
  print(numbers4);

  List<int> numbers5 = [1, 2, 3, 4];
  numbers5.add(1);
  numbers5.add(1);
  numbers5.add(1);
  print(numbers5);
}
