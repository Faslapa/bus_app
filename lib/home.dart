import 'package:flutter/material.dart';
class MyHomePage extends StatefulWidget {
  const MyHomePage({ Key? key }) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
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
        child: Column(
         
          
          children: <Widget>[
            SizedBox(height: 10,),
            CircleAvatar(
  backgroundImage: AssetImage('assets/bus.jpeg'), radius: 100,
),
SizedBox(height: 10,),
            Text(
              'KL 22 L M291', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25)
            ),
            SizedBox(height:10),
            Container(padding:EdgeInsets.fromLTRB(10, 0, 10, 0),
              child:Row(mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Container(width: 40,
        height: 40,
         
          decoration: BoxDecoration(
             shape: BoxShape.circle), child:Image(image: AssetImage('assets/get-on-bus.png'))),
             
              Expanded(child: TextField(
  
  decoration: InputDecoration(
    border: OutlineInputBorder(),
    labelText: 'Your Location',
    focusedBorder:OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.black, width: 2.0),
            borderRadius: BorderRadius.circular(25.0),
          ),
    
  ),
) ,),]),),
              SizedBox(height:10),
              Container(padding:EdgeInsets.fromLTRB(10, 0, 10, 0),
              child:Row( mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Container(width: 40,
        height: 40,
         
          decoration: BoxDecoration(
             shape: BoxShape.circle), child:Image(image: AssetImage('assets/get-off-bus.png')))
             ,Expanded(child: TextField(
 
  decoration: InputDecoration(
    border: OutlineInputBorder(),
    labelText: 'Destination',
    fillColor: Colors.white,
    focusedBorder:OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.black, width: 2.0),
            borderRadius: BorderRadius.circular(25.0),
          ),
  ),
) ,),
              ]),),
            SizedBox(height:30),
            Text(
              'PASSENGER REVIEW ON SEAT OCCUPANCY', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15)

            ),
            SizedBox(height: 10,),
            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                InkWell(onTap: (){},child: Container(
                      width: 90.0,
        height: 90.0,
          
          decoration: BoxDecoration(
            color: Colors.orange,
            shape: BoxShape.circle,
            boxShadow: [
          BoxShadow(
            color: Colors.black,
            blurRadius: 5.0, // soften the shadow
            spreadRadius: 0.0, //extend the shadow
            offset: Offset(
              2.0, // Move to right 10  horizontally
              2.0, // Move to bottom 10 Vertically
            ),
          )
        ],
          ),
          child: Center(child: Text('Few Seats',textAlign: TextAlign.center, style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),)),
        ),),
        
        InkWell(onTap: (){},child:Container(
                      width: 85.0,
        height: 85.0,
          
          decoration: BoxDecoration(
            color: Colors.lightBlue,
            shape: BoxShape.circle,
            boxShadow: [
          BoxShadow(
            color: Colors.black,
            blurRadius: 5.0, // soften the shadow
            spreadRadius: 0.0, //extend the shadow
            offset: Offset(
              2.0, // Move to right 10  horizontally
              2.0, // Move to bottom 10 Vertically
            ),
          )
        ],
          ),
          child: Center(child: Text('Standing',style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),)),
        )),
              ],
            ),
          SizedBox(height:40),
          Container(padding: const EdgeInsets.fromLTRB(20, 10, 0, 0), child: Align(alignment: Alignment.centerLeft, 
          child:RaisedButton(
              //     disabledColor: Colors.red,
              // disabledTextColor: Colors.black,
              padding: const EdgeInsets.all(10),
              textColor: Colors.white,
              color: Colors.red,
              onPressed: () {
                
              },
              child: Text('Exit',style: TextStyle(fontSize: 17),),
            ), ))  ,
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.yellow,
        onPressed:  (){Navigator.pushNamed(context, '/second');},
        
        child: Icon(Icons.add, color: Colors.black,),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
      
  }
}