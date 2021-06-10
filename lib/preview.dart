import 'package:flutter/material.dart';
class Preview extends StatefulWidget {
  const Preview({ Key? key }) : super(key: key);

  @override
  _PreviewState createState() => _PreviewState();
}

class _PreviewState extends State<Preview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text('Whroom'),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
         
          
          children: <Widget>[
          
            Text(
              'Live Location', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25)
            ),
            
            
            Column(children: <Widget>[Text(
              'Occupancy', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25)
            ),
            SizedBox(height: 10),
              RaisedButton(
              //     disabledColor: Colors.red,
              // disabledTextColor: Colors.black,
              padding: const EdgeInsets.all(10),
              textColor: Colors.white,
              color: Colors.purple,
              onPressed: () {
                
              },
              child: Text('Few seats',style: TextStyle(fontSize: 17),),
            ), ],),
            
            Text(
              'Submitted by Username', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25)
            ),   


             
          ],
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
