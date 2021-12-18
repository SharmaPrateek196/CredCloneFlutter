import 'package:cred/models/CreditCardModel.dart';
import 'package:cred/models/HomeAdvModel.dart';

List<HomeAdvModel> homeAdvList = [
  HomeAdvModel(0, false),
  HomeAdvModel(1, false),
  HomeAdvModel(2, false),
  HomeAdvModel(3, false),
  HomeAdvModel(4, false),
  HomeAdvModel(5, false),
  HomeAdvModel(6, false),
  HomeAdvModel(7, false),
];

List<CreditCardModel> cards = [
  CreditCardModel(0, "ICICI PLATINUM", "4334 8397 XXXX 8321", "PRATEEK SHARMA", "₹1,50,616", "DUE IN 9 DAYS", false, "assets/images/bg_card_white_gray.png", "assets/images/visa.png", "assets/images/citi.png"),
  CreditCardModel(1, "AXIS LIFESTYLE", "4326 7283 XXXX 4839", "PRATEEK SHARMA", "₹1,20,337", "DUE IN 12 DAYS", false, "assets/images/bg_card_dark.png", "assets/images/mastercardd.png", "assets/images/axis.png"),
  CreditCardModel(2, "CITI FUEL", "4312 9383 XXXX 6297", "PRATEEK SHARMA", "₹1,60,616", "DUE IN 4 DAYS", false, "assets/images/bg_card_blue.png", "assets/images/discover.png", "assets/images/citi.png"),
  CreditCardModel(4, "AXIS PREMIUM", "4373 5778 XXXX 3784", "PRATEEK SHARMA", "₹1,40,616", "DUE IN 9 DAYS", false, "assets/images/bg_card_dark.png", "assets/images/mastercard.png", "assets/images/axis.png"),
  CreditCardModel(3, "IDFC PRO", "4399 4633 XXXX 8421", "PRATEEK SHARMA", "₹2,50,616", "DUE IN 6 DAYS", false, "assets/images/bg_card_blue.png", "assets/images/amex.png", "assets/images/idfc.png"),
  CreditCardModel(2, "ICICI SHOPPING", "4312 9383 XXXX 6297", "PRATEEK SHARMA", "₹3,60,616", "DUE IN 4 DAYS", false, "assets/images/bg_card_white_gray.png", "assets/images/discover.png", "assets/images/axis.png"),
];

List<String> bottomSheetRecommendedList = [
  "benefits",
  "pay rent",
  "store",
  "rewards",
  "extras"
];