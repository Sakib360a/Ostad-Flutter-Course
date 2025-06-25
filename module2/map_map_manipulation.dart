import 'dart:io';

void main()
{
  Map<String, String>person={
    "Name": "Sakib",
    "Age": "25",
    "Phone":"01873759226",
    "Address": "622, No Kamal Khan Road, Ibrahimpur, Kafrul, Dhaka-1206",
    "Blood Group":"O+"
  };
  print(person);
  person.forEach((key,value)
  {
    stdout.write("Enter $key: ");
    String?input=stdin.readLineSync();
    if(input!=null)
      {
        person[key]=input;
      }
  }
  );
  print("\n");
  person.forEach((key,value)
  {
    print("Person $key:$value");
  }
  );

}