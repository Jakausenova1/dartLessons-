import 'dart:io';
import 'dart:math';

void main() {
  game();
}

void game() {
  int min = 0;
  int max = 100;
  String ans = "";
  int count = 1;
  int counter = 1;

  print("выберите режим");
  print("комп == 1");
  print("пользователь == 2");
  print("дуэль == 3");
  ans = stdin.readLineSync()!;
  if (ans == "1") {
    int mid = ((max + min) / 2).round();
    while (ans != "yes") {
      print("ваше число $mid?");
      ans = stdin.readLineSync()!;

      if (ans == "less") {
        max = mid;
        mid = (max + min) ~/ 2;
        count++;

        print(" ваше число $mid?");
      } else if (ans == "greater") {
        min = mid;
        mid = ((max + min) / 2).round();
        count++;
      } else if (ans == "yes") {
        print("конец игры");
      } else {
        print("Вы ввели некор данные, введите less/greater");
        ans = stdin.readLineSync()!;
      }
    }
    print("комп угадал за $count ходов");
    print(" твое число $mid!");
  }
  //2 round
  if (ans == "2") {
    print("Угадай число)");
    int randomNumber = Random().nextInt(100);

    int ansNumber = int.parse(stdin.readLineSync()!);
    while (ansNumber != randomNumber) {
      if (ansNumber > randomNumber) {
        print("less");
        counter++;
        ansNumber = int.parse(stdin.readLineSync()!);
      } else if (ansNumber < randomNumber) {
        print("greater");
        counter++;
        ansNumber = int.parse(stdin.readLineSync()!);
      } else {
        print("Вы ввели некор данные, введите less/greaterе");
        ansNumber = int.parse(stdin.readLineSync()!);
      }
    }
    print("конец игры, косп загадал $randomNumber");
    print("пользователь угадал за $counter шагов");
  }
  //3
  if (ans == "3") {
    print("Дуэль, первым начинает комп");
  }
  int mid = ((max + min) / 2).round();

  while (ans != "yes" && count < 3) {
    print("ваше число $mid?");
    ans = stdin.readLineSync()!;

    if (ans == "less") {
      max = mid;
      mid = (max + min) ~/ 2;
      count++;
      print(" ваше число $mid?");
    } else if (ans == "greater") {
      min = mid;
      mid = ((max + min) / 2).round();
      count++;
    } else if (ans == "yes") {
      print("конец игры");
    } else if (count <= 3) {
      print("ходы закончились");
    } else {
      print("Вы ввели некор данные, введите less/greater");
      ans = stdin.readLineSync()!;
    }
  }
  print("было $count ходов");
  print("Очередь пользователя, угадай число");
  int randomNumber = Random().nextInt(100);
  int ansNumber = int.parse(stdin.readLineSync()!);
  while (ansNumber != randomNumber && counter < 3) {
    if (ansNumber > randomNumber) {
      print("less");
      counter++;
      ansNumber = int.parse(stdin.readLineSync()!);
    } else if (ansNumber < randomNumber) {
      print("greater");
      counter++;
      ansNumber = int.parse(stdin.readLineSync()!);
    } else if (counter <= 3) {
      print("ходы закончились");
    } else {
      print("Вы ввели некор данные, введите less/greaterе");
      ansNumber = int.parse(stdin.readLineSync()!);
    }
  }
  print("конец игры, комп загадал $randomNumber");
  print("Было $count шагов");
  if (count > counter) {
    print("$count:$counter, победил комп");
  } else if (count == counter) {
    print("$count:$counter, ничья");
  } else if (count < counter) {
    print("$count:$counter, победил пользователь");
  }
}
