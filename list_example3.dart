""" Dart Lists Example Question 3

Create a map with the key type as String and the value type as dynamic.
Input the type of the bicycle (city, mountain), the number of gears, and whether it has a light.
Print the entered values using a for-in loop.
"""
void main(List<String> args) {
  // Creating the map
  Map<String, dynamic> bicycle = {};
  bicycle["type"] = "mountain";
  bicycle["gearCount"] = 21;
  bicycle["hasLight"] = true;

  // Alternative way to create the map
  Map<String, dynamic> bicycle2 = {
    "type": "city",
    "gearCount": 21,
    "hasLight": true
  };

  print("Bicycle Characteristics:");
  for (var bike in bicycle2.entries) {
    print(" ${bike.key} : ${bike.value} ");
  }
}

// OUTPUT
/*
Bicycle Characteristics:
 type : city 
 gearCount : 21 
 hasLight : true 
*/
