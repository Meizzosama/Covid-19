import 'package:covid19/views/world_states.dart';
import 'package:flutter/material.dart';

class DetailsScreen extends StatefulWidget {
  String image;
  String name;
  int totalCases,
      totalDeaths,
      totalRecovered,
      active,
      critical,
      todayRecovered,
      test;

  DetailsScreen(
      {required this.image,
      required this.name,
      required this.totalCases,
      required this.totalDeaths,
      required this.todayRecovered,
      required this.active,
      required this.critical,
      required this.totalRecovered,
      required this.test});

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white70,
        appBar: AppBar(title: Text(widget.name)),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 30,
                ),
                Stack(
                  alignment: Alignment.topCenter,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                          top: MediaQuery.of(context).size.height * 0.06),
                      child: Card(
                        child: Column(
                          children: [
                            SizedBox(
                              height: MediaQuery.of(context).size.height * 0.05,
                            ),
                            ReusableRow(
                                title: 'Total Cases',
                                value: widget.totalCases.toString()),
                            ReusableRow(
                                title: 'Total Deaths',
                                value: widget.totalDeaths.toString()),
                            ReusableRow(
                                title: 'Today Recovered',
                                value: widget.todayRecovered.toString()),
                            ReusableRow(
                                title: 'Active',
                                value: widget.active.toString()),
                            ReusableRow(
                                title: 'Critical',
                                value: widget.critical.toString()),
                            ReusableRow(
                                title: 'Total Recovered',
                                value: widget.totalRecovered.toString()),
                            ReusableRow(
                                title: 'Tests', value: widget.test.toString()),
                          ],
                        ),
                      ),
                    ),
                    CircleAvatar(
                      radius: 50,
                      backgroundImage: NetworkImage(widget.image),
                    )
                  ],
                )
              ],
            ),
          ),
        ));
  }
}
