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
        color: Colors.green,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Dark mode",
                  style: TextStyle(fontSize: 20),
                ),
                Switch(
                    value: isdarktheme,
                    onChanged: (value) {
                      setState(() {
                        isdarktheme = value;
                      });
                    })
              ],
            )
          ],
        ),
      ),
    );
  }
}
