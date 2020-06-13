import 'dart:math';

void main() {
  Random rng = new Random();

  print("-------------------------------------------------");
  print("Frequency test");
  print("-------------------------------------------------\n");
  
  List list = new List();
  for(num i = 0; i <100000; i++){
    num x  = rng.nextInt(100000);
    if(list.contains(x)){
      print("Number $x repeated in $i iteration");
      break;
    }
    list.add(x);
  }
  print("\nBad score, chosen number repeated too fast\n");

  print("\n-------------------------------------------------");
  print("Mean test");
  print("-------------------------------------------------\n");

  num sum = 0;
  for(num i = 1; i< 100001;i++){
    num x = rng.nextInt(1000);
    sum += x;
  }

  print("Number of iterations: 100001, sum: $sum, mean: ${sum/100001}\n");
  print("Nice score, close to 500");
}
