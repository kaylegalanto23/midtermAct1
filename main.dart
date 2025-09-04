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
      title: const Text('My Flutter App')
    ),
      body: Center(
        child : Column(
          mainAxisAlignment : MainAxisAlignment.center,
          children: [
            Image.network(
              'https://static1.srcdn.com/wordpress/wp-content/uploads/2025/06/the-fantastic-four-first-steps-official-poster.jpeg',
            width: 500,
            height: 500,
          ),
            const SizedBox(height: 20),
            const Text(
              'The Fantastic Four: First Steps(2025)',
              style: TextStyle(fontSize: 24,)
            ),
            const SizedBox(height: 20),
            const Text(
                'Fantastic Four tells the story of four astronauts—Reed Richards, Sue Storm, Johnny Storm, and Ben Grimm—who gain superpowers after being exposed to cosmic radiation during a space mission. Together, they learn to control their new abilities and form a superhero team, while facing their former friend Victor Von Doom, who becomes the villain Doctor Doom.',

                style: TextStyle(fontSize: 15,)
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





