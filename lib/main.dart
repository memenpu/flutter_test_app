import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import 'post_api_service.dart';
import 'home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Provider(
      // The initialized PostApiService is now available down the widget tree
      builder: (_) => PostApiService.create(),
      // Always call dispose on the ChopperClient to release resources
      dispose: (context, PostApiService service) => service.client.dispose(),
      child: MaterialApp(
        title: 'Material App',
        home: HomePage(),
      ),
    );
  }
}