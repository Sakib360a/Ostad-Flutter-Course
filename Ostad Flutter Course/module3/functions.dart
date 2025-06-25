import 'dart:io';
main(){
  
  double num1,num2;
  print("প্রথম সংখ্যাটি দাওঃ ");
  num1=double.parse(stdin.readLineSync()!);
  print("দ্বিতীয় সংখ্যাটি দাওঃ ");
  num2=double.parse(stdin.readLineSync()!);
  print("The sum is : ${Sum().toStringAsPrecision(3)}");
  
}
//  double Sum(double num1, double num2)
// {
//   double ans=num1+num2;
//   return ans.toDouble();
// }
double Sum({double num1=5, double num2=10})
{
  double ans=num1+num2;
  return ans.toDouble();
}