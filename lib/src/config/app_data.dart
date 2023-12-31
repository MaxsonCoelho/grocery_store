import 'package:grocery_store/src/models/cart_item_model.dart';
import 'package:grocery_store/src/models/item_model.dart';
import 'package:grocery_store/src/models/order_model.dart';
import 'package:grocery_store/src/models/user_model.dart';

ItemModel apple = ItemModel(
  description:
      'A melhor maçã da região e que conta com o melhor preço de qualquer quitanda. Este item conta com vitaminas essenciais para o fortalecimento corporal, resultando em uma vida saudável.',
  imgUrl: 'assets/fruits/apple.png',
  itemName: 'Maçã',
  price: 5.5,
  unit: 'kg',
);

ItemModel grape = ItemModel(
  imgUrl: 'assets/fruits/grape.png',
  itemName: 'Uva',
  price: 7.4,
  unit: 'kg',
  description:
      'A melhor uva da região e que conta com o melhor preço de qualquer quitanda. Este item conta com vitaminas essenciais para o fortalecimento corporal, resultando em uma vida saudável.',
);

ItemModel guava = ItemModel(
  imgUrl: 'assets/fruits/guava.png',
  itemName: 'Goiaba',
  price: 11.5,
  unit: 'kg',
  description:
      'A melhor goiaba da região e que conta com o melhor preço de qualquer quitanda. Este item conta com vitaminas essenciais para o fortalecimento corporal, resultando em uma vida saudável.',
);

ItemModel kiwi = ItemModel(
  imgUrl: 'assets/fruits/kiwi.png',
  itemName: 'Kiwi',
  price: 2.5,
  unit: 'un',
  description:
      'O melhor kiwi da região e que conta com o melhor preço de qualquer quitanda. Este item conta com vitaminas essenciais para o fortalecimento corporal, resultando em uma vida saudável.',
);

ItemModel mango = ItemModel(
  imgUrl: 'assets/fruits/mango.png',
  itemName: 'Manga',
  price: 2.5,
  unit: 'un',
  description:
      'A melhor manga da região e que conta com o melhor preço de qualquer quitanda. Este item conta com vitaminas essenciais para o fortalecimento corporal, resultando em uma vida saudável.',
);

ItemModel papaya = ItemModel(
  imgUrl: 'assets/fruits/papaya.png',
  itemName: 'Mamão papaya',
  price: 8,
  unit: 'kg',
  description:
      'O melhor mamão da região e que conta com o melhor preço de qualquer quitanda. Este item conta com vitaminas essenciais para o fortalecimento corporal, resultando em uma vida saudável.',
);

// Lista de produtos
List<ItemModel> items = [
  apple,
  grape,
  guava,
  kiwi,
  mango,
  papaya,
];

List<String> categories = [
  'Frutas',
  'Grãos',
  'Verduras',
  'Temperos',
  'Cereais'
];

List<CartItemModel> cartItems = [
  CartItemModel(
    item: mango,
    quantity: 1,
  ),
  CartItemModel(
    item: papaya,
    quantity: 4,
  ),
  CartItemModel(
    item: apple,
    quantity: 2,
  )
];

UserModel user = UserModel(
  email: 'pedro@gmail.com',
  name: 'Pedro',
  phone: '92 99229 - 9292',
  cpf: '9575448899-66',
  password: '',
);

List<OrderModel> orders = [
  OrderModel(
    copyAndPasteTotal: 'asdasdasdad',
    createdDateTime: DateTime.parse(
      '2021-06-08 10:00:10.458',
    ),
    id: 'sdadasd',
    items: [
      CartItemModel(
        item: apple,
        quantity: 3,
      ),
      CartItemModel(
        item: mango,
        quantity: 1,
      )
    ],
    overdueDateTime: DateTime.parse(
      '2021-06-08 10:00:10.458',
    ),
    status: 'pending_payment',
    total: 13.00,
  ),

  OrderModel(
    copyAndPasteTotal: 'asdasdasdad',
    createdDateTime: DateTime.parse(
      '2021-06-08 10:00:10.458',
    ),
    id: 'sdadasd',
    items: [
      CartItemModel(
        item: apple,
        quantity: 3,
      ),
      CartItemModel(
        item: papaya,
        quantity: 5,
      )
    ],
    overdueDateTime: DateTime.parse(
      '2021-06-08 10:00:10.458',
    ),
    status: 'pending_payment',
    total: 13.00,
  )
];
