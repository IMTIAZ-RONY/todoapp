
import 'package:flutter/material.dart';

import 'home_screen.dart';



class TodoApp extends StatelessWidget {
  const TodoApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomeScreen(),

      theme: ThemeData(
        brightness: Brightness.light,
        primarySwatch: Colors.green,

        useMaterial3: true,
        //  colorScheme:ColorScheme.fromSeed(seedColor:Colors.deepPurple ) ,

        scaffoldBackgroundColor: const Color(0xFFFBFBFD).withOpacity(0.98),
        listTileTheme: ListTileThemeData(
          shape:  RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),

        ),
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.cyan,
          foregroundColor: Colors.pink,
          elevation: 10,
          toolbarHeight: 60,
          centerTitle: true,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25),),

        ),

        iconTheme: const IconThemeData(color: Colors.white),
        actionIconTheme: ActionIconThemeData(
        ),
        textButtonTheme: TextButtonThemeData(
            style: TextButton.styleFrom(
                backgroundColor: const Color.fromRGBO(20, 30, 50, 1),
                foregroundColor: const Color.fromARGB(25, 35, 45, 65),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)),
                textStyle: const TextStyle(color: Colors.blueAccent,
                    fontSize: 18,
                    fontWeight: FontWeight.w700)

            )
        ),

        textTheme: const TextTheme(
          titleLarge: TextStyle(
            color: Colors.pink, fontSize: 24, fontWeight: FontWeight.w900,),
          titleMedium: TextStyle(
            color: Colors.green, fontSize: 18, fontWeight: FontWeight.w700,),
          titleSmall: TextStyle(
            color: Colors.pink, fontSize: 16, fontWeight: FontWeight.w500,),
        ),

        elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.tealAccent,
              foregroundColor: Colors.amber,
              textStyle: const TextStyle(
                fontSize: 22,
                color: Colors.white,
                fontWeight: FontWeight.w700,
              ),
              padding: const EdgeInsets.symmetric(vertical: 10),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),

            )
        ),

        inputDecorationTheme: InputDecorationTheme(
            floatingLabelBehavior: FloatingLabelBehavior.always,
            labelStyle: TextStyle(color: Colors.pink),
            hintStyle: TextStyle(color: Colors.blueGrey),
            hoverColor: Colors.amber,
            suffixIconColor: Colors.blue,
            prefixIconColor: Colors.cyan,
            fillColor: Colors.white,
            filled: true,
            contentPadding: const EdgeInsets.symmetric(vertical: 10),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide: const BorderSide(
                    width: 3, color: Colors.deepPurple)
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
              borderSide: const BorderSide(width: 3, color: Colors.yellow),
            )
        ),


      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.deepOrange,
        useMaterial3: true,
        //  colorScheme:ColorScheme.fromSeed(seedColor:Colors.deepPurple ) ,

        scaffoldBackgroundColor: const Color(0xFFFBFBFD).withOpacity(0.98),

        appBarTheme: AppBarTheme(
          backgroundColor: Colors.cyan,
          foregroundColor: Colors.pink,
          elevation: 5,
          toolbarHeight: 60,
          centerTitle: true,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),),

        ),

        iconTheme: const IconThemeData(color: Colors.white),

        textButtonTheme: TextButtonThemeData(
            style: TextButton.styleFrom(
                backgroundColor: const Color.fromRGBO(20, 30, 50, 1),
                foregroundColor: const Color.fromARGB(25, 35, 45, 65),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)),
                textStyle: const TextStyle(color: Colors.blueAccent,
                    fontSize: 18,
                    fontWeight: FontWeight.w700)

            )
        ),

        textTheme: const TextTheme(
          titleLarge: TextStyle(
            color: Colors.pink, fontSize: 24, fontWeight: FontWeight.w900,),
          titleMedium: TextStyle(
            color: Colors.green, fontSize: 18, fontWeight: FontWeight.w700,),
          titleSmall: TextStyle(
            color: Colors.pink, fontSize: 16, fontWeight: FontWeight.w500,),
        ),

        elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.tealAccent,
              foregroundColor: Colors.amber,
              textStyle: const TextStyle(
                fontSize: 22,
                color: Colors.white,
                fontWeight: FontWeight.w700,
              ),
              padding: const EdgeInsets.symmetric(vertical: 10),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),

            )
        ),

        inputDecorationTheme: InputDecorationTheme(
            floatingLabelBehavior: FloatingLabelBehavior.always,
            labelStyle: TextStyle(color: Colors.pink),
            hintStyle: TextStyle(color: Colors.blueGrey),
            hoverColor: Colors.amber,
            suffixIconColor: Colors.blue,
            prefixIconColor: Colors.cyan,
            fillColor: Colors.white,
            filled: true,
            contentPadding: const EdgeInsets.symmetric(vertical: 10),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide: const BorderSide(
                    width: 3, color: Colors.deepPurple)
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
              borderSide: const BorderSide(width: 3, color: Colors.yellow),
            )
        ),

      ),//from
      themeMode: ThemeMode.light,//light


    );
  }
}


