// Dart Class //
class Player1 {
  final String name1 = 'na';
  int xp1 = 1000;

  void sayHello() {
    print("Hi my name is $name1");
  }
}

// 생성자 Constructors //
class Player2 {
  // late final String name;
  // late int xp;

  final String name2;
  int xp2;

  // Player(String name, int xp) {
  //   this.name = name;
  //   this.xp = xp;
  // }

  Player2(this.name2, this.xp2);

  void sayHello() {
    print("Hi my name is $name2");
  }
}

// Named Constructor Parameters //
class Player3 {
  final String name3;
  int xp3;
  String team3;
  int age3;

  Player3(
      {required this.name3,
      required this.xp3,
      required this.team3,
      required this.age3});

  void sayHello() {
    print("Hi my name is $name3");
  }
}

// Named Constructor //
class Player4 {
  final String name4;
  int xp4, age4;
  String team4;

  Player4({
    required this.name4,
    required this.xp4,
    required this.team4,
    required this.age4,
  });

  Player4.createBluePlayer({
    required String name4,
    required int age4,
  })  : this.age4 = age4,
        this.name4 = name4,
        this.team4 = 'blue',
        this.xp4 = 0;

  Player4.createRedPlayer(String name4, int age4)
      : this.name4 = name4,
        this.age4 = age4,
        this.team4 = 'red',
        this.xp4 = 0;
}

// Practice //
class Player5 {
  final String name5;
  int xp5;
  String team5;

  Player5.fromJson(Map<String, dynamic> playerJson)
      : name5 = playerJson['name'],
        xp5 = playerJson['xp'],
        team5 = playerJson['team'];

  void sayHello() {
    print("Hi my name is $name5 and my team color is $team5");
  }
}

// Cascade Notation //
class Player6 {
  String name6;
  int xp6;
  String team6;

  Player6({required this.name6, required this.xp6, required this.team6});

  void sayHello() {
    print("Hi my name is $name6 and my team color is $team6");
  }
}

// Enums //
enum Team { red, Blue }

enum XPLevel { Iron, Bronze, Shilver, Gold }

class Player7 {
  String name7;
  XPLevel xp7;
  Team team7;

  Player7({
    required this.name7,
    required this.xp7,
    required this.team7,
  });

  void sayHello() {
    print("Hi my name is $name7 and my team color, xp is $team7 , $xp7");
  }
}

// Abstract Class //
abstract class Human1 {
  void walk();
}

class Player8 extends Human1 {
  String name8;
  XPLevel xp8;
  Team team8;

  Player8({
    required this.name8,
    required this.xp8,
    required this.team8,
  });

  void walk() {
    print("$name8 Player walking");
  }

  void sayHello() {
    print("Hi my name is $name8 and my team color, xp is $team8 , $xp8");
  }
}

// 상속 Inheritance //
class Human {
  final String name9;

  Human(this.name9);

  void sayHello() {
    print("Hi my name is $name9");
  }
}

class Player9 extends Human {
  final Team team9;

  Player9({
    required this.team9,
    required String name9,
  }) : super(name9);

  @override
  void sayHello() {
    super.sayHello();
    print('and I play for $team9');
  }
}

// Mixins //
class Strong {
  final double strenghtLevel = 1500.99;
}

class QuichRunner {
  void runQuick() {
    print("ruuuuuuuuuuuuuuuun!");
  }
}

class Tall {
  final double height = 1.99;
}

class Player10 with Strong, QuichRunner, Tall {
  final Team team;

  Player10({
    required this.team,
  });
}

class Hors with Strong, QuichRunner {}

class kid with QuichRunner {}

/////////////////////////////////////////////////////////////////////////////
main() {
  var player1 = new Player1();
  print(player1.name1);
  // player.name = 'lalalalala';
  // print(player.name);
  player1.sayHello();

  var player2 = Player2("JM", 9999);
  player2.sayHello();

  var player3 = Player3(
    name3: "aaa",
    xp3: 3333,
    team3: "blue",
    age3: 9090,
  );

  var blueplayer = Player4.createBluePlayer(
    name4: "NA",
    age4: 222,
  );
  var redplayer = Player4.createRedPlayer("JM", 333);

  var apiData = [
    {
      "name": "A",
      "xp": 0,
      "team": "Red",
    },
    {
      "name": "B",
      "xp": 0,
      "team": "Blue",
    },
    {
      "name": "C",
      "xp": 0,
      "team": "Black",
    },
  ];
  apiData.forEach((playerJson) {
    var player5 = Player5.fromJson(playerJson);
    player5.sayHello();
  });

  var aaa = Player6(name6: 'NA', xp6: 100, team6: 'Black');
  aaa.name6 = 'NA';
  aaa.xp6 = 9999;
  aaa.team6 = 'Blue';

  var bbb = Player6(name6: 'NA', xp6: 100, team6: 'Black')
    ..name6 = 'NA'
    ..xp6 = 9999
    ..team6 = 'Blue'
    ..sayHello();

  var na = Player7(name7: "na", xp7: XPLevel.Bronze, team7: Team.red);

  var player8 = Player8(name8: "NA", xp8: XPLevel.Shilver, team8: Team.Blue);
  player8.walk();

  var player9 = Player9(
    team9: Team.red,
    name9: 'NA',
  );
  player9.sayHello();

  var player10 = Player10(team: Team.red);
  player10.runQuick();
}
