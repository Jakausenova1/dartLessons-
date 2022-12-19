void main() {
  Phone first = Phone(number: "0500500500", model: "iPhone", weight: 0.2);
  Phone second = Phone(number: "0500600600", model: "Samsung", weight: 0.3);
  Phone third = Phone(number: "0500700700", model: "Mi", weight: 0.4);
  (first.receiveParametres());
  (second.receiveParametres());
  (third.receiveParametres());
  print(first.getNumber());
  print(second.getNumber());
  print(third.getNumber());
  (first.receiveCall("Aibek"));
  (first.sendMessage("00000"));
}

class Phone {
  String number;
  String model;
  double weight;

  receiveParametres() {
    print("$number, $model, $weight");
  }

  receiveCall(String name) {
    print("звонит $name");
  }

  getNumber() {
    return number;
  }

  sendMessage(String send) {
    print("сообщение будет отправлено на $send");
  }

  Phone({
    required this.number,
    required this.model,
    required this.weight,
  });
}
