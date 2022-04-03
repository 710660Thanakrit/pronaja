import 'package:flutter/material.dart';
import 'package:GaneShop/pages/cart/cart_page.dart';
import 'package:GaneShop/pages/PSN/Psn_page.dart';
import 'package:GaneShop/pages/profile/your_profile.dart';
import 'package:GaneShop/pages/PC/Pc_page.dart';
import 'package:GaneShop/pages/XBOX/Xbox_page.dart';

class HomePage extends StatefulWidget {
  static const routeName = '/home';
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: Text('หน้าหลัก'),
        leading: IconButton(
          onPressed: () {
            Navigator.pushNamed(context, YourProfile.routeName);
          },
          icon: Icon(Icons.person),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, CartPage.routeName);
            },
            icon: Icon(Icons.shopping_cart),
          ),
        ],
      ),


      body: Container(
        decoration: const BoxDecoration(
          image: const DecorationImage(
              image: const AssetImage("assets/images/background/background3.jpg"),
            fit: BoxFit.fill,
          ),
        ),
        child: Column(
          children: [
            const Center(
                child: Text("CDKAI",style: TextStyle(fontSize: 70.0,color: Colors.white),),
            ),
            Wrap(
              children: [
                //shirt
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Card(
                    color: Colors.green,
                    child: InkWell(
                      onTap:() {
                        Navigator.pushNamed(context, PcPage.routeName);
                      },
                      child: Column(
                        children:  [
                          Image.asset("assets/images/pc/Steam.png",height: 100.0,),
                          const Text("PC",style: TextStyle(fontSize: 15.0),),
                        ],
                      ),
                    ),
                  ),
                ),

                //Pants
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Card(
                    color: Colors.green,
                    child: InkWell(
                      onTap:() {
                        Navigator.pushNamed(context, PsnPage.routeName);
                      },
                      child: Column(
                        children:  [
                          Image.asset("assets/images/PSN/images.png",height: 100.0,),
                          const Text("PSN",style: TextStyle(fontSize: 15.0),),
                        ],
                      ),
                    ),
                  ),
                ),

                //Shoes
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Card(
                    color: Colors.green,
                    child: InkWell(
                      onTap:() {
                        Navigator.pushNamed(context, XboxPage.routeName);
                      },
                      child: Column(
                        children:  [
                          Image.asset("assets/images/xbox/xbox.png",height: 100.0,),
                          Text("XBOX",style: TextStyle(fontSize: 15.0),),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      )
    );
  }
}
