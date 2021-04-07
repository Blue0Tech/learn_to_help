import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'AboutScreen.dart';
import 'AccountScreen.dart';
import 'AllCategoriesScreen.dart';
import 'ContentScroll.dart';
import 'FadeAnimation.dart';
import 'HomePage.dart';
import 'ImportantCoursesScreen.dart';
import 'ItemCover.dart';
import 'ItemTitle.dart';
import 'PopularCoursesScreen.dart';
import 'SettingsScreen.dart';
import 'TutorialScreen.dart';
import 'OptionsList.dart';
import 'itemModel.dart';

class LandingPageContent extends StatelessWidget {
  PageController pageController;
  LandingPageContent(pageController) {
    this.pageController = pageController;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      drawer: Drawer(
        child: Container(
          color: Colors.white,
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              Container(
                color: Colors.red[300],
                child: DrawerHeader(
                  child: Container(
                    child: Image(
                      image: AssetImage('assets/Learn2Help_logo.png'),
                    ),
                  )
                ),
              ),
              SizedBox(height: 30.0),
              Center(child: Text(FirebaseAuth.instance.currentUser.displayName,style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black,
                fontSize: 20.0
              ),)),
              SizedBox(height: 30.0),
              ListTile(
                title: Text('Options'),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.push(context,MaterialPageRoute(builder: (context) => SettingsScreen()));
                },
              ),
              ListTile(
                title: Text('All categories'),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.push(context,MaterialPageRoute(builder: (context) => AllCategoriesScreen()));
                },
              ),
              ListTile(
                title: Text('Your account'),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.push(context,MaterialPageRoute(builder: (context) => AccountScreen()));
                }
              ),
              ListTile(
                title: Text('About us'),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.push(context,MaterialPageRoute(builder: (context) => AboutScreen()));
                },
              ),
              ListTile(
                title: Text('Sign out'),
                onTap: () {
                  FirebaseAuth.instance.signOut();
                  Navigator.push(context,MaterialPageRoute(builder: (context) => HomePage()));
                },
              )
            ],
          ),
        ),
      ),
      appBar: AppBar(
          backgroundColor: Colors.red[300],
          elevation: 0.0,
          title: Image(
            width: 150.0,
            image: AssetImage('assets/Learn2Help_logosmall.png'),
          ),
          // actions: [
          //   IconButton(
          //     icon: Icon(Icons.search),
          //     onPressed: () => print('Search'),
          //     padding: EdgeInsets.only(right: 20.0),
          //     iconSize: 25.0,
          //     color: Colors.white,
          //   )
          // ],
          centerTitle: true
      ),
      body: ListView(
        children: <Widget>[
          FadeAnimation(1,Container(
            height: 280.0,
            width: double.infinity,
            child: PageView.builder(
              controller: pageController,
              itemCount: tutorials.length,
              itemBuilder: (BuildContext context, int index) {
                return tutorialSelector(context,index);
              },
            ),
          )),
          OptionsList(),
          SizedBox(
            height: 20.0,
          ),
          ContentScroll(images: popular, title: 'Popular courses', imageHeight: 250.0, imageWidth: 150.0,labels: popularLabels,newScreen: PopularCoursesScreen()),
          ContentScroll(images: important, title: 'Important courses', imageHeight: 250.0, imageWidth: 150.0,labels: importantLabels,newScreen: ImportantCoursesScreen())
        ],
      ),
    );
  }
  tutorialSelector(var context,int index) {
    return AnimatedBuilder(
        animation: pageController,
        builder: (BuildContext context, Widget widget) {
          double value = 1;
          if(pageController.position.haveDimensions) {
            value = pageController.page - index;
            value = (1-(value.abs()*0.3)+0.06).clamp(0.0, 1.0);
          }
          return Center(
            child: SizedBox(
              height: Curves.easeInOut.transform(value)*270.0,
              width: Curves.easeInOut.transform(value)*400.0,
              child: widget,
            ),
          );
        },
        child: GestureDetector(
          onTap: () => Navigator.push(context,MaterialPageRoute(builder: (context) => TutorialScreen(tutorial: tutorials[index]))),
          child: Stack(children: <Widget>[
            ItemCover(index),
            ItemTitle(index)
          ]),
        )
    );
  }
}