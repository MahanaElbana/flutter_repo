import 'package:flutter/material.dart';

class CuatomFadeTransation extends StatefulWidget {
  const CuatomFadeTransation({Key? key}) : super(key: key);

  @override
  State<CuatomFadeTransation> createState() => _CuatomFadeTransationState();
}

class _CuatomFadeTransationState extends State<CuatomFadeTransation> {
  bool multiple = true;
  AnimationController ? animationController;
  //Animation<double> opacity =  ,
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //--------------- app bar ------------//
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {
              setState(() {
                multiple = !multiple ;
              });
            },
            icon: Icon(
              multiple ? Icons.dashboard : Icons.view_agenda,
              color: Colors.white,
            ),
          )
        ],
      ),
      //----------------------------------------// 
     // /body: FadeTransition(
       // opacity: _opacity
     // ),
    );
  }
}
