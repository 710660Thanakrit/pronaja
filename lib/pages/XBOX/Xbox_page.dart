import 'package:flutter/material.dart';
import 'package:GaneShop/models/key.dart';
import 'package:GaneShop/pages/cart/cart_page.dart';

class XboxPage extends StatefulWidget {
  static const routeName = '/XBOX';
  const XboxPage({Key? key}) : super(key: key);

  @override
  _XboxPageState createState() => _XboxPageState();
}

class _XboxPageState extends State<XboxPage> {
  final Xbox XBOX = Xbox();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text("XBOX"),
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: const DecorationImage(
            image: const AssetImage("assets/images/background/backgroundxbox.png"),
            fit: BoxFit.fill,
          ),
        ),
        child: ListView(
          children: [
            Wrap(
            children: [

              for(int i=0;i<XBOX.Xboxnaja.length;i++)
                Card(
                  child: InkWell(
                    onTap: () {
                      _showMaterialDialog(XBOX.Xboxnaja[i]);
                    },
                    child: Column(
                      children: [
                        Image.asset(XBOX.Xboxnaja[i].images,height: 250.0,),
                        Text(XBOX.Xboxnaja[i].name,style: TextStyle(fontSize: 20.0,color: Colors.black),),
                        Text("฿ "+XBOX.Xboxnaja[i].price,style: TextStyle(fontSize: 20.0,color: Colors.red),),
                      ],
                    ),
                  ),
                ),
            ],
          ),
        ],
        ),
      ),
    );
  }

  void _showMaterialDialog(Product j) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(j.name),
          content: Column(
            children: [
              Image.asset(j.images,height: 250.0,),
              Text("PLATFORM :"+j.platform, style: Theme.of(context).textTheme.bodyText2,),
              Text("REGION :"+j.region, style: Theme.of(context).textTheme.bodyText2),
              Text("฿ "+j.price, style: Theme.of(context).textTheme.bodyText2),
              Card(
                child: InkWell(
                  onTap:() {
                    CartPage.cartItem.add(j);
                  },
                  child: Column(
                    children:  [
                      Icon(Icons.add_shopping_cart,size: 40.0,),
                    ],
                  ),
                ),
              ),
            ],
          ),
          actions: [
            TextButton(
              child: const Text('close'),
              onPressed: () {
                // ปิด dialog
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
}
