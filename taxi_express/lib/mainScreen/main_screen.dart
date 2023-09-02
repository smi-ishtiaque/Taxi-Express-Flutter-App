import 'package:flutter/material.dart';
import 'package:taxi_express/tabPages/earnings_tab.dart';
import 'package:taxi_express/tabPages/home_tab.dart';
import 'package:taxi_express/tabPages/profile_tab.dart';
import 'package:taxi_express/tabPages/ratings_tab.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}



class _MainScreenState extends State<MainScreen> with SingleTickerProviderStateMixin{

TabController? tabController;
int selectedIndex = 0;

onItemClicked(int index)
{
setState(() {
  int selectedIndex = index;
  tabController!.index = selectedIndex;
});
}

@override
  void initState() {
    // TODO: implement initState
    super.initState();

    tabController = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TabBarView(
        physics: NeverScrollableScrollPhysics(),
        controller: tabController,
        children: const [
          HomeTabPage(),
          EarningsTabPage(),
          RatingsTabPage(),
          ProfileTabPage(),
        ],

      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),


          BottomNavigationBarItem(
            icon: Icon(Icons.credit_card),
            label: "Earnings",
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.star),
            label: "Ratings",
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Profile",
          ),
        ],

        unselectedItemColor: Colors.white54,
        selectedItemColor: Colors.white,
        backgroundColor: Colors.black,
        type: BottomNavigationBarType.fixed,
        selectedLabelStyle: TextStyle(fontSize: 14),
        showUnselectedLabels: true,
        currentIndex: selectedIndex,
        onTap: onItemClicked,
      ),
    );
  }
}
