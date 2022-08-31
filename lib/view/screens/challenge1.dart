
import 'package:flutter/material.dart';

class MyHeader {
  final String title;
  final bool visible;
  const MyHeader(this.title, this.visible);
}

class Challeneg1 extends StatefulWidget {
  const Challeneg1({Key? key}) : super(key: key);

  @override
  State<Challeneg1> createState() => _Challeneg1State();
}

class _Challeneg1State extends State<Challeneg1> {
  final headerNotifer = ValueNotifier<MyHeader?>(null);

  void _refershNotifer(String title, bool visable, {String? lastone}) {}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Stack(
        children: [
         
          CustomScrollView(
            slivers: [
              SliverAppBar(
                backgroundColor: Colors.transparent,
                automaticallyImplyLeading: false,
                centerTitle: false,
                title: CircleAvatar(
                    backgroundColor: Theme.of(context).colorScheme.primary,
                    child: IconButton(
                      icon: const Icon(Icons.arrow_back),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    )),
              ),

              ////////////////
              SliverPersistentHeader(
                delegate: MyHeaderTitle((visable) {
                  print(visable);
                }, "Last : Transaction"),
              ),
              ///////////////////////////////////////////
              SliverList(
                delegate: SliverChildBuilderDelegate(childCount: 20,
                    (context, index) {
                  return ListTile(
                    title: Text("title $index"),
                  );
                }),
              ),
              ///////////////////////////
              /// ////////////////
              SliverPersistentHeader(
                delegate: MyHeaderTitle((visable) {
                  print(visable);
                }, "Last : Transaction"),
              ),
              ///////////////////////////////////////////
              SliverList(
                delegate: SliverChildBuilderDelegate(childCount: 20,
                    (context, index) {
                  return ListTile(
                    title: Text("title $index"),
                  );
                }),
              ),
              ///////////////////////////
            ],
          )
          //////////////////
          ,
          Positioned(
            top: 5.0,
            right: 10.0,
            child: CircleAvatar(
              maxRadius: 20.0,
              backgroundColor: Theme.of(context).colorScheme.secondary,
              child: Icon(
                Icons.compare_arrows_outlined,
                color: Theme.of(context).colorScheme.onPrimary,
              ),
            ),
          ),
        ],
      )),
    );
  }
}

const double mAXHEADERTITLE = 55.0;

typedef OnHeaderChanged = void Function(bool visable);

class MyHeaderTitle extends SliverPersistentHeaderDelegate {
  final OnHeaderChanged onHeaderChanged;
  final String title;

  const MyHeaderTitle(this.onHeaderChanged, this.title);

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    if (shrinkOffset > 0) {
      onHeaderChanged(true);
    } else {
      onHeaderChanged(false);
    }
    return Padding(
      padding: const EdgeInsets.only(left: 15.0),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Text(
          title,
          style: const TextStyle(fontWeight: FontWeight.w400, fontSize: 20.0),
        ),
      ),
    );
  }

  @override
  double get maxExtent => mAXHEADERTITLE;

  @override
  double get minExtent => mAXHEADERTITLE;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return false;
  }
}
