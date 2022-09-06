import 'package:flutter/material.dart';
import 'package:widgets_hub/src/ui/Dashboard/dashboard.dart';
import 'package:widgets_hub/src/ui/Home/home.dart';
import 'package:widgets_hub/src/ui/Setting/setting.dart';

class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  List<Widget>list=[Home(),Dashboard(),Setting(),
  ];
  int index=0;
  @override
  Widget build(BuildContext context) {
    Size size=MediaQuery.of(context).size;
    return Scaffold(
      body: list[index],
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_sharp),label: "Home"
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.dashboard_sharp),label: "Dashboard"
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings_sharp),label: "Setting"
          ),
        ],
        currentIndex: index,
        onTap: (value){
          setState(() {
            index=value;
          });
        },
      ),
    );
  }
}
// Scaffold(
//
// appBar: AppBar(
// title: Row(
// mainAxisAlignment: MainAxisAlignment.spaceBetween,
// children: [ Text("Widgets Hub",style:
// TextStyle(color:
// Colors.blueGrey,fontSize: 30),),
// SizedBox(width: 40),
// Row(mainAxisAlignment: MainAxisAlignment.end,
// children: [
// IconButton(onPressed: (){}, icon:
// Icon(Icons.menu_sharp,
// color: Colors.black,size: 35,))
// ],)
// ],
// ),
// backgroundColor:
// Colors.transparent,
// elevation: 0,),
// endDrawer: Drawer(),
// body: Container(
// height: size.height,
// width: size.width,
// decoration:
// BoxDecoration(image:DecorationImage
// (image: AssetImage('lib/images/2.png'),
// fit: BoxFit.cover),
// ),
// child: Column(
// children: [
// Container(
// child:
// Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
// children: [
// IconButton(onPressed: (){}, icon:
// Icon(Icons.home_sharp,color:
// Colors.green,size: 35,))
// ,IconButton(onPressed: (){},
// icon: Icon(Icons.add_box_sharp,color:
// Colors.black,size: 35,)),
// IconButton(onPressed: (){},
// icon: Icon(Icons.group_add_sharp,color:
// Colors.red,size: 35,)),
// IconButton(onPressed: (){}, icon:
// Icon(Icons.message_sharp,
// color:Colors.cyan,size: 35,)),
// IconButton(onPressed: (){}, icon:
// Icon(Icons.notifications_sharp,
// color:Colors.black38,size: 35,)),
// IconButton(onPressed: (){}, icon:
// Icon(Icons.person_pin,
// color: Colors.black45,
// size:35 ,)),
// CircleAvatar(backgroundColor: Colors.transparent,
// child: Icon(Icons.face,
// color: Colors.black,),
// )
// ],
//
// ),
// ),Container(
// )
// ],
// ),
// ),
// );

