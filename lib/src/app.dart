
import 'package:flutter/material.dart';

// import 'package:contador/src/pages/home_page.dart';

import 'pages/contador_pages.dart';

class MyApp extends StatelessWidget {

  @override
  Widget build( context ){


    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Center(
        
        // child: HomePage()
        child: ContadorPage()
        ),

    );
 
  }

}