import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:instagram_ui/packages/feed_page.dart';

class HomePage extends StatefulWidget {
  static final String id = "home_page";
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int currentPage = 0;
  var _pages = [
    FeedPage(),
    FeedPage(),
    FeedPage(),
    FeedPage(),
    FeedPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        systemOverlayStyle: SystemUiOverlayStyle.light,
        centerTitle: true,
        title: Text("INSTAGRAM",style: TextStyle(color: Colors.grey),),
        leading: IconButton(onPressed: () {},
        icon: Icon(EvaIcons.cameraOutline,color: Colors.grey,),
        ),
        actions: [
          IconButton(onPressed: () {},
              icon: Icon(EvaIcons.tv,color: Colors.grey,)),
          IconButton(onPressed: () {},
              icon: Icon(EvaIcons.paperPlaneOutline,color: Colors.grey,)),
        ],
      ),
      // #BODY
     body: _pages[currentPage],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        currentIndex: currentPage,
        onTap: (i) {
          setState(() {
            currentPage = i;
          });
        },
        type: BottomNavigationBarType.fixed,
        showUnselectedLabels: false,
        showSelectedLabels: false,
        items: [
          BottomNavigationBarItem(icon: Icon(EvaIcons.home,color: Colors.grey,),
          label: ("Feed")
          ),
          BottomNavigationBarItem(icon: Icon(EvaIcons.search,color: Colors.grey,),
              label: ("Search")
          ),
          BottomNavigationBarItem(icon: Icon(EvaIcons.maximizeOutline,color: Colors.grey,),
              label: ("Upload")
          ),
          BottomNavigationBarItem(icon: Icon(EvaIcons.heart,color: Colors.grey,),
              label: ("Search")
          ),
          BottomNavigationBarItem(icon: Icon(EvaIcons.personOutline,color: Colors.grey,),
              label: ("Search")
          ),

        ],
      ),
    );
  }
}
