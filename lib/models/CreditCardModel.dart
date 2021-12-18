class CreditCardModel {
  int index;
  String bankName;
  String cardNumber;
  String cardHolder;
  String due;
  String dueInDays;
  bool isPaid;
  String bgPath;
  String ccProviderPath;
  String bankPath;

  CreditCardModel(
    this.index,
    this.bankName,
    this.cardNumber,
    this.cardHolder,
    this.due,
    this.dueInDays,
    this.isPaid,
    this.bgPath,
    this.ccProviderPath,
    this.bankPath
  );
}
