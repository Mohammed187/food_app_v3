class Restaurant {
  String name;
  String imageUrl;
  int rating;
  List<String> cuisine;
  String eta;
  String distance;
  String offer;

  Restaurant({
    this.name,
    this.imageUrl,
    this.rating,
    this.cuisine,
    this.eta,
    this.distance,
    this.offer,
  });
}

List<Restaurant> restaurants = [
  Restaurant(
    name: 'Pizza Hut',
    imageUrl: 'assets/images/pizza1.jpeg',
    rating: 4,
    cuisine: ['Lebanese', 'Falafel', 'Soup'],
    eta: '30-40',
    distance: '1.8 KM away',
    offer: '50%',
  ),
  Restaurant(
    name: 'Shawarma bite',
    imageUrl: 'assets/images/shawarma1.jpeg',
    rating: 4,
    cuisine: ['Lebanese', 'Shawarma', 'Soup'],
    eta: '40-50',
    distance: '1.8 KM away',
    offer: '50%',
  ),
  Restaurant(
    name: 'Indian Pot',
    imageUrl: 'assets/images/indian1.jpeg',
    rating: 4,
    cuisine: ['Lebanese', 'Indian', 'Soup'],
    eta: '15-30',
    distance: '1.8 KM away',
    offer: '50%',
  ),
  Restaurant(
    name: 'Sushi Bar',
    imageUrl: 'assets/images/sushi1.jpeg',
    rating: 4,
    cuisine: ['Sushi', 'Rice', 'Soup'],
    eta: '15-30',
    distance: '1.8 KM away',
    offer: '50%',
  ),
  Restaurant(
    name: 'CheeseCake Factory',
    imageUrl: 'assets/images/cheesecake1.jpeg',
    rating: 4,
    cuisine: ['Desserts', 'Cake', 'Cheesecake'],
    eta: '25-30',
    distance: '1.8 KM away',
    offer: '50%',
  ),
];
