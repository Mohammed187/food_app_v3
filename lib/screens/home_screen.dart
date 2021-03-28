import 'package:flutter/material.dart';
import 'package:food_app_v3/widgets/category_widget.dart';
import 'package:food_app_v3/widgets/restaurant_widget.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 5.0),
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      radius: 30.0,
                      backgroundImage:
                          AssetImage('assets/images/food_delivery.jpg'),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Now',
                            style: TextStyle(
                              fontSize: 15.0,
                              color: Colors.grey,
                            ),
                          ),
                          Row(
                            children: [
                              Text(
                                'Selected Location',
                                style: TextStyle(
                                  fontSize: 18.0,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              Icon(
                                Icons.keyboard_arrow_down,
                                size: 30.0,
                                color: Theme.of(context).primaryColor,
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                Container(
                  height: 45,
                  width: 45,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(30.0)),
                    color: Colors.grey[200],
                  ),
                  child: Icon(
                    Icons.person,
                    color: Theme.of(context).primaryColor,
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 5.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 60.0,
                    width: MediaQuery.of(context).size.width - 60,
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.all(Radius.circular(20.0)),
                    ),
                    child: Row(
                      children: [
                        SizedBox(width: 10.0),
                        Icon(
                          Icons.search,
                          size: 30.0,
                          color: Colors.grey,
                        ),
                        SizedBox(width: 5.0),
                        Text(
                          'Dishes, Restaurants, Cuisine',
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 15.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Icon(
                    Icons.menu_open,
                    size: 40.0,
                    color: Theme.of(context).primaryColor,
                  )
                ],
              ),
            ),
            CategoryWidget(),
            Padding(
              padding: EdgeInsets.only(top: 8.0, bottom: 5.0, left: 5.0),
              child: Text(
                'Order again',
                style: TextStyle(
                  fontSize: 22.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            RestaurantWidget(),
            Padding(
              padding: EdgeInsets.only(top: 8.0, bottom: 5.0, left: 5.0),
              child: Text(
                'Top Picks for you',
                style: TextStyle(
                  fontSize: 22.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            RestaurantWidget(),
          ],
        ),
      ),
    );
  }
}
