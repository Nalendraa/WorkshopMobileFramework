void main(List<String> args) async{
  var h = Human();

  print("Luffy");
  print("Zorro");
  print("Killer");
  h.getData();
  print(h.name);

}

class Human{
  String name = "nama character one piece";
  Future getData() async{
    await Future.delayed(Duration(seconds: 3));
    name = "Tony Stark";
    print("get data [done]");
  }
}
