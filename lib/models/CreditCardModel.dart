import 'dart:ffi';

class CreditCardModel {
  String bankName;
  String bankLogo;
  String cardNumber;
  Double due;
  int dueInDays;
  bool isPaid;

  CreditCardModel(
    this.bankName,
    this.bankLogo,
    this.cardNumber,
    this.due,
    this.dueInDays,
    this.isPaid,
  );
}
