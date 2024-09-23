""" Dart Lists Example Question 1

Define a fixed-length list of 4 elements of type String.
Add 4 phone brands to it.
Print the contents using the `print()` method.
Use a for loop to print to the console.
"""
void main(List<String> args) {
  List<String> phoneBrands = List.filled(4, "");
  phoneBrands[0] = "Samsung";
  phoneBrands[1] = "iPhone";
  phoneBrands[2] = "Huawei";
  phoneBrands[3] = "Redmi";

  print(phoneBrands);
  print("*********************");

  for (var i = 0; i < phoneBrands.length; i++) {
    print(phoneBrands[i]);
  }
}

// OUTPUT
/*
[Samsung, iPhone, Huawei, Redmi]
*********************
Samsung
iPhone
Huawei
Redmi
*/
