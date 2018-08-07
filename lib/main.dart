import 'package:flutter/material.dart';
import 'package:paises/country.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Países',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
          appBar: AppBar(
              title: Text('Países')
          ),
          body: new ListView(
              children: countries.map(_buildItem).toList(),
          )
      )
    );
  }
}

Widget _buildItem(Country country) {
  return new ListTile(
      title: new Text(country.name),
      subtitle: new Text('Capital: ${country.capital}'),
      leading: new Icon(Icons.map),
      onTap: (){
        print(country.name);
      },
  );
}