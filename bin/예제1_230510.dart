void main() {
  var name = 'NA';
  print(name);

  Object name1;
  name1 = 'na';
  name1 = 10;
  name1 = true;

  dynamic name2; ////////????////////
  if (name2 is String) {
    //////////String////////////
  }

  // Without null safety:

  //bool isEmpty(String string) => string.length == 0;
  //isEmpty(null);

  // with null safety:
  String? NA = 'NA';
  NA = null;
  NA?.isNotEmpty;
}
