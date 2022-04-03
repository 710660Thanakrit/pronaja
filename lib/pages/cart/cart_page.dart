import 'package:flutter/material.dart';
import 'package:GaneShop/models/key.dart';

class CartPage extends StatefulWidget {
  static const routeName = '/cart';
  static List<Product> cartItem = [];

  const CartPage({Key? key}) : super(key: key);
  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    
    int totalprice = 0;
    for(var i in CartPage.cartItem)
      totalprice += int.parse(i.price);
    
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("Cart"),
      ),
      body: Container(
        child: Column(
          children: [
            Expanded(
              child: ListView(
                children:[
                  for(var i=0 ; i<CartPage.cartItem.length ; i++)
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Card(
                        child: InkWell(
                          onTap: () {
                            //_showMaterialDialog(shirt.shirtnaja[i]);
                          },
                          child: Row(
                            children: [
                              Image.asset(CartPage.cartItem[i].images,height: 250.0,),
                              Text(CartPage.cartItem[i].name,style: TextStyle(fontSize: 20.0,color: Colors.black),),
                              Expanded(child: Text("฿ "+CartPage.cartItem[i].price,style: TextStyle(fontSize: 20.0,color: Colors.red),)),
                              Container(
                                  child: InkWell(
                                      onTap: () {
                                        setState(() {
                                          CartPage.cartItem.removeAt(i);
                                        });
                                      },
                                      child: const Icon(Icons.highlight_off,size: 50.0,)),

                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("ราคาสินค้าทั้งหมด = ",style: TextStyle(fontSize: 22.0,color: Colors.black),),
                Text("฿ $totalprice",style: TextStyle(fontSize: 22.0,color: Colors.red),),
              ],
            ),
          ],
        ),

      ),

    );
  }


}
