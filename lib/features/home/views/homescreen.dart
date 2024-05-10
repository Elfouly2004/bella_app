import 'package:bella/core/utils/app%20images.dart';
import 'package:bella/core/utils/appcolors.dart';
import 'package:bella/features/favhome/fav.dart';
import 'package:bella/features/home/views/widgets/homebody.dart';
import 'package:flutter/material.dart';
class HomeScreen extends StatefulWidget {



  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex =  0;


  List<Widget> screens  = [
    HomeBody(),
    FavoriteScreen(),

  ] ;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldColor,
      appBar:AppBar(
        backgroundColor: AppColors.scaffoldColor,
        centerTitle:true ,
        title: Image.asset(AppImages.billa,
          height: MediaQuery.of(context).size.height*0.04,
        ),
      ) ,

      drawer: Drawer(),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (bottomIndex){
          setState(() {
            currentIndex = bottomIndex;
          });
        },
        currentIndex: currentIndex,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,

        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Home"
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: "Favorite"    ,
          ),

        ],

      ),
      body:screens[currentIndex],
      // body: ,
    );
  }
}