class CreditCardModel {
  String cardNumber;
  String cardHolder;
  String due;
  String dueInDays;
  bool isPaid;

  CreditCardModel(
    this.cardNumber,
    this.cardHolder,
    this.due,
    this.dueInDays,
    this.isPaid,
  );
}
