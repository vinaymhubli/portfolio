import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Project {
  final String? title, description;
  final VoidCallback? onPressed;
  Project({this.title, this.description, this.onPressed});
}

List<Project> demo_projects = [
  Project(
      title: "Zoom Clone",
      description:
          "Built a fully functional zoom clone app using firebase as its backend which is also integrated with jitsi meet",
      onPressed: () {
        launch("https://github.com/vinaymhubli/clonezoom");
      }),
  Project(
      title: "Memer App",
      description:
          "Its a Meme Generator its make you to add custom resizable text, images,& much more to templates.People often use the generator to customize and establish memes",
      onPressed: () {
        launch("https://github.com/vinaymhubli/memer");
      }),
  Project(
      title: "Package-Travels",
      description:
          "It Glorifys the places of Shimoga ,it is a very popular tourist destination in Karnataka and a storehouse of beautiful things",
      onPressed: () {
        launch("https://github.com/vinaymhubli/Package-Travels");
      }),
  Project(
      title: "Mask-Detector App",
      description:
          "I have devloped this face mask detection app with the help of the trained modules of tflite and the users can switch to three diffrent languages by the localization method",
      onPressed: () {
        launch("https://github.com/vinaymhubli/Mask-Detector");
      }),
  Project(
      title: "Our-News",
      description:
          "This app uses the passwordless auth & which fetches the top headlines from NewsApi Org and display those on the home page and i have categories option to see top headlines based on categories",
      onPressed: () {
        launch("https://github.com/vinaymhubli/Our-News");
      }),
  Project(
      title: "Frugal",
      description:
        "Frugal helps users to manage their expenditures by calculating their debit and credit history with the help of the dart hive database and it also uses google signin authentication which is connected to the firebase",
      onPressed: () {
        launch("https://github.com/vinaymhubli/Frugal");
      }),
  Project(
      title: "Flutter Quiz",
      description:
          "Quiz app its a completly responsive with firebase as its backend along with the chatbot which uses dialogflow development  ",
      onPressed: () {
        launch("https://github.com/vinaymhubli/Flutter-Quiz");
      }),
  Project(
      title: "Apta-Sahayak",
      description:
          "This app lets the user to enter text and that text will be translated into 9 different Indian languages, ",
      onPressed: () {
        launch("https://github.com/vinaymhubli/Apta-Sahayak");
      }),
  Project(
      title: "Agenda-Todo-Application",
      description:
          "Fully functional Todo app using Sqlite & Sqflite CRUD for database which also include datetime and date format using showTimePicker and showDatePicker.  ",
      onPressed: () {
        launch("https://github.com/vinaymhubli/Agenda-Todo-Application");
      }),
  Project(
      title: "Hustle-Fitness",
      description:
          "This app uses mobile otp login authentication to access the BMI calculator which also helps users to fetch the nutritional recipes, also redirects the user to the respective youtube playlist",
      onPressed: () {
        launch("https://github.com/vinaymhubli/Hustle-Fitness");
      }),
  Project(
      title: "Express Pizza",
      description: "Fully responsive pizza ordering application - Flutter UI",
      onPressed: () {
        launch("https://github.com/vinaymhubli/Express-Pizza");
      }),
      Project(
      title: "Foodies",
      description:
          "Fully responsive food ordering application with email verification which also uses razorpay payment gateway\n - Flutter UI",
      onPressed: () {
        launch("https://github.com/vinaymhubli/Foodies");
      }),
  Project(
      title: "Webview Application",
      description:
          "This webview app renders and displays the website of boostmysite.com without opening the browser",
      onPressed: () {
        launch("https://github.com/vinaymhubli/Webview-Application");
      }),
  Project(
      title: "Education Portal",
      description:
          "Complete education portal of Boostmysite app development academy which redirect to the respective pages through url launcher ",
      onPressed: () {
        launch("https://github.com/vinaymhubli/Education-Portal");
      }),
  Project(
      title: "Movie Application",
      description:
          "A progressive app which fetches from tmdb api where users can explore a wide range of movies, get information about them, get similar movie recommendations and can track their watch history- Flutter UI",
      onPressed: () {
        launch("https://github.com/vinaymhubli/Movie-Application");
      }),
  Project(
      title: "Whatsapp-Clone",
      description:
          "I redesign the outlook of whatsapp & also make it responsive so that you can run it everywhere on your phone, tab, or web.- Flutter UI",
      onPressed: () {
        launch("https://github.com/vinaymhubli/Whatsapp-Clone");
      }),
  Project(
      title: "Login Design",
      description: "Welcome page, Login Page - Flutter UI",
      onPressed: () {
        launch("https://github.com/vinaymhubli/Login-Design");
      }),
  Project(
      title: "Stopwatch",
      description:
          "measure the amount of time that elapses between its activation and deactivation \n - Flutter UI.",
      onPressed: () {
        launch("https://github.com/vinaymhubli/Stopwatch");
      }),
  Project(
      title: "Compass",
      description:
          "this app determines the  direction relative to the Earth's magnetic poles\n - Flutter UI",
      onPressed: () {
        launch("https://github.com/vinaymhubli/Compass");
      }),
  Project(
      title: "Tic Tac Toe",
      description:
          "This is a two player game, where each player will get a chance one after the other. This game will be having a grid of 3 X 3 with a total of 9 cells. The players are supposed to fill each cell alternatively\n - Flutter UI",
      onPressed: () {
        launch("https://github.com/vinaymhubli/Tic_Tac_Toe");
      }),
];
