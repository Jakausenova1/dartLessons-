import 'dart:io';

void main() {
//1
  print('1 задание: Введите число от 1 до 31: ');
  String first = stdin.readLineSync()!;
  int f = int.parse(first);
  if (f <= 10) {
    print("1");
  } else if (f <= 20) {
    print("2");
  } else if (f <= 31) {
    print("3");
  } else {
    print("введите число от 0 до 31");
  }
//2
  print('2 задание: Введите число от 1 до 12: ');
  String second = stdin.readLineSync()!;
  int s = int.parse(second);
  if (s <= 2) {
    print("winter");
  } else if (s >= 3 && s < 6) {
    print("spring");
  } else if (s >= 6 && s < 9) {
    print("summer");
  } else if (s >= 9 && s < 12) {
    print("autumn");
  } else if (s == 12) {
    print("winter");
  } else {
    print("введите число от 0 до 12");
  }
//3
  String ab = "abcde";
  if (ab[0] == "a") {
    print("да");
  } else {
    print("нет");
  }
//4
  String four = "12345";
  if (four[0] == "1" || ab[0] == "2" || ab[0] == "3") {
    print("да");
  } else {
    print("нет");
  }
//5
  print('5 задание: Введите первое число');
  String fiveOne = stdin.readLineSync()!;
  int one = int.parse(fiveOne);
  print('5 задание: Введите второе число');
  String fiveTwo = stdin.readLineSync()!;
  int two = int.parse(fiveTwo);
  print('5 задание: Введите третье число');
  String fiveThree = stdin.readLineSync()!;
  int three = int.parse(fiveThree);
  print(one + two + three);

//6
  print('6 задание: Введите первое число');
  String sixOne = stdin.readLineSync()!;
  int onee = int.parse(sixOne);
  print('6 задание: Введите второе число');
  String sixTwo = stdin.readLineSync()!;
  int twoo = int.parse(sixTwo);
  print('6 задание: Введите третье число');
  String sixThree = stdin.readLineSync()!;
  int threee = int.parse(sixThree);
  print('6 задание: Введите четвертое число');
  String sixFour = stdin.readLineSync()!;
  int fourr = int.parse(sixFour);
  print('6 задание: Введите пятое число');
  String sixFive = stdin.readLineSync()!;
  int five = int.parse(sixFive);
  print('6 задание: Введите шестое число');
  String sixSix = stdin.readLineSync()!;
  int six = int.parse(sixSix);
  if (onee + twoo + threee == fourr + five + six) {
    print("сумма первых равно сумме вторых");
  } else {
    print("не равны");
  }

//7
  print('7 задание: Введите логин');
  String mm = stdin.readLineSync()!;
  print('7 задание: Введите пароль');
  String pp = stdin.readLineSync()!;
  do {
    print('7 задание: Введите пароль');
    String pp = stdin.readLineSync()!;
  } while (pp == "123456");

//8
  // int total = 0;
  // int summ = 0;
  // print('8 задание: введите числа (0-выход и подсчет результата)');
  // String eight = stdin.readLineSync()!;
  // int ee = int.parse(eight);
  // do {
  //   print('8 задание: введите числа (0-выход и подсчет результата)');
  //   String eight = stdin.readLineSync()!;
  //   int ee = int.parse(eight);
  //   if (ee != 0) {
  //     print("число ${total++} = $ee");
  //     total++;
  //     summ += ee;
  //     print("arif= ${summ / ee}");
  //   }
  // } while (ee == 0);   (не поняла)

  //9
  int summary = 0;
  print('9 задание: введите начало диапазона');
  String startS = stdin.readLineSync()!;
  int start = int.parse(startS);
  print('9 задание: введите конец диапазона');
  String endS = stdin.readLineSync()!;
  int end = int.parse(endS);
  int i = start;
  while (i <= end) {
    if (i % 2 != 0) {
      summary += i;
    }
    i++;
  }
  print("сумма нечетных чисел с $start до $end = $summary");
}
