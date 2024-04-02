import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:newbikeapp/screens/sign_in.dart';
import 'package:newbikeapp/screens/discover.dart'; 
import 'package:newbikeapp/screens/map.dart';     
import 'package:newbikeapp/screens/profile.dart';  

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}): super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    DiscoverPage(),
    MapPage(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /*
      appBar: AppBar(
        title: Text(''), // Add your app title here
        actions: [
          IconButton(
            icon: Icon(Icons.logout),
            onPressed: () {
              FirebaseAuth.instance.signOut().then((value){
                print("SignOut");
                           Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => SignIn()));
              });
              
            },
          ),
        ],
      ),
      */
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(  
            icon: Icon(Icons.search),
            label: 'Discover',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.pedal_bike_outlined),
            label: 'Roam',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}























/*
class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}): super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}


class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"), // Add a title for the app bar
        actions: [
          IconButton(
            icon: Icon(Icons.logout), // Use appropriate logout icon
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SignIn()),
              );
            },
          ),
        ],
      ),
      /*
      body: Center(
        child: ElevatedButton(
          child: Text("Logout"),
          onPressed: ()  {
            Navigator.push(context,   
              MaterialPageRoute(builder: (context) => SignIn()));
          },
        ),
      ),
      */
    );
    
  }
}
*/