import 'package:flutter/material.dart';
import 'places_search_map.dart';
import 'search_filter.dart';

void main() => runApp(GoogleMapsSampleApp());

class GoogleMapsSampleApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _GoogleMapSampleApp();
  }
}

class _GoogleMapSampleApp extends State<GoogleMapsSampleApp>{
  static String keyword = "Restaurant";

  void updateKeyWord(String newKeyword) {
    print(newKeyword);
    setState(() {
      keyword = newKeyword;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Google Maps Demo',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Restaurant Finder'),
          centerTitle: true,
          backgroundColor: Colors.green[700],
          actions: <Widget>[
            Builder(
              builder: (BuildContext context) {
                return IconButton(
                    icon: Icon(Icons.filter_list),
                    tooltip: 'Filter Search',
                    onPressed: () {
                      print("Open Modal");
//                      Scaffold.of(context).openEndDrawer();
                    });
              },
            ),
          ],
        ),
        body: PlacesSearchMapSample(keyword),
      ),
    );
  }
}
