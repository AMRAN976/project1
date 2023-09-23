
import 'package:flutter/material.dart';

void main() => runApp(MyApp());    
class MyApp extends StatelessWidget{
@override
  Widget build(BuildContext context) {
  return MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "Amran",
    home: Amran(),
  );
  }
}



class Amran extends StatefulWidget {
  State createState() => _AmranState();
}
class _AmranState extends State {
String number="0";
TextEditingController TEX = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: Center(child: Text("كــــــــــــــــــــــــــــوز"),),
      ),
      body: Container(
        child: Column(
          children: [
            Container(
              width: 450,
              padding: EdgeInsets.only(top: 30),
              child: TextField(
                    decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(2),
                    borderSide: BorderSide(width: 2,color: Color.fromARGB(255, 222, 247, 252),)
                  ),       
                  fillColor: Color.fromARGB(255, 255, 255, 255),
                  filled: true,
                 
                    ),
                    textAlign: TextAlign.right,
                    controller: TEX,
                    cursorColor: Color.fromARGB(255, 222, 247, 252),
                  ),
            ), SizedBox(height: 20,),
            Container(
              child: Center(
               child: Text(" حرفاً :  $number",textAlign: TextAlign.center,style: TextStyle(fontSize: 20),),
              ),
            ), SizedBox(height: 20,),
            Container(
              width: 450,
              child: MaterialButton( 
                    height: 60,
                    color: Color.fromARGB(255, 222, 247, 252),
                onPressed:() {
                  setState(() {
                    number=((TEX.text).length).toString();
                  });
                },child: Text("عدد الأحرف"),),
            ),SizedBox(height: 20,),
            Container(
              width: 450,
              child: MaterialButton( 
                    height: 60,
                    color: Color.fromARGB(255, 222, 247, 252),
                onPressed: () {
                  setState(() {
                    TEX.text="";
                    number="0";
                  });
                },child: Text("تنظيف"),),
            ), 
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: 40,
        child: Center(child: Text("الطالب : عمران محمود علي أحمد",style: TextStyle(color: Colors.white,fontSize: 17),)),
        color:Colors.blueAccent,
        ),
    );
  }
}

