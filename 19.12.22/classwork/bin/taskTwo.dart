void main() {
  Reader jaka = Reader(
    fio: "Usenova Jaka",
    libraryCardNumber: "123",
    faculty: "Law",
    dateOfBirth: "30.03.1999",
    number: "0501300399",
  );
  (jaka.takeBook(5));
  (jaka.takeBook2(["География", "Литра", "Матем", "Физика", "Англ"]));
  (jaka.returnBook(5));
  (jaka.returnBook2(["География", "Литра", "Матем", "Физика", "Англ"]));
}

class Reader {
  String fio;
  String libraryCardNumber;
  String faculty;
  String dateOfBirth;
  String number;

  takeBook(int countOfBooks) {
    print("$fio взял(а) $countOfBooks книг(и)");
  }

  takeBook2(List namesOfBooks) {
    print("$fio взял(а) книги: $namesOfBooks");
  }

  returnBook(int countOfReturns) {
    print("$fio вернул(а) $countOfReturns книг(и)");
  }

  returnBook2(List namesOfReturns) {
    print("$fio вернул(а) книги: $namesOfReturns");
  }

  Reader({
    required this.fio,
    required this.libraryCardNumber,
    required this.faculty,
    required this.dateOfBirth,
    required this.number,
  });
}



//2 черновик замудрила
// void main() {
//   Reader Jaka = Reader(
//     FIO: "Usenova Jaka",
//     libraryCardNumber: "123",
//     faculty: "Law",
//     dateOfBirth: "30.03.1999",
//     number: "0501300399",
//   );

//   print("Введите количество взятых книг");
//   int countOfBooks = int.parse(stdin.readLineSync()!);
//   int i = 1;
//   List<String> listOfBooks = [];
//   while (i <= countOfBooks) {
//     print("${Jaka.FIO} взяла $countOfBooks книг, введите названия книги $i:");
//     String books = (stdin.readLineSync()!);
//     listOfBooks.add(books);
//     i++;
//   }
//   print("${Jaka.FIO} взяла $countOfBooks книг, названия книг: $listOfBooks");
// }

// class Reader {
//   String FIO;
//   String libraryCardNumber;
//   String faculty;
//   String dateOfBirth;
//   String number;

//   takeBook() {
//     print("k");
//   }

//   returnBook() {
//     print("j");
//   }

//   Reader({
//     required this.FIO,
//     required this.libraryCardNumber,
//     required this.faculty,
//     required this.dateOfBirth,
//     required this.number,
//   });
