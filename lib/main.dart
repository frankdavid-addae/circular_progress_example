import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:percent_indicator/percent_indicator.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  void _incrementCounter() {
    setState(() {
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        title: Text(widget.title),
      ),
      body: Center(
        child: Container(
          height: 175.0,
          width: 164.0,
          decoration: BoxDecoration(
            color: Colors.black54,
            borderRadius: BorderRadius.circular(10),
          ),
          padding: EdgeInsets.all(10.0),
          child: CircularPercentIndicator(
            radius: 70.0,
            lineWidth: 5.0,
            animation: true,
            percent: 0.6,
            center: Container(
              constraints: BoxConstraints(
                maxHeight: 50.0,
                maxWidth: 50.0,
              ),
              child: Icon(
                Icons.ac_unit,
                color: Colors.deepOrangeAccent,
                size: 20,
              ),
            ),
            // footer: Text(
            //   'Loading...',
            //   style: TextStyle(
            //     fontSize: 17.0,
            //     fontWeight: FontWeight.w600,
            //   ),
            // ),
            backgroundColor: Colors.white,
            circularStrokeCap: CircularStrokeCap.round,
            progressColor: Colors.deepOrangeAccent,
          ),
        ),
      ),
    );
  }
}



// import 'package:flutter/material.dart';
//
// void main() {
//   runApp(MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//         visualDensity: VisualDensity.adaptivePlatformDensity,
//       ),
//       home: MyHomePage(title: 'Flutterclutter: Loading indicator'),
//     );
//   }
// }
//
// class MyHomePage extends StatefulWidget {
//   MyHomePage({Key key, this.title}) : super(key: key);
//   final String title;
//
//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }
//
// class _MyHomePageState extends State<MyHomePage> {
//   int _counter = 0;
//
//   Future _incrementCounter() async {
//     return Future.delayed(Duration(seconds: 5), () {
//       setState(() {
//         _counter++;
//       });
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(widget.title),
//       ),
//       body: Center(
//           child: Text('Current counter is $_counter')
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {
//           _onPressed(context);
//         },
//         child: Icon(Icons.add),
//       ),
//     );
//   }
//
//   void _onPressed(BuildContext context) async {
//     DialogBuilder(context).showLoadingIndicator('Calculating $_counter + 1');
//     await _incrementCounter();
//     DialogBuilder(context).hideOpenDialog();
//   }
// }
//
// class DialogBuilder {
//   DialogBuilder(this.context);
//
//   final BuildContext context;
//
//   void showLoadingIndicator([String text]) {
//     showDialog(
//       context: context,
//       barrierDismissible: false,
//       builder: (BuildContext context) {
//         return WillPopScope(
//             onWillPop: () async => false,
//             child: AlertDialog(
//               shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.all(Radius.circular(8.0))
//               ),
//               backgroundColor: Colors.black87,
//               content: LoadingIndicator(
//                   text: text
//               ),
//             )
//         );
//       },
//     );
//   }
//
//   void hideOpenDialog() {
//     Navigator.of(context).pop();
//   }
// }
//
// class LoadingIndicator extends StatelessWidget{
//   LoadingIndicator({this.text = ''});
//
//   final String text;
//
//   @override
//   Widget build(BuildContext context) {
//     var displayedText = text;
//
//     return Container(
//         padding: EdgeInsets.all(16),
//         color: Colors.black87,
//         child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             mainAxisSize: MainAxisSize.min,
//             children: [
//               _getLoadingIndicator(),
//               _getHeading(context),
//               _getText(displayedText)
//             ]
//         )
//     );
//   }
//
//   Padding _getLoadingIndicator() {
//     return Padding(
//         child: Container(
//             child: CircularProgressIndicator(
//               strokeWidth: 3,
//             ),
//             width: 70,
//             height: 70
//         ),
//         padding: EdgeInsets.only(bottom: 16)
//     );
//   }
//
//   Widget _getHeading(context) {
//     return
//       Padding(
//           child: Text(
//             'Please wait …',
//             style: TextStyle(
//                 color: Colors.white,
//                 fontSize: 16
//             ),
//             textAlign: TextAlign.center,
//           ),
//           padding: EdgeInsets.only(bottom: 4)
//       );
//   }
//
//   Text _getText(String displayedText) {
//     return Text(
//       displayedText,
//       style: TextStyle(
//           color: Colors.white,
//           fontSize: 14
//       ),
//       textAlign: TextAlign.center,
//     );
//   }
// }