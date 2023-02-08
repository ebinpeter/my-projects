import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';

class citys extends StatelessWidget {
  var population = [
    'Population:11 ill',
    "Population:20 mill",
    "Population:8 mill",
    "Population:2.4mill",
    "Population:18.1mill"
  ];
  var coundry = ["America", "India", "Briton", "China", "italy"];
  var city = ["Newyork", "Delhi", "London", "Tokyo", "Rome"];
  var Images = [
    "https://lp-cms-production.imgix.net/2020-11/shutterstockRF_1564421236.jpg?auto=format&q=75&w=3840",
    "https://scontent.ccdn.cloud/image/vivitravels-it/38526e32-e2f4-4aab-b1e0-f467d4f9379b/maxw-960.jpg",
    "https://media.tacdn.com/media/attractions-splice-spp-674x446/09/93/6a/89.jpg",
    "https://content.r9cdn.net/rimg/dimg/ca/7e/9ae1c4b2-city-21033-16c1b1c620d.jpg?crop=true&width=1020&height=498",
    "https://www.thediaryofanomad.com/wp-content/w3-webp/uploads/2020/11/rome-for-3-days-in-rome-itinerary-vatican-dome-view.jpgw3.webp",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Famous Citys"),
        ),
        body: ListView.builder(
            itemCount: city.length,
            itemBuilder: (BuildContext, index) {
              return Card(
                child: ListTile(
                  leading: Container(
                    width: 100,
                    height: 100,
                    child: Image(fit: BoxFit.fill,
                      width: 100,
                      height: 100,
                      image: NetworkImage(Images[index]),
                    ),
                  ),
                  title: Text(
                    "${city[index]}",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.black),
                  ),
                  subtitle: Text(
                    "${coundry[index]}",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.black38),
                  ),
                  trailing: Padding(
                    padding: const EdgeInsets.only(),
                    child: Text(
                      "${population[index]}",
                    //locale: (),
                      style: TextStyle(fontSize: 15),
                    ),
                  ),
                ),
              );
            }));
  }
}
