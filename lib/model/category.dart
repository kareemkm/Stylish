class Category {
  final String image ;
  final String title ;

  Category({
    required this.image,
    required this.title
  });
}

class CategoryData {
  final List<Category> _list = [
    Category(
        image: "assets/images/im_beauty.png",
        title: "Beauty"
    ),
    Category(
        image: "assets/images/im_fashion.png",
        title: "Fashion"
    ),
    Category(
        image: "assets/images/im_beauty.png",
        title: "Beauty"
    ),
    Category(
        image: "assets/images/im_kids.png",
        title: "Kids"
    ),
    Category(
        image: "assets/images/im_mens.png",
        title: "Mens"
    ),
    Category(
        image: "assets/images/im_womens.png",
        title: "Womens"
    ),
    Category(
        image: "assets/images/im_beauty.png",
        title: "Beauty"
    ),
    Category(
        image: "assets/images/im_fashion.png",
        title: "Fashion"
    ),
    Category(
        image: "assets/images/im_beauty.png",
        title: "Beauty"
    ),
    Category(
        image: "assets/images/im_kids.png",
        title: "Kids"
    ),
    Category(
        image: "assets/images/im_mens.png",
        title: "Mens"
    ),
    Category(
        image: "assets/images/im_womens.png",
        title: "Womens"
    ),

  ] ;

  List<Category> get list => _list ;


}