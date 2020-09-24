import 'package:flutter/material.dart';
import 'package:todo_list/screens/categories_screen.dart';
import 'package:todo_list/screens/home_screen.dart';

class DrawerNavigation extends StatefulWidget {
  @override
  _DrawerNavigationState createState() => _DrawerNavigationState();
}

class _DrawerNavigationState extends State<DrawerNavigation> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Drawer(
          child: ListView(
        children: <Widget>[
          UserAccountsDrawerHeader(
            currentAccountPicture: CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://lh3.googleusercontent.com/a-/AOh14Gi4crmOhylShoiFI53ZKtqiD2xy_FolvnGdqyw-lA=s96-c-rg-br100'),
            ),
            accountName: Text("Renner Poveda"),
            accountEmail: Text("rekefa@gmailcom"),
            decoration: BoxDecoration(color: Colors.blue),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text("Home"),
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => HomeScreen()));
            },
          ),
          ListTile(
            leading: Icon(Icons.view_list),
            title: Text("Categories"),
            onTap: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => CategoriesScreen()));
            },
          )
        ],
      )),
    );
  }
}
