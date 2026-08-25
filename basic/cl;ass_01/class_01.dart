import 'dart:io';

void main(){
print("Hello, World");
print(10);
print("Sakib");

// single-line comments =//
//multiline comment= /**/

/*
Datatypes: String, int, double, bool 

*/

String name ="Sakib";
int num1= 10;
double num2=10.5;
bool isLogged=true;

// Dynamic and Var = Datatypes cant changes following the values

Dynamic value = "Hello"; // Datatypes became String 
value = 10; // Datatype became int
value = 10.55; // Datatype became double. 

//Dynamic datatypes changes frequently following the values. So it not a good practise. 

//Var 

var x = 10;
//x ="Hello"; //Won't work because in var, they sticked to the first datatype assigned. 

var x=20;

//final and const

final currentTime= DateTime.now();
//const currentTime= DateTime.now(); wont work.

const pi = 3.1416;

//final can update its value on runtime. const can't update it's value. It fixed it's value on  compileTime. 
//Null Safety. 

//String = null; // by default dart won't take any null values

String? imageUrl=null; //We can take nullabe value in dart by using ? mark at datatype. 

print( imageUrl ?? "default.png"); //if it's null then send the default  value. 

/*----------------------Operators-----------------*/

int a=10;
int b= 10;

print(a+b); // add
print(a-b); //sub
print(a/b); // division 
print(a*b);// multi
print(a%b); //mod

//Assignment operators
int  p =10; 
p += 10; // P=P+10
p -= 5; // P = P-5
p *= 2; // P= P* 2

// Increment and Decrement

p++; //p=p+1
p--;  //P= p-1

// Comparison Operators

int age = 20;
print(age == 19);
print(age > 18);
print(age< 20);
print(age >= 19);
print(age <= 20);

// Logical Op
int age2 18;
bool hasTicket = false;
print(age2 >= 20 && hasTicket); // Must Statify two conditions
print(age2 >= 20 || hasTicket); // Any one condition must be true

/*Type Conversion or Type Casting */
String k = "20";
int z int.parse(k);
int q = 20
String t = q.toString();



/*-----Control Flow----*/

int age3= 11; 
bool hasNid =true;
if (age3 >= 18 && age3 <= 59) {

print("Enjoy the Ride");

}
else if (age3 >= 60) 
{
print("Sorry, For your own good"); 
} 

else {print("Sorry"); }

if (age3 * 3 >= 28)
if (hasNid) {
print("Enjoy! You've NID");
}
if (hasNid == false) {
print("Plz bring NID");
}
else {
print("Sorry");}

// Switch Case
String day = "Monday";
switch (day) {
case "Monday":
print("Comp Quiz");
break; 
case "Friday":
print("Will eat good food");
break;
default:
print("I've class");

}}