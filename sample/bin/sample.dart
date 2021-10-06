
import 'bear.dart';
import 'bird.dart';
import 'cat.dart';
import 'dog.dart';
import 'logger.dart';
import 'tiger.dart';

void main(List<String> arguments) {
  var dog = Dog("Pochi");
  print("dog name is ${dog.name}");

  var cat = Cat("Mike");
  print("cat name is ${cat.name}");

  var tiger = Tiger(name: "leo");
  print("tiger name is ${tiger.name}");

  var bird = Bird.unknown();
  print("bird name is ${bird.name}");

  var bear1 = Bear();
  print("bear name is ${bear1.name}");
  var bear2 = Bear.name("Kuma");
  print("bear name is ${bear2.name}");

  var logger1 = Logger();
  var logger2 = Logger();
  var isSame = logger1 == logger2;
  print("logger is ${isSame ? "same" : "different"}");
}
