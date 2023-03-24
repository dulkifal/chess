import 'package:flutter/material.dart';
import 'package:flutter_chess_board/flutter_chess_board.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'chess',
      theme: ThemeData(
       
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Chess Game'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

   

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  
   ChessBoardController controller = ChessBoardController();
  

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
         centerTitle: true,
        title: Text(widget.title),
      ),
      body: Center(
        child: ChessBoard(
          controller: controller,
          boardColor: BoardColor.green,
          boardOrientation: PlayerColor.white,
          enableUserMoves: true,
        ),
      )
        
         // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
