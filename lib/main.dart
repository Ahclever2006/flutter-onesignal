import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  title: 'BCS Charioteer',
  home: HomePage(),
  // theme: ThemeData(
  //   primarySwatch: Colors.blue,
  // ),
));

class HomePage extends StatelessWidget {
  final _longText = "গান শুনতে যে আমার ভালো লাগে এটা বুঝতে পারি প্রথম আমি ক্লাস সিক্স বা সেভেনে। এর আগে গান শোনা বলতে যতটুকু মনে আছে তা হচ্ছে, আমাদের নেকমরদের বাসার সামনের জুতার দোকানগুলোতে বাজানো গানগুলো। অর্থাৎ, সে দোকানি ভাইদের গান শোনার অভিরুচিই ছিল পরোক্ষভাবে আমার গান শোনার 'টেস্ট'। কিছু গান শোনা হতো বাসার বেশ পেছনে তেলের মিল থেকে; হিন্দিতে বাজানো গানগুলো। ভরদুপুরে হয়তো ঘুমানোর জন্য শুয়েছি, ঘুম আসছে না।";
  final _shortText = "হারিয়ে গিয়েছি এই তো জরুরি খবর";

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(title: Text('BCS Charioteer')),
        body: Column( children: <Widget>[
          Row(children: <Widget>[
            Container(
              margin: EdgeInsets.only(left: 10, top: 10),
              padding: EdgeInsets.all(10.0),
              height: 80,
              width: 150,
              decoration: BoxDecoration(
                color: Color.fromRGBO(248, 148, 3, 1),
                borderRadius: BorderRadius.circular(5)
              ),
              child: Icon(Icons.add_a_photo)
            ),
            Container(
              margin: EdgeInsets.only(left: 10, top: 10),
              padding: EdgeInsets.all(10.0),
              height: 80,
              width: 150,
              decoration: BoxDecoration(
                color: Color.fromRGBO(248, 148, 3, 1),
                borderRadius: BorderRadius.circular(5)
              ),
              child: Text('This is a test.', 
                textAlign: TextAlign.justify,
                style: TextStyle(color: Colors.black, fontSize: 16),
              ),
            ),
            Image.asset('name'),
            ],
          ),
          Container(
            child: Text(_longText, textAlign: TextAlign.justify,),
            margin: EdgeInsets.only(top: 5.0),
            padding: EdgeInsets.all(10.0),
          )
        ],)
      );
  }
}

// class MyHomePage extends StatefulWidget {
//   MyHomePage({Key key, this.title}) : super(key: key);

//   final String title;

//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   int _counter = 0;

//   void _incrementCounter() {
//     setState(() {
//       _counter++;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(widget.title),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             Text(
//               'You have pushed the button this many times:',
//             ),
//             Text(
//               '$_counter',
//               style: Theme.of(context).textTheme.display1,
//             ),
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: _incrementCounter,
//         tooltip: 'Increment',
//         child: Icon(Icons.add),
//     );
//   }
// }
