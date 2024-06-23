import 'package:flutter/material.dart';
import 'package:onboardinscreen/Intro_Screens/introPage1.dart';
import 'package:onboardinscreen/Intro_Screens/introPage2.dart';
import 'package:onboardinscreen/Intro_Screens/introPage3.dart';
import 'package:onboardinscreen/homePage.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class onBoardingScreens extends StatefulWidget {
  const onBoardingScreens({super.key});

  @override
  State<onBoardingScreens> createState() => _onBoardingScreensState();
}

class _onBoardingScreensState extends State<onBoardingScreens> {
  PageController _controller = PageController();

  //Keep the track we are on last page or not

  bool lastpage = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        PageView(
          controller: _controller,
          onPageChanged: (index){
            setState(() {
              lastpage = (index == 2);
            });
          },
          children: const [
            introPage1(),
            introPage2(),
            introPage3(),
          ],
        ),
        Container(
            alignment: const Alignment(0, 0.75),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [

                GestureDetector(
                  onTap: (){
                    _controller.jumpToPage(2);                  },
                  child:const Text("SKIP"),
                ),


                SmoothPageIndicator(controller: _controller, count: 3),


                lastpage ?
                GestureDetector(
                    onTap: (){

                      Navigator.push(context, MaterialPageRoute(builder: (context){
                        return Homepage();
                      }),);
                },
                  child:const Text("DONE"))

               : GestureDetector(
                    onTap: (){
                      _controller.nextPage(duration: Duration(milliseconds: 500), curve: Curves.easeIn);
                    },
                    child:const Text("NEXT"))
              ],
            )),
      ],
    ));
  }
}
