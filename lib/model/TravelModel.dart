class TravelModel {
  String name;
  String location;
  String image;
  String distance;
  String temp;
  String rating;
  String discription;
  String price;

//این مقادیر بالا را مقداردهی کنیم داخل لیست کانستراکتور ایجاد میکنیم

  TravelModel({
    required this.name,
    required this.location,
    required this.distance,
    required this.temp,
    required this.rating,
    required this.image,
    required this.discription,
    required this.price,
  });
}

List<TravelModel> travelList = [
  TravelModel(
      name: "New York",
      location: "US -New York",
      distance: "7",
      temp: "30",
      rating: "5",
      image: 'assets/images/newyork.jpg',
      discription: "New York, often called New York City (NYC) to distinguish it from the state of New York, is the most populous city in the United States. With a 2020 population of 8,804,190 distributed over 300.46 square miles (778.2 km2), New York City is also the most densely populated major city in the United States. Located at the southern tip of the state of New York, the city is the center of the New York metropolitan area, the largest metropolitan area in the world by urban area.[9] With over 20.1 million people in its metropolitan statistical area and 23.5 million in its combined statistical area as of 2020, New York is one of the world's most populous megacities. New York City has been described as the cultural, financial, and media capital of the world, and is a significant influence on commerce, entertainment, research, technology, education, politics, tourism, dining, art, fashion, and sports. It is the most photographed city in the world.[10] Home to the headquarters of the United Nations, New York is an important center for international diplomacy,[11][12] and has sometimes been called the capital of the world. ",
      price: "3000"),
 
 TravelModel(
      name: "Tehran",
      location: "iran- Tehran",
      distance: "1",
      temp: "40",
      rating: "4",
      image: 'assets/images/tehran.jpg',
      discription: "Tehran was first chosen as the capital of Iran by Agha Mohammad Khan of the Qajar dynasty in 1786, because of its proximity to Iran's territories in the Caucasus, then separated from Iran in the Russo-Iranian Wars, to avoid the vying factions of the previously ruling Iranian dynasties. The capital has been moved several times throughout history, and Tehran is the 32nd national capital of Persia. Large-scale demolition and rebuilding began in the 1920s, and Tehran has been a destination for mass migrations from all over Iran since the 20th century.[9]",
      price: "4000"),

      TravelModel(
      name: "Paris",
      location: "Paris",
      distance: "3",
      temp: "80",
      rating: "7",
      image: 'assets/images/paris.jpg',
      discription: "Paris is a major railway, highway, and air-transport hub served by two international airports: Paris–Charles de Gaulle (the second-busiest airport in Europe) and Paris–Orly.[11][12] Opened in 1900, the city's subway system, the Paris Métro, serves 5.23 million passengers daily;[13] it is the second-busiest metro system in Europe after the Moscow Metro. Gare du Nord is the 24th-busiest railway station in the world, but the busiest located outside Japan, with 262 million passengers in 2015.[14] Paris is especially known for its museums and architectural landmarks: the Louvre received 2.8 million visitors in 2021, ",
      price: "5000"),

      TravelModel(
      name: "Rom",
      location: "Rom",
      distance: "9",
      temp: "60",
      rating: "6",
      image: 'assets/images/rom.jpg',
      discription: "Romeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee",
      price: "7000"),

      

];
