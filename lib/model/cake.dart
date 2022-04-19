class Cake {
  String name;
  String location;
  String url;

  Cake(this.name, this.location, this.url);

  static List<Cake> generateCakeBlog() {
    return [
      Cake('Dadar Gulung', 'Kue', 'assets/images/top1.jpg'),
      Cake('Lemper Ayam', 'Kue', 'assets/images/top2.jpg'),
      Cake('Ongol-ongol', 'Kue', 'assets/images/top3.jpg'),
      Cake('Lapis', 'Kue', 'assets/images/top4.jpg'),
    ];
  }

  static List<Cake> generateMostPopular() {
    return [
      Cake('Jajan kue', 'Carabikang', 'assets/images/bottom1.jpg'),
      Cake('Jajan kue', 'Putu Mayang', 'assets/images/bottom2.jpg'),
      Cake('Jajan kue', 'Pukis Pandan', 'assets/images/bottom3.jpg'),
      Cake('Jajan kue', 'Kueku', 'assets/images/bottom4.jpg'),
    ];
  }
}
