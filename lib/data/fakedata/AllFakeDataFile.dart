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
  CreditCardModel(0, "4334 8397 XXXX 8321", "PRATEEK SHARMA", "₹1,50,616", "DUE IN 9 DAYS", false),
  CreditCardModel(1, "4326 7283 XXXX 4839", "PRATEEK SHARMA", "₹1,20,337", "DUE IN 12 DAYS", false),
  CreditCardModel(2, "4312 9383 XXXX 6297", "PRATEEK SHARMA", "₹1,60,616", "DUE IN 4 DAYS", false),
  CreditCardModel(3, "4399 4633 XXXX 8421", "PRATEEK SHARMA", "₹2,50,616", "DUE IN 6 DAYS", false),
  CreditCardModel(4, "4373 5778 XXXX 3784", "PRATEEK SHARMA", "₹1,40,616", "DUE IN 9 DAYS", false),
];

List<String> bottomSheetRecommendedList = [
  "card benefits",
  "pay rent",
  "store",
  "rewards",
  "extras"
];