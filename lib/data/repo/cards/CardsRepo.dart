import 'package:cred/models/CreditCardModel.dart';

abstract class CardsRepo {
  Future<List<CreditCardModel>> fetchMyCards();
}