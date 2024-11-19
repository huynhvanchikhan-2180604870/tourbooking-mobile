class DataModel {
  final String title;
  final String rate;
  final String location;
  final String contryName;
  final String pay;
  final String date;
  final String image;

  DataModel(this.title, this.rate, this.location, this.contryName, this.pay,
      this.date, this.image);
}

List<DataModel> dataHome = [
  DataModel("Nusa Pedina", "4.5", "Bali, Indonesia", "Indonesia", "\$300",
      "12 - 18 Jan 2023", "img/1.png"),
  DataModel("Wachau Forest", "4.8", "river Danube, Austria", "Austria", "\$500",
      "08 - 28 Jan 2023", "img/2.png"),
  DataModel("Nusa Pedina", "4.5", "Bali, Indonesia", "Indonesia", "\$250",
      "14 - 12 Jan 2023", "img/3.png"),
  DataModel("Nusa Pedina", "4.5", "Bali, Indonesia", "Indonesia", "\$450",
      "03 - 13 Jan 2023", "img/4.png"),
];
