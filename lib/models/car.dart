class Car {
  final String name;
  final String imageUrl;
  final double rating;
  final int price;

  Car({
    required this.name,
    required this.imageUrl,
    required this.rating,
    required this.price,
  });
}

final List<Car> cars = [
  Car(
    name: 'Tesla Model S',
    imageUrl: 'https://placeholder.com/300x200',
    rating: 4.8,
    price: 299,
  ),
  Car(
    name: 'Ferrari LaFerrari',
    imageUrl: 'https://placeholder.com/300x200',
    rating: 4.9,
    price: 599,
  ),
  Car(
    name: 'Lamborghini Aventador',
    imageUrl: 'https://placeholder.com/300x200',
    rating: 4.7,
    price: 499,
  ),
  Car(
    name: 'BMW M5 CS',
    imageUrl: 'https://placeholder.com/300x200',
    rating: 4.6,
    price: 399,
  ),
];