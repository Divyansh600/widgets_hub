import 'package:flutter/material.dart';

class Setting extends StatefulWidget {
  const Setting({Key? key}) : super(key: key);

  @override
  State<Setting> createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  bool isdarktheme = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.transparent,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //   children: [
            //     Text(
            //       "Dark mode",
            //       style: TextStyle(fontSize: 20),
            //     ),
            //     Switch(
            //         value: isdarktheme,
            //         onChanged: (value) {
            //           setState(() {
            //             isdarktheme = value;
            //           });
            //         })
            //   ],
            // ),
            SizedBox(height: 40,),
            Row(
              children: [
                CircleAvatar(backgroundColor: Colors.grey,
                  child: Icon(Icons.wifi_sharp,color: Colors.white,),
                ),SizedBox(width: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("WiFi",style:TextStyle(fontSize: 20),)
                  ],
                ),

              ],
            )
          ],
        ),
      ),
    );
  }
}
