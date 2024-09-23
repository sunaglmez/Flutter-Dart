""" Dart Lists Example Question 4

Define a dynamically sized list that holds a map with String keys and dynamic values.
The map should store the city name, the number of districts, and the license plate code. You can define two cities in this way.
Let's print our list.
"""
void main(List<String> args) {
  List<Map<String, dynamic>> cities = [];

  // First Method: Creating the first city
  Map<String, dynamic> city1 = {
    "cityName": "Kırklareli",
    "districtCount": 7,
    "licensePlateCode": 39
  };

  // Second Method: Creating the second city
  Map<String, dynamic> city2 = {};
  city2["cityName"] = "İstanbul";
  city2["districtCount"] = 16;
  city2["licensePlateCode"] = 34;

  // Adding the cities to the list
  cities.add(city1);
  cities.add(city2);
  
  // Adding another city using a different method
  cities.add({"cityName": "Tekirdağ", "districtCount": 14, "licensePlateCode": 59});

  print(cities);
  // This will print the maps within our list. For a more formatted output,
  // we can access the elements using a for loop. Let's do that in the example below.
}

/* OUTPUT
[
  {cityName: Kırklareli, districtCount: 7, licensePlateCode: 39}, 
  {cityName: İstanbul, districtCount: 16, licensePlateCode: 34}, 
  {cityName: Tekirdağ, districtCount: 14, licensePlateCode: 59} 
]
*/
