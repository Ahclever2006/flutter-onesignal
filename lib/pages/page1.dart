import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:shared_preferences/shared_preferences.dart';
String _userName;

class PageOne extends StatefulWidget {
  // PageOne({Key key}) : super(key: key);
  var data;
  PageOne(this.data);
  @override
  _PageOneState createState() => _PageOneState(this.data);
}

class _PageOneState extends State<PageOne> {
  var data;
  _PageOneState(this.data);
  final GlobalKey <ScaffoldState> _globalKey = GlobalKey <ScaffoldState>();
  _showSnackbar(String textForSnackbar) {
    var _mySnackbar = SnackBar(content: Text(textForSnackbar),);
    _globalKey.currentState.showSnackBar(_mySnackbar);
  }

  _showToast(String textToast) {
    Fluttertoast.showToast(
      msg: textToast,
      backgroundColor: Colors.black54,
      textColor: Colors.white,
    );
  }

  _loadUserName() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String spname = (prefs.getString('_userName') ?? 'N/A');
    setState(() {
      _userName = spname;
      userNameController.text = _userName;
    });
  }

  final userNameController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _loadUserName();
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.check), onPressed: () async{
            SharedPreferences savestngs = await SharedPreferences.getInstance();
            
            _showToast("Settings saved!");
            Navigator.pop(context, () {
              setState(() {
                savestngs.setString('_userName', userNameController.text);
              });
            });
          },),
        ],
      ),
      body: ListView(children: <Widget>[
        SizedBox(height: 5,),
        Container(
          margin: EdgeInsets.all(10),
          child: TextField(
            controller: userNameController,
            decoration: InputDecoration(
              hintText: "Name",
            ),
            onChanged: (String str) {
              // this.searchData(str);
            },
          ),
        ),
        SizedBox(height: 5,),
        RaisedButton(
          child: Text("Go Back"),
          color: Colors.lightBlue,
          hoverElevation: 5,
          onPressed: () {
            setState(() {
              Navigator.pop(context);
              _showToast("ফিরে যাওয়া হলো!");
            });
          },
        ),
      ],)
    );
  }
}
