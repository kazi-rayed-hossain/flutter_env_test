import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';


class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
     const imageUrl = "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRnAhsHgOldozR5d_-2lJbnR9qv0g5X2g8HAQ&usqp=CAU";
    return Drawer(
      child: Container(
        color: Colors.deepPurple,
        child: ListView(
          padding: EdgeInsets.zero,
          children: const [
            DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                margin: EdgeInsets.zero,
                accountName: Text("Rayed"),
                accountEmail: Text("flutter@gmail.com"),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(imageUrl),
                ),
              ),
            ),

            ListTile(
              leading: Icon(
                CupertinoIcons.home, 
                color: Colors.white,
                ),
              title: Text(
                  "Home",
                  textScaleFactor: 1.2,
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.profile_circled, 
                color: Colors.white,
                ),
              title: Text(
                  "Profile",
                  textScaleFactor: 1.2,
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.mail, 
                color: Colors.white,
                ),
              title: Text(
                  "Email Me",
                  textScaleFactor: 1.2,
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
            )
          ],
        ),
      ),
    );
  }
}
