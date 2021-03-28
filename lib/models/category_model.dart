class Category {
  String name;
  String imageUrl;

  Category({this.name, this.imageUrl});
}

List<Category> categories = [
  Category(
    name: 'Grocery',
    imageUrl: 'assets/images/grocery.jpg',
  ),
  Category(
    name: 'Pizza',
    imageUrl: 'assets/images/pizza.jpg',
  ),
  Category(
    name: 'Indian',
    imageUrl: 'assets/images/indian.jpg',
  ),
  Category(
    name: 'Healthy',
    imageUrl: 'assets/images/healthy.jpg',
  ),
  Category(
    name: 'Salads',
    imageUrl: 'assets/images/salads.jpg',
  ),
  Category(
    name: 'Sushi',
    imageUrl: 'assets/images/sushi.jpg',
  ),
  Category(
    name: 'Desserts',
    imageUrl: 'assets/images/desserts.jpg',
  ),
];
