import 'package:flutter/material.dart';

class YourProfile extends StatefulWidget {
  static const routeName = '/profile';
  const YourProfile({Key? key}) : super(key: key);

  @override
  _YourProfileState createState() => _YourProfileState();
}

class _YourProfileState extends State<YourProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("Profile"),
      ),

      body: Container(
        decoration: const BoxDecoration(
          image: const DecorationImage(
            image: const AssetImage("assets/images/background/backgroundprofile.jpg"),
            fit: BoxFit.fill,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Center(
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(100.0),
                  child: SizedBox(
                    width: 200.0,
                    height: 200.0,
                    child: Image.asset('assets/images/background/kawjao.jpg',fit: BoxFit.fill,),
                  )),
            ),


            Text("Your Profile",style: TextStyle(fontSize: 15.0),),
            Text("ชื่อ : ธนกฤต",style: TextStyle(fontSize: 22.0),),
            Text("นามสกุล : ณ อุบล",style: TextStyle(fontSize: 22.0),),
            Text("อายุ : 22 ปี",style: TextStyle(fontSize: 22.0),),
            Text("รหัสนักศึกษา : 620710660",style: TextStyle(fontSize: 22.0),),

          ],
        ),
      ),

    );
  }
}
