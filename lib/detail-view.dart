import 'package:flutter/material.dart';
import 'components/custom_bottom_app_bar.dart';
import 'components/custom_search_bar.dart';
import 'components/service_avatar.dart';

class DetailView extends StatelessWidget {
  const DetailView({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Hero(
          tag: "SearchBar",
          child: Column(children: [
            CustomSearchBar(onlyShowSearch: true),
            Expanded(
              child: Column(
                children: <Widget>[
                  ServiceAvatar(),
                  Row(mainAxisSize: MainAxisSize.max, children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                      child: Chip(
                        backgroundColor: Colors.lime.shade100,
                        label: Text('Repair'),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                      child: Chip(
                        backgroundColor: Colors.lime.shade100,
                        label: Text('Painting'),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                      child: Chip(
                        backgroundColor: Colors.lime.shade100,
                        label: Text('Plumbing'),
                      ),
                    ),
                  ]),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 10.0),
                    child: Text(
                        'From drywall repair to deck construction, our technicians offer a wide range of handyman services. No matter how big or small, all of our work is backed. From drywall repair to deck construction, our technicians offer a wide range of handyman services. No matter how big or small, all of our work is backed.',
                        style: Theme.of(context).textTheme.subtitle1),
                  ),
                  Divider(
                    color: Colors.grey.shade300,
                    thickness: 1,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 20.0),
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Contact us:',
                      style: Theme.of(context).textTheme.headline6,
                    ),
                  ),
                  Row(
                    children: <Widget>[
                      Container(
                          padding: EdgeInsets.only(right: 15.0),
                          child: Image(
                              image: AssetImage('images/whatsapp.png'),
                              width: 40.0)),
                      Container(
                          padding: EdgeInsets.only(right: 15.0),
                          child: Image(
                              image: AssetImage('images/telegram.png'),
                              width: 40.0)),
                      Container(
                          padding: EdgeInsets.only(right: 15.0),
                          child: Image(
                              image: AssetImage('images/rappi.png'),
                              width: 40.0))
                    ],
                  )
                ],
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
