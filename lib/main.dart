import 'package:flutter/material.dart';

const Color darkBlue = Color.fromARGB(255, 18, 32, 47);

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: darkBlue,
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
      backgroundColor: Colors.transparent,
        ),
        body:  HomePage(),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children : [
      const Text('Let\'s find a movie'),
        const SizedBox(height: 20),
        Image.network('https://raw.githubusercontent.com/Quingsley/movie-recommendation-app/main/assets/images/undraw_horror_movie.png'),
        const Spacer(),
        ElevatedButton(onPressed: (){}, 
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12)
                    )
                    , 
                    foregroundColor:Colors.white,
                  backgroundColor: Colors.redAccent,
                  ),  
         child: const Text('Let\'s get started'))
        
    ]);
  }
}
