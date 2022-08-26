import 'package:chat_flutter_app/controller/theme_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final ThemeController _themeController = Get.put(ThemeController());
  int _currentIndex = 0 ; 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Chat App")),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _themeController.onChanageThemeMode();
        },
        child: Obx(()=>(
             Icon(
            _themeController.themeMode.value == "light"?  Icons.wb_sunny_outlined:Icons.dark_mode_outlined,
            color: Colors.white,
          )
        ),
      ),),
      bottomNavigationBar:BottomNavigationBar( 
        
          
        currentIndex: _currentIndex,
        onTap: ((value) => setState(() {
          _currentIndex = value ; 
        })),
        
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
         // BottomNavigationBarItem(icon:Icon(Icons.numbers_outlined),label: "" ),
          BottomNavigationBarItem(
              icon: Icon(Icons.add_a_photo_sharp), label: "Add"),
          BottomNavigationBarItem(icon: Icon(Icons.camera), label: "Camera")
        ],
      ),
      // floatingActionButtonAnimator:FloatingActionButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.miniCenterDocked,
     ///
      /*floatingActionButton: Container(
        height: 65.0,
        width: 65.0,
        child: FittedBox(
          child: FloatingActionButton(
            
        onPressed: (){},
        child: Icon(Icons.add, color: Colors.white,),
        // elevation: 5.0,
      ),
        ),
      ),


      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        // elevation: 20.0,

        shape: CircularNotchedRectangle(),
        child: Container( 
          height: 75,
          child: Row( 

        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,

        children: <Widget>[
          IconButton(
            iconSize: 30.0,
            //padding: EdgeInsets.only(left: 28.0),
            icon: Icon(Icons.home),
            onPressed: () {
              setState(() {
                _currentIndex = 0;
              });
            },
          ),

          IconButton(            
            iconSize: 30.0,
            //padding: EdgeInsets.only(right: 28.0),
            icon: Icon(Icons.search),
            onPressed: () {
               setState(() {
                _currentIndex = 1;
                print("${_currentIndex}");

              });
            },
          ),
          IconButton(
            iconSize: 30.0,
           // padding: EdgeInsets.only(left: 28.0),
            icon: Icon(Icons.notifications),
            onPressed: () {
               setState(() {
                _currentIndex = 2;
                print("${_currentIndex}");

              });
            },
          ),
          IconButton(
            iconSize: 30.0,
            //padding: EdgeInsets.only(right: 28.0),
            icon: Icon(Icons.list),
            onPressed: () {
               setState(() {
                _currentIndex = 3;
                print("${_currentIndex}");
              });
            },
          )
        ],
      ),
        )
      )*/
     ///
     ///

    );
  }
}
















/*

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {
  PageController _myPage = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        child: Container(
          height: 75,
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              IconButton(
                iconSize: 30.0,
                padding: EdgeInsets.only(left: 28.0),
                icon: Icon(Icons.home),
                onPressed: () {
                  setState(() {
                    _myPage.jumpToPage(0);
                  });
                },
              ),
              IconButton(
                iconSize: 30.0,
                padding: EdgeInsets.only(right: 28.0),
                icon: Icon(Icons.search),
                onPressed: () {
                  setState(() {
                    _myPage.jumpToPage(1);
                  });
                },
              ),
              IconButton(
                iconSize: 30.0,
                padding: EdgeInsets.only(left: 28.0),
                icon: Icon(Icons.notifications),
                onPressed: () {
                  setState(() {
                    _myPage.jumpToPage(2);
                  });
                },
              ),
              IconButton(
                iconSize: 30.0,
                padding: EdgeInsets.only(right: 28.0),
                icon: Icon(Icons.list),
                onPressed: () {
                  setState(() {
                    _myPage.jumpToPage(3);
                  });
                },
              )
            ],
          ),
        ),
      ),
      body: PageView(
        controller: _myPage,
        onPageChanged: (int) {
          print('Page Changes to index $int');
        },
        children: <Widget>[
          Center(
            child: Container(
              child: Text('Empty Body 0'),
            ),
          ),
          Center(
            child: Container(
              child: Text('Empty Body 1'),
            ),
          ),
          Center(
            child: Container(
              child: Text('Empty Body 2'),
            ),
          ),
          Center(
            child: Container(
              child: Text('Empty Body 3'),
            ),
          )
        ],
        physics: NeverScrollableScrollPhysics(), // Comment this if you need to use Swipe.
      ),
      floatingActionButton: Container(
        height: 65.0,
        width: 65.0,
        child: FittedBox(
          child: FloatingActionButton(
            onPressed: () {},
            child: Icon(
              Icons.add,
              color: Colors.white,
            ),
            // elevation: 5.0,
          ),
        ),
      ),
    );
  }
}*/