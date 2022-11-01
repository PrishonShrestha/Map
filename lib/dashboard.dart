import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:fluttertoast/fluttertoast.dart';
class Dashboard extends StatefulWidget{
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return DashboardState();
  }

}
class DashboardState extends State<Dashboard>{
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(

      body: Container(
        height: size.height,
        width: size.width,
        color: Colors.white,
        // child:  SizedBox(
        //   height: size.height/1.5,
        //   child: GridView.builder(
        //     itemCount: 6,
        //     itemBuilder: (context, index) => const DemoItem(),
        //     gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        //       crossAxisCount: 2,
        //       childAspectRatio: 2,
        //       mainAxisSpacing: 20,
        //     ),
        //
        //   ),
        // ),
        child: Stack(
          children: [
            Positioned(
              top: 50,
              left: 0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  GestureDetector(onTap:() => Navigator.pop(context) ,
                      child: const Icon(Icons.backspace_outlined,)),
                ],
              ),
            ),
            /*Positioned(
              bottom: size.height/2,
              child: SizedBox(
               height: 60,
               child: ListView.builder(
                 primary: true,
                 shrinkWrap: true,
                 scrollDirection: Axis.horizontal,
                 itemCount: 5,
                 itemBuilder: (context,position){
                 return const DemoItem();
               },),
           ),
            ),*/
            Positioned(
              bottom: 100,
              child: SizedBox(
                height: size.height/1.3,
                width: size.width,
                child: GridView.builder(
                  itemCount: 6,
                  itemBuilder: (context, index) => const DemoItem(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 16/20,
                    // mainAxisSpacing: 20,
                  ),

                ),
              ),
            ),

            /*Positioned(
              bottom: 0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const [
                       Icon(Icons.subway_sharp),
                      Text("wer")
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                    children: const [
                      Icon(Icons.subway_sharp),
                      Text("wer")
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const [
                      Icon(Icons.subway_sharp),
                      Text("wer")
                    ],
                  )
                ],
              ),
            )*/
          ],
        ),
      ),
      // bottomNavigationBar: BottomNavyBar(
      //     selectedIndex: _selectedIndex,
      //     showElevation: true, // use this to remove appBar's elevation
      //     onItemSelected: (index) => setState(() {
      //       _selectedIndex = index;
      //       Fluttertoast.showToast(
      //           msg: "This is Center Short Toast",
      //           toastLength: Toast.LENGTH_SHORT,
      //           gravity: ToastGravity.CENTER,
      //           timeInSecForIosWeb: 1,
      //           backgroundColor: Colors.red,
      //           textColor: Colors.white,
      //           fontSize: 16.0
      //       );
      //     }),
      //     items: [
      //       BottomNavyBarItem(
      //         icon: const Icon(Icons.apps),
      //         title: const Text('Home'),
      //         activeColor: Colors.red,
      //       ),
      //       BottomNavyBarItem(
      //           icon: const Icon(Icons.people),
      //           title: const Text('Users'),
      //           activeColor: Colors.purpleAccent
      //       ),
      //       BottomNavyBarItem(
      //           icon: const Icon(Icons.message),
      //           title: const Text('Messages'),
      //           activeColor: Colors.pink
      //       ),
      //       BottomNavyBarItem(
      //           icon: const Icon(Icons.settings),
      //           title: const Text('Settings'),
      //           activeColor: Colors.blue
      //       ),
      //     ],
      //   )
    );
  }

}

class DemoItem extends StatelessWidget{
  const DemoItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width/2.5,
      height: 60,
      child: Card(
        elevation: 2,
        child: Padding(
          padding: const EdgeInsets.all(0),
          child: Column(
            children: [


                  Container(
                  color: Colors.grey,
                    height: 200,width: 300,
                    child: Image.network("https://img-19.commentcamarche.net/WNCe54PoGxObY8PCXUxMGQ0Gwss=/480x270/smart/d8c10e7fd21a485c909a5b4c5d99e611/ccmcms-commentcamarche/20456790.jpg", height: 200, width: 300,),
                  ),
                // const SizedBox(width: 8,),
                const Text("Hello"),
                const Text("Bye"),




            ],
          ),
        ),
      )
    );
  }

}