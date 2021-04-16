class Recipe {
  String label;
  String imageUrl;

  Recipe(this.label, this.imageUrl);

  static var samples = [
    Recipe('Espaguete com almondegas', 'assets/images/spaguetti-meatballs.jpg'),
    Recipe('Pizza Havaina', 'assets/images/hawaiian-pizza.jpg'),
    Recipe('Taco Salad', 'assets/images/taco-salad.jpg'),
    Recipe('Cookie de Chocolate', 'assets/images/chocolate-chip-cookies.jpg'),
  ];
}