import 'package:flutter/material.dart';
import 'package:GaneShop/models/key.dart';
import 'package:GaneShop/pages/cart/cart_page.dart';

class PcPage extends StatefulWidget {
  static const routeName = '/PC';
  const PcPage({Key? key}) : super(key: key);

  @override
  _PcPageState createState() => _PcPageState();
}

class _PcPageState extends State<PcPage> {
  final PC Pc = PC();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: Text("PC"),
      ),

      body: Container(
        decoration: const BoxDecoration(
          image: const DecorationImage(
            image: const AssetImage("assets/images/background/backgroundpc.jpg"),
            fit: BoxFit.fill,
          ),
        ),
        child: ListView(
          children:[
            Wrap(
            children: [
              for(int i=0;i<Pc.PCnaja.length;i++)
              Card(
                child: InkWell(
                  onTap: () {
                    _showMaterialDialog(Pc.PCnaja[i]);
                  },
                  child: Column(
                    children: [
                      Image.asset(Pc.PCnaja[i].images,height: 250.0,),
                      Text(Pc.PCnaja[i].name,style: TextStyle(fontSize: 20.0,color: Colors.black),),
                      Text("฿ "+Pc.PCnaja[i].price,style: TextStyle(fontSize: 20.0,color: Colors.red),),
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
