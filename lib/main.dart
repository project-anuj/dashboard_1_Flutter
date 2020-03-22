import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(primaryColor: new Color(0xff622F74)),
    home: Dashboard(),
  ));
}

class Dashboard extends StatefulWidget {
  DashboardState createState() => DashboardState();
}

class DashboardState extends State<Dashboard> {
  Material myItems(IconData iconData, String heading, int color) {
    return Material(
      color: Colors.white,
      elevation: 14.0,
      shadowColor: Color(0xff802196F3),
      borderRadius: BorderRadius.circular(24.0),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        heading,
                        style:
                            TextStyle(color: new Color(color), fontSize: 20.0),
                      ),
                    ),
                  ),
                  Material(
                    color: new Color(color),
                    borderRadius: BorderRadius.circular(24.0),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Icon(
                        iconData,
                        color: Colors.white,
                        size: 30.0,
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Dashboard'),
      ),
      body: StaggeredGridView.count(
        crossAxisCount: 2,
        crossAxisSpacing: 12.0,
        mainAxisSpacing: 12.0,
        padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
        children: <Widget>[
          myItems(Icons.graphic_eq, "TotalViews", 0xffed622b),
          myItems(Icons.bookmark, "Bookmark", 0xff26cb3c),
          myItems(Icons.notifications, "Notifications", 0xffff3266),
          myItems(Icons.attach_money, "Balance", 0xff3399fe),
          myItems(Icons.settings, "Settings", 0xfff4c83f),
          myItems(Icons.group_work, "Group Work", 0xff622f74),
          myItems(Icons.favorite, "Followers", 0xffad61f1),
          myItems(Icons.message, "Message", 0xff7297ff),
          myItems(Icons.widgets, "Widgets", 0xff26992b),
        ],
        staggeredTiles: [
          StaggeredTile.extent(2, 130.0),
          StaggeredTile.extent(1, 250.0),
          StaggeredTile.extent(1, 130.0),
          StaggeredTile.extent(1, 130.0),
          StaggeredTile.extent(1, 150.0),
          StaggeredTile.extent(1, 130.0),
          StaggeredTile.extent(2, 240.0),
          StaggeredTile.extent(2, 120.0),
          StaggeredTile.extent(2, 170.0)
        ],
      ),
    );
  }
}
