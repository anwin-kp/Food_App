import 'package:flutter/material.dart';
import '../widgets/main_drawer.dart';

class FilterScreen extends StatefulWidget {
  static const routeName = '/filters';

  @override
  State<FilterScreen> createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {
  var _GlutenFree = false;
  var _Vegan = false;
  var _Vegetarian = false;
  var _LactoseFree = false;

  Widget _buildSwitchListTile(
    String titleText,
    String description,
    bool currentValue,
    Function updateValue,
  ) {
    return SwitchListTile(
      title: Text(titleText),
      value: currentValue,
      subtitle: Text(description),
      onChanged: updateValue,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Your Filters'),
        ),
        drawer: MainDrawer(),
        body: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(20),
              child: Text(
                'Adjust Your meal Selection',
                style: Theme.of(context).textTheme.headline5,
              ),
            ),
            Expanded(
              child: ListView(
                children: <Widget>[
                  _buildSwitchListTile(
                    'Gluten_Free',
                    'Only Include Gluten-Free Meals',
                    _GlutenFree,
                    (newValue) {
                      setState(() {
                        _GlutenFree = newValue;
                      });
                    },
                  ),
                  _buildSwitchListTile(
                    'Lactose_Free',
                    'Only Include Lactose-Free Meals',
                    _LactoseFree,
                    (newValue) {
                      setState(() {
                        _LactoseFree = newValue;
                      });
                    },
                  ),
                  _buildSwitchListTile(
                    'Vegetarian',
                    'Only Include Vegetarian Meals',
                    _Vegetarian,
                    (newValue) {
                      setState(() {
                        _Vegetarian = newValue;
                      });
                    },
                  ),
                  _buildSwitchListTile(
                    'Vegan',
                    'Only Include Vegan Meals',
                    _Vegan,
                    (newValue) {
                      setState(() {
                        _Vegan = newValue;
                      });
                    },
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
