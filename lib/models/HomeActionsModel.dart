class HomeActionsCardModel {
  bool isPromo;
  String bankName;
  String bankLogo;
  String cardNumber;
  double due;
  int dueInDays;
  bool isPaid;

  HomeActionsCardModel(
      this.isPromo,
      this.bankName,
      this.bankLogo,
      this.cardNumber,
      this.due,
      this.dueInDays,
      this.isPaid,
  );
}
