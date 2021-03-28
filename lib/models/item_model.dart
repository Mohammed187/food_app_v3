class Item {
  String name;
  String imageUrl;
  String description;
  String price;

  Item({
    this.name,
    this.imageUrl,
    this.description,
    this.price,
  });
}

List<Item> items = [
  Item(
    name: 'Chicken Shawarma',
    imageUrl: 'assets/images/chickenShawarma.jpg',
    description:
        'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s',
    price: '20',
  ),
  Item(
    name: 'Meat Shawarma',
    imageUrl: 'assets/images/meatShawarma.jpg',
    description:
        'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s',
    price: '30',
  ),
  Item(
    name: 'Chicken Shawarma Plutter',
    imageUrl: 'assets/images/shawarmaPlutter.jpg',
    description:
        'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s',
    price: '20',
  ),
  Item(
    name: 'Meat Shawarma Plutter',
    imageUrl: 'assets/images/meatPlutter.jpg',
    description:
        'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s',
    price: '25',
  ),
  Item(
    name: 'Pepsi',
    imageUrl: 'assets/images/pepsi.jpg',
    description:
        'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s',
    price: '5',
  ),
];
