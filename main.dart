import 'package:flutter/material.dart';
import './Components/Sliders.dart';
import './Components/colors.dart';
import './Components/RecommendedPageLayer1.dart';
import 'Components/UpperNavSlider.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: "Mini Flutter Project",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: ColorFiles.MainColor,
      ),
      home:HomePage(),
    );
  }
}
class HomePage extends StatelessWidget {
  PageController pageController = PageController(initialPage: 0);

  List<Widget> pages = [
    Container(
      color: Colors.red,
      child: Center(child: Text("Page 1")),
    ),
    Container(
      color: Colors.green,
      child: Center(child: Text("Page 2")),
    ),
    Container(
      color: Colors.blue,
      child: Center(child: Text("Page 3")),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorFiles.MainColor,
      appBar: AppBar(
        toolbarHeight: 0,
      ),
      //body:Uppernavslider(),
      body: SliderPageView(), 
      // body: SliderPageView(),

      // body: Recommendedpage(),
    );
  }
}

