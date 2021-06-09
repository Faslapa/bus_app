import 'package:flutter/material.dart';
class Seat extends StatefulWidget {
  const Seat({ Key? key }) : super(key: key);

  @override
  _SeatState createState() => _SeatState();
}

class _SeatState extends State<Seat> {
   bool isSwitched = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text('Bus tracker'),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
         
          
          children: <Widget>[
            SizedBox(height: 30,),
            Center(child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,children: <Widget>[Text(
              'Share Your Live Location', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25)
            ),
            Switch(
            value: isSwitched,
            onChanged: (value) {
              setState(() {
                isSwitched = value;
                print(isSwitched);
              });
            },
            activeTrackColor: Colors.red,
            activeColor: Colors.black,
          ),
            ],),),
            
            SizedBox(height:10),
            
            SizedBox(height: 30,),
            Text(
              'Occupancy', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25)
            ),
            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,children: <Widget>[
             RaisedButton(
              //     disabledColor: Colors.red,
              // disabledTextColor: Colors.black,
              
              textColor: Colors.white,
              color: Colors.green,
              onPressed: () {
                
              },
              child: Text('Empty',style: TextStyle(fontSize: 17),),
            ), 
             RaisedButton(
              //     disabledColor: Colors.red,
              // disabledTextColor: Colors.black,
              padding: const EdgeInsets.all(10),
              textColor: Colors.white,
              color: Colors.lightGreen,
              onPressed: () {
                
              },
              child: Text('Seats Available',style: TextStyle(fontSize: 17),),
            ), 
             RaisedButton(
              //     disabledColor: Colors.red,
              // disabledTextColor: Colors.black,
              padding: const EdgeInsets.all(10),
              textColor: Colors.white,
              color: Colors.purple,
              onPressed: () {
                
              },
              child: Text('Few seats',style: TextStyle(fontSize: 17),),
            ), 
            
            ],),
            Row(mainAxisAlignment: MainAxisAlignment.center,children: <Widget>[
             RaisedButton(
              //     disabledColor: Colors.red,
              // disabledTextColor: Colors.black,
              
              textColor: Colors.white,
              color: Colors.brown,
              onPressed: () {
                
              },
              child: Text('No Seats',style: TextStyle(fontSize: 17),),
            ), 
            SizedBox(width:50),
             RaisedButton(
              //     disabledColor: Colors.red,
              // disabledTextColor: Colors.black,
              padding: const EdgeInsets.all(10),
              textColor: Colors.white,
              color: Colors.orange,
              onPressed: () {
                
              },
              child: Text('Standing',style: TextStyle(fontSize: 17),),
            ), 
             
            ],),
           


           
              SizedBox(height:10),
             
          
            
          SizedBox(height:40),
         RaisedButton(
              //     disabledColor: Colors.red,
              // disabledTextColor: Colors.black,
              padding: const EdgeInsets.all(10),
              textColor: Colors.white,
              color: Colors.red,
              onPressed: (){Navigator.pushNamed(context, '/third');
                },
              
              child: Text('Submit',style: TextStyle(fontSize: 17),),
            ), 
           
          ],
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}