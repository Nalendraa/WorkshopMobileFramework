void main(List<String> args) async{
  print("Ready!!! to Sing");
  print(await line());
  print(await line2());
  print(await line3());
  print(await line4());
}

Future<String> line() async{
  String greeating ="twinkle twinkle little star";
  return await Future.delayed(Duration(seconds: 5), () => greeating);
}
Future<String> line2() async{
  String greeating ="how i wonder what you are";
  return await Future.delayed(Duration(seconds: 3), () => greeating);
}
Future<String> line3() async{
  String greeating ="up above the world so high";
  return await Future.delayed(Duration(seconds: 2), () => greeating);
}
Future<String> line4() async{
  String greeating ="like a diamond in the sky";
  return await Future.delayed(Duration(seconds: 1), () => greeating);
}