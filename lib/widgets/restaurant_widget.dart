import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_app_v3/models/restaurant_model.dart';
import 'package:food_app_v3/screens/restaurant_screen.dart';

class RestaurantWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 270.0,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: restaurants.length,
        itemBuilder: (context, index) {
          Restaurant restaurant = restaurants[index];
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => RestaurantScreen(restaurant),
                ),
              );
            },
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 5.0, vertical: 5.0),
              width: 205.0,
              child: Stack(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10.0),
                        ),
                        child: Image(
                          image: AssetImage(restaurant.imageUrl),
                          width: MediaQuery.of(context).size.width,
                          height: 150.0,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 14.0, bottom: 5.0),
                        child: Text(
                          restaurant.name,
                          style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      Text(
                        '${restaurant.rating}\/5 ⭐.',
                        style: TextStyle(
                          color: Theme.of(context).primaryColor,
                          fontSize: 10.0,
                        ),
                      ),
                      Text(
                        '${restaurant.cuisine[0]} . ${restaurant.cuisine[1]} . ${restaurant.cuisine[2]}',
                        style: TextStyle(
                          fontSize: 10.0,
                        ),
                      ),
                      Text(
                        restaurant.distance,
                        style: TextStyle(
                          fontSize: 10.0,
                          color: Colors.grey,
                        ),
                      ),
                      Text(
                        '${restaurant.offer} on all items.',
                        style: TextStyle(
                          fontSize: 10.0,
                          color: Colors.red[500],
                        ),
                      ),
                    ],
                  ),
                  Container(
                    child: Stack(
                      children: [
                        Positioned(
                          right: 10.0,
                          top: 135.0,
                          child: Container(
                            alignment: Alignment.center,
                            height: 35.0,
                            width: 70.0,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20.0),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black26,
                                  offset: Offset(0.0, 2.0),
                                  blurRadius: 6.0,
                                ),
                              ],
                            ),
                            child: Column(
                              children: [
                                Text(
                                  restaurant.eta,
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                Text(
                                  'mins',
                                  style: TextStyle(
                                    fontSize: 10.0,
                                    color: Colors.grey,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
