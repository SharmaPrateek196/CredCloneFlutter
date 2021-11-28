import 'dart:ffi';

class CreditCardModel {
  String bankName;
  String cardNumber;
  Double due;
  int dueInDays;

  CreditCardModel(
    this.bankName,
    this.cardNumber,
    this.due,
    this.dueInDays,
  );
}
