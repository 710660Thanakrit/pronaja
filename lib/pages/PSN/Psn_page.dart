import 'package:flutter/material.dart';
import 'package:GaneShop/models/key.dart';
import 'package:GaneShop/pages/cart/cart_page.dart';

class PsnPage extends StatefulWidget {
  static const routeName = '/PSN';
  const PsnPage({Key? key}) : super(key: key);

  @override
  _PsnPageState createState() => _PsnPageState();
}

class _PsnPageState extends State<PsnPage> {
  final PSN psn = PSN();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text("PSN"),
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: const DecorationImage(
            image: const AssetImage("assets/images/background/backgroundpsn.png"),
            fit: BoxFit.fill,
          ),
        ),
        child: ListView(
          children: [
            Wrap(
            children: [

              for(int i=0;i<psn.psnnaja.length;i++)
                Card(
                  child: InkWell(
                    onTap: () {
                      _showMaterialDialog(psn.psnnaja[i]);
                    },
                    child: Column(
                      children: [
                        Image.asset(psn.psnnaja[i].images,height: 250.0,),
                        Text(psn.psnnaja[i].name,style: TextStyle(fontSize: 20.0,color: Colors.black),),
                        Text("฿ "+psn.psnnaja[i].price,style: TextStyle(fontSize: 20.0,color: Colors.red),),
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
            // ปุ่ม OK ใน dialog
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
