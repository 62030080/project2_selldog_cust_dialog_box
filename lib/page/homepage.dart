import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_2_coinapi/page/secondpage.dart';

import '../material/variable.dart';

class Home_Page extends StatefulWidget {
  const Home_Page({Key? key}) : super(key: key);

  @override
  State<Home_Page> createState() => _Home_PageState();
}

class _Home_PageState extends State<Home_Page> {
  static const String head ='ท่านต้องการซื้อ';
  List<Variable_Of_Project> variable = [
    Variable_Of_Project(head,"French Bulldog","10000 Baht","assets/frenchbulldog.jpg","สุนัขพันธ์หน้าสั้น จอมตด ขยันกรน"),
    Variable_Of_Project(head,"Pug","5000 Baht","assets/pug.jpg","สุนัขพันธ์หน้าสั้น ตัวอ้วน ขาสั้น"),
    Variable_Of_Project(head,"Pomeranian","15000 Baht","assets/pom.jpg","สุนัขตัวเล็ก ขนปุกปุย จอมเห่า"),
    Variable_Of_Project(head,"Poodle","14000 Baht","assets/poodle.jpg","สุนัขขนนุ่ม คุ้นหน้าคุ้นตา แสนรู้"),
  ];

  @override
  void initState() {
    super.initState();
    print('เรียกใช้ initState');
    // Get_Coin_price();
  }
  // Future<void> Get_Coin_price() async {
  //   print("เรียกใช้ Get_Coin_price");
  //   var url = Uri.parse("https://api.exchangeratesapi.io/lastest?symbols-USD,THB");
  //   var response =await http.get(url);
  //   print(response.body);
  // }

  @override
  Widget build(BuildContext context) {
    print("เรียกใช้ build");
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "ซื้อขายสุนัข",
          style: TextStyle(fontSize: 30.0),
        ),
      ),
      body: ListView.builder(
        itemCount: variable.length,
        itemBuilder: (BuildContext context, int index){
          Variable_Of_Project dog = variable[index];
        return Column(
        children: [
          Card(
            child: Center(
              child: InkWell(
                onTap: () {
                  Navigator.push(context,
                    MaterialPageRoute(
                      builder: (context){
                      return Second_Page_Stl(
                        title: variable[index].title,
                        name: variable[index].name,
                        price: variable[index].price,
                        image: variable[index].image,
                        desc: variable[index].desc,
                      );
                      }),);},
                      child: Column(children: [
                        Container(
                        height: 300,
                        width: 390,
                        child: Image(image: AssetImage(dog.image),),),
                        Container(
                          height: 50,
                          child: Text(dog.name,style: TextStyle(fontSize: 30.0),),
                        )
                        ],
                      ),
                      )
                    ),
                  ),
                ],
              );
        }
      ),
    );
  }
}