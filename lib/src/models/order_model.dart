import 'package:grocery_store/src/models/cart_item_model.dart';

class OrderModel {
  String id;
  DateTime createdDateTime;
  DateTime overdueDateTime;
  List<CartItemModel> items;
  String status;
  String copyAndPasteTotal;
  double total;

  OrderModel({
    required this.copyAndPasteTotal,
    required this.createdDateTime,
    required this.id,
    required this.items,
    required this.overdueDateTime,
    required this.status,
    required this.total
  });

}