class Cart{
  int? id;
  String slug;
  String name;
  String price;
  String image;
  String quantity;
  
  Cart(
      {
        this.id,
        required this.slug,
        required this.name,
        required this.price,
        required this.image,
        required this.quantity,
        
      });
  factory Cart.fromJson(Map<String, dynamic> json) {
    return Cart(
      id: json['id'],
      slug: json['slug'],
      name: json['name'],
      price: json['price'],
      image: json['image'],
      quantity: json['quantity'],

    );
  }
 }