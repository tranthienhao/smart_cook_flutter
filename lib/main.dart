import 'package:flutter/material.dart';
import 'home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.pink,
        ),
        home: DefaultTabController(
          length: 3,
          child: Scaffold(
            appBar: AppBar(
              title: Image.asset('assets/logo.png'),
            ),
            body: TabBarView(
              children: [
                Home(
                  title: "Home",
                ),
                Icon(Icons.directions_transit),
                Icon(Icons.directions_bike),
              ],
            ),
            bottomNavigationBar: Container(
                color: Colors.white70,
                child: TabBar(
                  tabs: [
                    Tab(
                      icon: Icon(
                        Icons.directions_car,
                        color: Colors.black,
                      ),
                      text: "Món ăn",
                    ),
                    Tab(
                      icon: Icon(
                        Icons.directions_transit,
                        color: Colors.black,
                      ),
                      text: "Thực đơn",
                    ),
                    Tab(
                      icon: Icon(
                        Icons.directions_bike,
                        color: Colors.black,
                      ),
                      text: "Danh mục",
                    ),
                  ],
                )),
          ),
        ));
  }
}
