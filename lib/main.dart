import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

String btnText = "Click to see picture";
bool pictureVisibility= false;

Color btnClr1 = Colors.green;


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          // toolbarHeight: 100,
          // leadingWidth: 0.5,
          // toolbarOpacity: 0.5,
          centerTitle: true,
          backgroundColor: Colors.green,
          title: Text(
            "Zakaria",
            style: TextStyle(fontSize: 40),
          ),
        ),
        body: SingleChildScrollView(
          // height: MediaQuery.of(context).size.height,
          // width: MediaQuery.of(context).size.width,
          // color: Colors.purple,
          child: Align(
            alignment: Alignment.topCenter,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  height: 10,
                ),
                RaisedButton(
                  child: Text(
                    btnText,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic),
                  ),
                  color: btnClr1,
                  onPressed: () {
                    setState(() {
                      btnText = "Picture is visible now";
                      btnClr1 = Colors.black26;
                      pictureVisibility= true;
                    });
                  },
                ),
                SizedBox(
                  height: 10,
                ),
                Visibility(
                  visible: pictureVisibility,
                  child: Image.network(
                      "https://cdn.pixabay.com/photo/2016/02/17/19/08/lotus-1205631_960_720.jpg"),
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
