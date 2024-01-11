#### Description
Dashboard interaction sample code:
The main body of the project is hosted on two pages, namely the main page HomePage. The main page contains a left sidebar menu page. Select different dial lists on the left menu page to switch.
The display of the main page dashboard, switching events and status data management notifications are through BloC, and the FlutterLogo of the sidebar header uses AnimatorController.
The custom zoom animation implemented has a zoom effect.

The Flutter code is in the lib folder:
Flutter SDK version: Flutter 3.16.5
1. The BloC model is implemented based on the flutter_bloc library
2. The dashboard is implemented based on the fl_chart library

#### Software Architecture
Software architecture description

#### Installation

(Android recommended)
Use an Android phone to connect to Android Studio through ADB and click Run ‘main.dart’ in the toolbar to compile and run the program and install it on the phone.

iOS:
You need to install XCode and CocoaPods environment on your computer, which is more troublesome than installing it on an Android device. You can also use an iOS mobile simulator. The steps for compiling and running are the same as those for Android.

#### Instructions
The project is built using the BloC architecture. User input events and response output status are managed by specific BloC. The UI interface registers BloC at the superior node and monitors BloC status updates.
To notify the corresponding page widgets to update, in order to isolate the event and status logic processing from the UI interface.

#### The problem we are facing
The dashboard is the main UI presentation and lacks business data for interaction. The current UI playability seems relatively thin. The solution is to add simulated interactive data to make the UI more vivid.
The project currently has the core framework of Bloc.