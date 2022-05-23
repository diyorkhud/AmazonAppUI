import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xFF018197),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: 100,
              child: Image(
                image: AssetImage("assets/images/amazon_logo.png"),
              ),
            ),
            Container(
              child: Row(
                children: [
                  IconButton(
                      icon: Icon(Icons.mic, color: Colors.white,), onPressed: () {  },
                  ),
                  IconButton(
                    icon: Icon(Icons.shopping_cart, color: Colors.white,), onPressed: () {  },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      body:Container(
    color: Colors.grey[300],
    child: Column(
    children: [
      //search
    Container(
    padding: EdgeInsets.only(left: 10, right: 10, bottom: 10),
    color: Color(0xFF018197),
    child: Container(
    height: 50,
    padding: EdgeInsets.only(left: 10, right: 10),
    decoration: BoxDecoration(
    border: Border.all(
    color: Colors.grey,
    width: 1, //                   <--- border width here
    ),
    borderRadius: BorderRadius.circular(5),
    color: Colors.white,
    ),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                hintText: "What are you looking for?",
                border: InputBorder.none,
                icon: Icon(Icons.search, color: Color(0xFF018197),),
              ),
            ),
          ),
          Icon(Icons.camera_alt, color: Color(0xFF018197),),
        ],
      ),
    )
    ),
      Expanded(
        child: ListView(
          children: [
            //location
            Container(
              padding: EdgeInsets.only(left: 10, right: 10),
              color: Colors.blueGrey,
              height: 45,
              child: Row(
                children: [
                  Icon(Icons.location_on, color: Colors.white,),
                  SizedBox(width: 5,),
                  Text("Deliver to Korea, Republic of", style: TextStyle(color: Colors.white),),
                ],
              ),
            ),
            //advert
            Container(
              height: 140,
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      color: Colors.white,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(topRight: Radius.circular(70), bottomRight: Radius.circular(70)),
                          color: Colors.white,
                          image: DecorationImage(
                            image: AssetImage("assets/images/image_1.jpeg"),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),

                    ),
                  ),
                  Container(
                    width: 180,
                    padding: EdgeInsets.all(20),
                    color: Colors.white,
                    child: Center(
                      child: Text("We ship 45 million products", style: TextStyle(fontSize: 16),),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 8,),
            //signin
            Container(
              padding: EdgeInsets.only(left: 16, right: 16),
              height: 160,
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                    Text("Sign in for the best experience", style: TextStyle(color: Colors.black, fontSize: 18),),
                  SizedBox(height: 15,),
                  Container(
                    width: double.infinity,
                    height: 50,
                    color: Colors.orange,
                    child: Center(
                      child: Text("Sign in", style: TextStyle(fontSize: 18),),
                    ),
                  ),
                  SizedBox(height: 15,),
                  Text("Create an account", style: TextStyle(color: Colors.blueAccent, fontSize: 18),),
                ],
              ),
            ),
            SizedBox(height: 8,),

            //deal
            Container(
              padding: EdgeInsets.all(16),
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Deal of the day", style: TextStyle(color: Colors.black, fontSize: 22),),
                  SizedBox(height: 16,),
                  Image(
                    width: double.infinity,
                    height: 240,
                    image: AssetImage("assets/images/item_7.jpeg"),
                    fit: BoxFit.cover,
                  ),
                  SizedBox(height: 16,),
                  Text("Up to 31% off APC UPS Battery Back", style: TextStyle(fontSize: 17),),
                  SizedBox(height: 16,),
                  Text("\$10.99 - \$79.9", style: TextStyle(fontSize: 17),),

                ],
              ),

            ),
            SizedBox(height: 8,),

            //best
            Container(
              padding: EdgeInsets.all(16),
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Best sellers in Electronics", style: TextStyle(color: Colors.black, fontSize: 22),),
                  SizedBox(height: 16,),
                  Container(
                    height: MediaQuery.of(context).size.width,
                    child: Row(
                      children: [
                        Expanded(
                          child: Container(
                            child: Column(
                              children: [
                                Expanded(
                                  child: Image(
                                    image: AssetImage("assets/images/item_6.jpeg"),
                                  ),
                                ),
                                SizedBox(height: 5,),
                                Expanded(
                                  child: Image(
                                    image: AssetImage("assets/images/item_5.jpeg"),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(width: 5,),
                        Expanded(
                          child: Container(
                            child: Column(
                              children: [
                                Expanded(
                                  child: Image(
                                    image: AssetImage("assets/images/item_4.jpeg"),
                                  ),
                                ),
                                SizedBox(height: 5,),
                                Expanded(
                                  child: Image(
                                    image: AssetImage("assets/images/item_3.jpeg"),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 8,),

            //camera
            Container(
              padding: EdgeInsets.all(16),
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Top products in Camera", style: TextStyle(color: Colors.black, fontSize: 22),),
                  SizedBox(height: 16,),
                  Image(
                    width: double.infinity,
                    height: 240,
                    image: AssetImage("assets/images/item_7.jpeg"),
                    fit: BoxFit.cover,
                  ),
                  SizedBox(height: 8,),
                  Container(
                    color: Colors.white,
                    width: double.infinity,
                    height: 180,
                    child: Row(
                      children: [
                        Expanded(
                          child: Container(
                            child: Image(
                              image: AssetImage("assets/images/item_3.jpeg"),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        SizedBox(width: 5,),
                        Expanded(
                          child: Container(
                            child: Image(
                              image: AssetImage("assets/images/item_4.jpeg"),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                ],
              ),

            ),
          ],
        ),
      ),
    ]
    )
      ),
        drawer: Drawer(),
    );
  }
}
