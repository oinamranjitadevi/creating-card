import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
debugShowCheckedModeBanner: false,      title: 'Flutter Demo',
      theme: ThemeData(
        
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

 

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {
  
    return Scaffold
    (
      
      body:
      Column( crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          
          Container(

padding: const EdgeInsets.only(top: 50,left: 20,bottom: 30)      ,
     child:
             Column(
crossAxisAlignment: CrossAxisAlignment.start,            children: [
              Text("Your",style: TextStyle(fontSize: 20),),
                Text("Cards",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
            ],

          ) ,
          ),
          


          
         CarouselSlider(
  options: CarouselOptions(height: 200.0, aspectRatio: 3.3),
  items: [1,2,3,].map((i) {
    return Builder(
      builder: (BuildContext context) {
        return Container(
          width: MediaQuery.of(context).size.width,
          margin: const EdgeInsets.symmetric(horizontal: 5.0),
          // ignore: prefer_const_constructors
          decoration: BoxDecoration(
            color: Colors.blue
          ),
          child: Text('text $i', style: const TextStyle(fontSize: 16.0),)
        );
      },
    );
  }).toList(),
),

Container(
  padding: EdgeInsets.all(26),

  child: Column(
    children: [
      Row(
  mainAxisAlignment: MainAxisAlignment.spaceBetween,
  children: const [
    Text("Activity"),
    Text("History",style: TextStyle(backgroundColor: Colors.grey),)
  ],

),

const Text("22 Jan"),

Column(
  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  children: [

    Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: const [
            Icon(Icons.food_bank_rounded),
            Text("cafe bill")
          ],
        
        ),

        const Text("-\$ 97 "),


      ],

    ),

    Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: const [
            Icon(Icons.local_hospital_rounded),
            Text("hospital bill")
          ],
        
        ),

        const Text("-\$ 500 "),


      ],

    ),
  
    Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: const [
            Icon(Icons.person_add_alt_1_rounded),
            Text(" saya transferred")
          ],
        
        ),

        const Text("\$ 20 "),


      ],

    ),

    Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: const [
            Icon(Icons.school_rounded),
            Text("school fee")
          ],
        
        ),

        const Text("-\$ 100 "),


      ],

    ),
    
    
    
  ],

),
    ],
  ),
)
        ],
      )
     
    );
  }
}
