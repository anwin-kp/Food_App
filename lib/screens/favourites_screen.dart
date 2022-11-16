import 'package:flutter/material.dart';
import '../widgets/main_drawer.dart';

class FavouritesScreen extends StatelessWidget {
  static const routeName = '/favourites-screen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Favourites'),
      ),
      drawer: MainDrawer(),
      body: Center(
        child: Text(
          'The Favourites',
          style: Theme.of(context).textTheme.displayLarge,
        ),
      ),
    );
  }
}
