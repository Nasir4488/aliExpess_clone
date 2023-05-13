const String paint = "assests/stain-mixed-paint.jpg";
const String jogging = "assests/running-exercise-slim-fast-muscular.jpg";
const String guitor = "assests/old-wooden-guitar-isolated.jpg";
const String party = "assests/001-confetti.png";
const String sw1 = "assests/slider1.jpg";
const String sw2 = "assests/slider2.jpg";
const String sw3 = "assests/slider3.jpg";

List<String> images=[
  paint,jogging,guitor,party,sw1,sw2,sw3,
];
List<String> imagetitle=[
  "Nike Air VaporMax Evo",
  "Nike Air VaporMax Evo",
  "Nike Air VaporMax Evo",
  "Nike Air VaporMax Evo",
  "Nike Air VaporMax Evo",
  "Nike Air VaporMax Evo",
  "Nike Air VaporMax Evo",
];
List<String> imageprice=[
  "Rs6000/-",
  "Rs6000/-",
  "Rs6000/-",
  "Rs6000/-",
  "Rs6000/-",
  "Rs6000/-",
  "Rs6000/-",
  ];

class MySwaiper{
  final String title;
  final String image;
  final String description;

  MySwaiper({required this.title,required this.image,required this.description});
}

class MyProduct{
  final String img;
  final String title;
  final String price;
  MyProduct({required this.img,required this.title,required this.price});
}


List<MySwaiper> all = [
  MySwaiper(title: "Beli Sekarang",image: sw1,description: "Biaya Sepatu Rebookdengan discount 15%"),
  MySwaiper(title: "Beli Sekarang",image: sw2,description: "Biaya Sepatu Rebookdengan discount 15%"),
  MySwaiper(title: "Beli Sekarang",image: sw3,description: "Biaya Sepatu Rebookdengan discount 15%"),
];
List<MyProduct> products=[
  MyProduct(img: party, title: "Nike Air VaporMax Evo", price: "Rs5000"),
  MyProduct(img: paint, title: "Nike Air VaporMax Evo", price: "Rs5000"),
  MyProduct(img: jogging, title: "Nike Air VaporMax Evo", price: "Rs5000"),
  MyProduct(img: guitor, title: "Nike Air VaporMax Evo", price: "Rs5000"),
  MyProduct(img: sw1, title: "Nike Air VaporMax Evo", price: "Rs5000"),
  MyProduct(img: sw2, title: "Nike Air VaporMax Evo", price: "Rs5000"),
  MyProduct(img: sw3, title: "Nike Air VaporMax Evo", price: "Rs5000"),
];