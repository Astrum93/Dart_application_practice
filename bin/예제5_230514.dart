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
class Player {
  String name;
  int xp;
  String team;

  Player({required this.name, required this.xp, required this.team});

  void sayHello() {
    print("Hi my name is $name and my team color is $team");
  }
}

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

  var aaa = Player(name: 'NA', xp: 100, team: 'Black');
  aaa.name = 'NA';
  aaa.xp = 9999;
  aaa.team = 'Blue';

  var bbb = Player(name: 'NA', xp: 100, team: 'Black')
    ..name = 'NA'
    ..xp = 9999
    ..team = 'Blue'
    ..sayHello();
}
