import 'TwoLevel.dart';
import 'package:flutter/material.dart';
import 'ContactUs.dart';


class MainDrawer extends StatelessWidget {
  const MainDrawer({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
        child: Padding(
          padding: EdgeInsets.only(top: 50.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 50.0,
                backgroundImage: NetworkImage(
                  "https://www.google.com/search?q=flag+of+pakistan&rlz=1C1CHBD_enPK883PK883&sxsrf=ALeKk01rsS3dI_mlrQ7FrRz_eyQIOxpXYQ:1607171623736&source=lnms&tbm=isch&sa=X&ved=2ahUKEwjZ5Obt7LbtAhW7QEEAHcpXCbMQ_AUoAXoECA4QAw&biw=1366&bih=568#imgrc=ckHvAwDirNYwdM",
                ),
              ),
              SizedBox(
                height: 5.0,
              ),
              Text(
                "Allah Ditta",
                style: TextStyle(
                  fontSize: 22.0,
                  fontWeight: FontWeight.w800,
                ),
              ),
              SizedBox(
                height: 5.0,
              ),
            ],
          ),
        ),
      ),
      SizedBox(
        height: 20.0,
      ),
      //Now let's Add the button for the Menu
      //and let's copy that and modify it
      ListTile(
        onTap: () {},
        leading: Icon(
          Icons.person,
          color: Colors.black,
        ),
        title: Text("Profile"),
      ),

      ListTile(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => MyContact()),
          );
        },
        leading: Icon(
          Icons.inbox,
          color: Colors.black,
        ),
        title: Text("Contact Us"),
      ),
    ]);
  }
}