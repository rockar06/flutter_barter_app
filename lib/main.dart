import 'package:flutter/material.dart';
import 'package:flutterhackatonapp/components/custom_bottom_app_bar.dart';
import 'package:flutterhackatonapp/components/custom_search_bar.dart';
import 'package:flutterhackatonapp/components/service_card.dart';

class Service {
  String name;
  String avatarUrl;
  Service(this.name, this.avatarUrl);
}

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Hackaton',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final services = List<Service>.generate(
    12,
    (i) => Service(
      'Service $i',
      'A description of what this service is. $i',
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Hero(
          tag: "SearchBar",
          child: Column(children: [
            CustomSearchBar(onlyShowSearch: true),
            Expanded(
              child: ListView.builder(
                itemCount: services.length,
                itemBuilder: (context, index) {
                  return ServiceCard();
                },
              ),
            ),
          ]),
        ),
      ),
      bottomNavigationBar: CustomBottomAppBar(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Go to home
        },
        child: Icon(Icons.home),
      ),
    );
  }
}
