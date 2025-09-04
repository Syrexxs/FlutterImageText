import 'package:flutter/material.dart';

/*the purpose of this syntax is to import the flutter material design libabry
widgets and tools for building a material design base on UI(google design system)

import - is a dark keyword to include external libabries

package:flutter/material.dart - refers to the material design package include
w/ flutter, containing widgets.

this is essential for building Flutter Apps w/ a standard UI


*/

void main(){
  runApp(const MyApp());
}

/*
The entry point of the Flutter App

void main() - is a main function and at the same type it is a starting point of any Dart program

runApp() - is a flutter function that initialize the app and attache the root widget (MyApp) to the screen

const MyApp () - it creates an instance of the MyApp class, marked as a constant


 */

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override //indicate this method override the "build" method from StateLessWidget
  Widget build(BuildContext context) {
    return MaterialApp(

      title: 'Hello Flutter',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );


  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text('Favourite Movies')
      ),
      body: Center(
        child : Column(
          mainAxisAlignment : MainAxisAlignment.center,
          children: [
            Image.network(
              'https://tse2.mm.bing.net/th/id/OIP.qbWmg_R66ihi98tGsZOnJwHaKe?cb=thfc1&rs=1&pid=ImgDetMain&o=7&rm=3',
              width: 600,
              height: 600,
            ),
            const SizedBox(height: 20),
            const Text(
                'Hacksaw Ridge',
                style: TextStyle(fontSize: 32,)

            ),
            const Text(
              'Hacksaw Ridge is a 2016 biographical war film directed by Mel Gibson, telling the true story of Desmond Doss, a conscientious objector who served as a medic during World War II and became the first to receive the Medal of Honor without firing a shot.',
              style: TextStyle(fontSize: 16,)
            ),
          ],
        ),
      ),
    );
  }
}
/*
  Define as s root widget or main container

  class MyApp - declares a custom class that extends StatelessWidget

  StatelessWidget - it is a flutter base class for widget that don't change state (static UI)

  const MyApp({super.key}) - it is a constructor. w/ super.key passing an optional "key"

  parameter to the parent StatelessWidget

  Keys are used to identify the widgets uniquely.

  const - is also ensure that the constructor creates a immutable instance.

  -------------------------

  Widget Build(BuildContext context) - this syntax provide contextual information about the widget positions
  in the widget tree

  MaterialApp - it is a flutter widget that sets up the apps core structure, include
  navigation, theme, and even home screen.

  Title: 'Hello Flutter', - sets the app title, visible on the device task switcher

  theme: ThemeData(primarySwatch: Colors.blue), - defines the apps visual theme
  w/ color Blue as the primary color.

  home: const MyHomePage(), - this syntax sets a homepage or homescreen to an isntance of the homepage widget.

*/