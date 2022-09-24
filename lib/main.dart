import 'package:flutter/material.dart';
import 'package:outline_search_bar/outline_search_bar.dart';

void main() {
  runApp(const NwHme());
}

class NwHme extends StatefulWidget {
  const NwHme({Key? key}) : super(key: key);

  @override
  _NwHmeState createState() => _NwHmeState();
}

class _NwHmeState extends State {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(190),
          child: Center(
            child: Stack(children: [
              AppBar(
                backgroundColor: Colors.lightBlueAccent[200],
                actions: [
                  IconButton(
                      onPressed: () {}, icon: const Icon(Icons.favorite_border))
                ],
                leading: const Icon(Icons.menu),
              ),
          Padding(
            padding: const EdgeInsets.only(right: 10,left: 10,top: 80),
            child: Column(children: [
                  Text(
                  "Type your Location",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                SizedBox(height: 13,),
                OutlineSearchBar(
                  searchButtonPosition: SearchButtonPosition.leading,
                  borderRadius: BorderRadius.circular(30),
                  hintText: '    Bouddha, Kathmandu',
                ),
            ],),
          )
            ]),
          ),
        ),
        body: SafeArea(
          child: ListView(
            children: [
              SizedBox(height: 20,),
              Column(children: [
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(05),
                              color: Colors.pink),
                          height: 80,
                          width: 100,
                          child: Stack(children: [
                            const Padding(
                                padding: EdgeInsets.only(top: 52, left: 33),
                                child: Text("Hotel",
                                    style: TextStyle(color: Colors.white))),
                            Center(
                              child: Padding(
                                padding: const EdgeInsets.all(25.0),
                                child: Column(
                                  children: const [Icon(Icons.hotel)],
                                ),
                              ),
                            ),
                          ]),
                        ),
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(05),
                              color: Colors.blueAccent),
                          height: 80,
                          width: 100,
                          child: Stack(children: [
                            const Padding(
                                padding: EdgeInsets.only(top: 52, left: 18),
                                child: Text("Restaurant",
                                    style: TextStyle(color: Colors.white))),
                            Center(
                              child: Padding(
                                padding: const EdgeInsets.all(25.0),
                                child: Column(
                                  children: const [
                                    Icon(Icons.local_dining_sharp),
                                  ],
                                ),
                              ),
                            ),
                          ]),
                        ),
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(05),
                              color: Colors.orange),
                          height: 80,
                          width: 100,
                          child: Stack(children: [
                            const Padding(
                                padding: EdgeInsets.only(top: 52, left: 35),
                                child: Text(
                                  "Cafe",
                                  style: TextStyle(color: Colors.white),
                                )),
                            Center(
                              child: Padding(
                                padding: const EdgeInsets.all(25.0),
                                child: Column(
                                  children: const [Icon(Icons.coffee)],
                                ),
                              ),
                            ),
                          ]),
                        )                                                                            
                      ]),
                ),
                Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Stack(children: [                                                                                                           
                  Column(children: [
                      Container(
                      width: double.infinity,
                      height: 300,
                      decoration: BoxDecoration(image: DecorationImage(image: NetworkImage(
                          'https://www.gannett-cdn.com/-mm-/05b227ad5b8ad4e9dcb53af4f31d7fbdb7fa901b/c=0-64-2119-1259/local/-/media/USATODAY/USATODAY/2014/08/13/1407953244000-177513283.jpg'),fit: BoxFit.cover)),
                    
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [  Icon(Icons.star_border_outlined),
                 ],),
                 Padding(
                   padding: const EdgeInsets.only(top: 240,),
                   child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
             
              
                    
                    children: [
                    Container(
                                decoration: const BoxDecoration(color: Colors.white),
                                height: 35,
                                width: 45,
                            
                                child: const Center(
                                  child: Text(
                                    "\$40",
                                    style: TextStyle(color: Colors.black),
                                  ),
                                )),
                   ],),
                 )
                      ],
                    ),
                    ),
                    
                   Column(
crossAxisAlignment: CrossAxisAlignment.start,
mainAxisAlignment: MainAxisAlignment.end,                    
                    children: [
                       Text(
                        "Awesome room near Bouddha",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                      Text("Bouddha, Kathmandu"),
                      Row(
                        children: const [
                          Icon(Icons.star, color: Colors.green),
                          Icon(Icons.star, color: Colors.green),
                          Icon(Icons.star, color: Colors.green),
                          Icon(Icons.star, color: Colors.green),
                          Icon(Icons.star, color: Colors.green),
                          Text("(220 reviews)")
                        ],
                      )                                                                                                                                                                                                                                                                  
                   ],),
                        
                  ],)
                   
                    ])),
              ]),
            ],
          ),
        ),
      ),
    );
  }
}