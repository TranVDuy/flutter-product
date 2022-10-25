library cart;

import 'package:project_learning_g1/model/CartModel.dart';
import 'package:project_learning_g1/model/ProductModel.dart';


List<CartModel> lst = [];

void addToCart(ProductModel product, int unit){
  bool ok = true;
  for (int i = 0; i < lst.length; i++){
    if (lst[i].id == product.id){
      ok = false;
      lst[i]?.quantity += unit;
    }
  }
  if (ok){
    lst.add(CartModel(id: product.id,
          title: product.title,
          price: product.price,
          description: product.description,
          category: product.category,
          image: product.image,quantity: unit));
  }
}

void remove(int id) {
  for (int i = 0; i < lst.length; i++){
    if (lst[i].id == id){
      lst.remove(lst[i]);
      break;
    }
  }
}

CartModel findById(int id){
  for (int i = 0; i < lst.length; i++){
    if (lst[i].id == id){
      return lst[i];
    }
  }
  return CartModel(quantity: 0,id:-1);
}

// bool handleAddCart(ProductModel pAdd) {
//   //Check
//   // Nếu product đã có trong cart thì số lượng tăng thêm 1
//   if (checkProductExistsInCart(pAdd)) {
//     setState(() {
//       lst.map((e) {
//         if (e.id == pAdd.id) {
//           e.quantity = e.quantity! + 1;
//         }
//       }).toList();
//     });
//     return true;
//   }
//   else {
//     //Nếu product chưa có trong cart thì thêm mới quantity = 1
//     if (!checkProductExistsInCart(pAdd)) {
//       CartModel cAdd = new CartModel(
//           id: pAdd.id,
//           title: pAdd.title,
//           price: pAdd.price,
//           description: pAdd.description,
//           category: pAdd.category,
//           image: pAdd.image,
//           quantity: 1
//       );
//       return true;
//     }
//     else {
//       return false;
//     }
//   }
// }