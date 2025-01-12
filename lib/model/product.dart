class Product {

  final String image ;
  final String title ;
  final String description ;
  final String price ;
  final int rating ;

  Product({
    required this.image,
    required this.title,
    required this.description,
    required this.price,
    required this.rating,
 });
}

class ProductData {

  final List<Product> _list = [
    Product(
        image: "assets/images/item1.png",
        title: "Women Printed Kurta",
        description: "Neque porro quisquam est qui dolorem ipsum quia",
        price: "300",
        rating: 2
    ),
    Product(
        image: "assets/images/item2.png",
        title: "HRX by Hrithik Roshan",
        description: "Neque porro quisquam est qui dolorem ipsum quia",
        price: "2499",
        rating: 1
    ),
    Product(
        image: "assets/images/item3.png",
        title: "HRX by Hrithik Roshan",
        description: "Neque porro quisquam est qui dolorem ipsum quia",
        price: "2499",
        rating: 3
    ),
    Product(
        image: "assets/images/item4.png",
        title: "HRX by Hrithik Roshan",
        description: "Neque porro quisquam est qui dolorem ipsum quia",
        price: "2499",
        rating: 5
    ),
    Product(
        image: "assets/images/item5.png",
        title: "HRX by Hrithik Roshan",
        description: "Neque porro quisquam est qui dolorem ipsum quia",
        price: "2499",
        rating: 4
    ),
    Product(
        image: "assets/images/item6.png",
        title: "HRX by Hrithik Roshan",
        description: "Neque porro quisquam est qui dolorem ipsum quia",
        price: "2499",
        rating: 2
    ),
    Product(
        image: "assets/images/item7.png",
        title: "HRX by Hrithik Roshan",
        description: "Neque porro quisquam est qui dolorem ipsum quia",
        price: "2499",
        rating: 4
    ),

  ] ;

  List<Product> get list => _list ;

}