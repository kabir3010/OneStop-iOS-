import 'package:flutter/material.dart';


void main() {
  runApp(new MaterialApp(
    
      onGenerateRoute: (RouteSettings settings) {
        switch (settings.name) {
          case '/':
            return MaterialPageRoute(builder: (context) => HomePage());
            break;
          case '/tabdemo':
            return MaterialPageRoute(builder: (context) => TabsDemoScreen());
            break;
         case '/aboutt':
            return MaterialPageRoute(builder: (context) => About());
            break;
         /*case '/fresher':
            return MaterialPageRoute(builder: (context) => Freshers());
            break;*/
      
      //title: "Using Tabs",
      //home:  TabsDemoScreen()));
    
}}));}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /*appBar: AppBar(
        title: Text(' ',style:TextStyle(color:Colors.white)),
       backgroundColor:Colors.transparent,
       //leading: Icon(Icons.menu,color:Colors.white),
       

      ),*/
      body:Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Container(
                    height:460.0,
                    
                    decoration:BoxDecoration(
                      image: new DecorationImage(
                      image: AssetImage('images/login.jpg'),
                      fit: BoxFit.cover,
                    ),)),
                    SizedBox(height:20.0,),
          Container(
              height:40.0, 
              width:300.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12.0),
                color:Color(0xFFFECA05)
              ),
              child:FlatButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12.0),
                ),
                color: Color(0xFFFECA05),
                onPressed: () { Navigator.pushNamed(context, '/aboutt');},
                child: Text(
                  'LOGIN WITH OUTLOOK',
                  style: TextStyle(
                      fontFamily: 'Segoe UI',
                      fontWeight: FontWeight.w400,
                      fontSize: 15.0,
                      letterSpacing: 0.5,
                      color: Colors.grey[900]),
                ),
              ),

              

            ),
            
                    SizedBox(height:10.0,),
            Text('Or'),
            
                    SizedBox(height:10.0,),
            FlatButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12.0),
                ),
                
                onPressed: () {Navigator.pushNamed(context, '/tabdemo');},
                child: Text(
                  'Continue as guest',
                  style: TextStyle(
                      fontFamily: 'Segoe UI',
                      fontWeight: FontWeight.w400,
                      fontSize: 18.0,
                      letterSpacing: 3.0,
                      color: Colors.grey[700]),
                ),
              ),
        ],
      )
        
      
        
      
    );
  }
}












class TabsDemoScreen extends StatefulWidget {
  TabsDemoScreen() : super();
 
  final String title = "Flutter Bottom Tab demo";
 
  @override
  _TabsDemoScreenState createState() => _TabsDemoScreenState();
}
 
class _TabsDemoScreenState extends State<TabsDemoScreen> {
  
  int currentTabIndex = 0;
  
  List<Widget> tabs = [
    
    MaterialApp(
      home:DefaultTabController(
      length:4,
    child:

    
    Scaffold(
      
      appBar:AppBar(
        title: Text('home.',style:TextStyle(fontWeight:FontWeight.w600, fontSize: 24.0,fontFamily: 'Segoe UI',color:Colors.white)),
                    
       backgroundColor:Color(0xFF3C82FE),
       bottom:TabBar(
         tabs: <Widget>[
           Tab(child: Text('FEED',style:TextStyle(fontWeight:FontWeight.w400, fontSize: 16.0,fontFamily: 'Segoe UI',color:Colors.white)),),
           Tab(child: Text('SAVED',style:TextStyle(fontWeight:FontWeight.w400, fontSize: 16.0,fontFamily: 'Segoe UI',color:Colors.white)),),

         ],
       ),

      ),
      body:TabBarView(
        children: <Widget>[
          
          ListView(
            children: <Widget>[
          Container(
            color:Colors.grey[200],
  child:Column(
    children:[
      Container(
        margin: const EdgeInsets.all(7.0),
        
        child: Material(
        elevation: 3.0,
        borderRadius: BorderRadius.circular(10.0),
        child:Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            SizedBox(height: 10.0,),
            ListTile(
                title:Text('Nikhil Gaddam',style:TextStyle(fontWeight:FontWeight.w500,fontSize:22.0,fontFamily: 'Segoe UI',color:Colors.black)),
                subtitle: Text('SWC General Secretary',style:TextStyle(fontWeight:FontWeight.w400,fontFamily: 'Segoe UI',color:Colors.grey[700])),
                leading:Container(
                      
                  width: 60.0,
                  height: 60.0,
                  decoration: new BoxDecoration(
                    color: Colors.white,
                    image: new DecorationImage(
                      image: AssetImage('images/bus.jpg'),
                      fit: BoxFit.cover,
                    ),
                    
                  ),
        
        )

              ),
              SizedBox(height:10.0),
              Container(
                      
                  height: 300.0,
                  decoration: new BoxDecoration(
                    color: Colors.white,
                    image: new DecorationImage(
                      image: AssetImage('images/bus.jpg'),
                      fit: BoxFit.cover,
                    ),
                    
                  ),
        
        ),
        Padding(
              padding: EdgeInsets.fromLTRB(10.0, 15.0, 10.0, 15.0),
              child:
         Text('In Flutter, one can apply a theme to the app using ThemeData class. But there two propeties of this class that confuses me',style:TextStyle(fontWeight:FontWeight.w500,fontFamily: 'Segoe UI',color:Colors.grey[600])),
        ),   

          ]))),
            
            
      
      
      RaisedButton(
          onPressed: () {
            //Navigator.pop(context);
          },
          child: Text('Go Back'),
        ),
      
    ],
  ),  
),
        ],
      
          ),
          
//////////////////////////////////////
        ListView(
          children: <Widget>[
            Container(
              color:Colors.grey[200],
              child:Column(
                children: <Widget>[
                  Card(child:
                    Container(
                      margin:const EdgeInsets.all(10.0),
                    child:ListTile(
                      title:Text('Proof of payment of Seat Acceptance Fee') ,
                      subtitle:Text('(Rs. 35,000/- or Rs.15,000)')
                      )
                    )
                  ),
                  Card(child:
                    Container(
                      margin:const EdgeInsets.all(10.0),
                    child:ListTile(
                      title:Text('Family Annual Income Certificate') ,
                      subtitle:Text('If you family income is less than 5 lakhs in last financial year then Family Annual Income Certificate in the last financial year (Period:April 1,2017 to March 31,2018) issued by competent authority (District Magistrate/ Revenue Officer/ Tehsildar)')
                      )
                    )
                  ),
                  Card(child:
                    Container(
                      margin:const EdgeInsets.all(10.0),
                    child:ListTile(
                      title:Text('Passport(for foreign nationals)') ,
                      subtitle:Text('or OCI Certificate or PIO card, if applicable')
                      )
                    )
                  ),
                  Card(child:
                    Container(
                      margin:const EdgeInsets.all(10.0),
                    child:ListTile(
                      title:Text('DS Certificate, if applicable [format as given in JoSAA Portal]') ,
                      //subtitle:Text('(Rs. 35,000/- or Rs.15,000)')
                      )
                    )
                  )
                ],
              ) 
            ),
          ],
        )
          

        ],
      ),
      drawer:Drawer(child:drawerItems,),

    ),),),
    //************************************************************************ ************/


    MaterialApp(
      home:DefaultTabController(
      length:3,
    child:

    Scaffold(
      
      appBar:AppBar(
        title: Text('home.',style:TextStyle(fontWeight:FontWeight.w600, fontSize: 24.0,fontFamily: 'Segoe UI',color:Colors.white)),
                    
       backgroundColor:Color(0xFF3C82FE),
       bottom:TabBar(
         tabs: <Widget>[
           Tab(child: Text('GYMLKHANA',style:TextStyle(fontWeight:FontWeight.w400, fontSize: 14.0,fontFamily: 'Segoe UI',color:Colors.white)),),
           Tab(child: Text('TRANSPORT',style:TextStyle(fontWeight:FontWeight.w400, fontSize: 14.0,fontFamily: 'Segoe UI',color:Colors.white)),),
           Tab(child: Text('EMERGENCY',style:TextStyle(fontWeight:FontWeight.w400, fontSize: 14.0,fontFamily: 'Segoe UI',color:Colors.white)),),

         ],
       ),

      ),
      body:TabBarView(
        children: <Widget>[
          ListView(
            children:[
              Column(
                children:[
                  SizedBox(height: 10.0,),
                  Container(
                    height:150.0,
                    width:340.0,
                    margin: const EdgeInsets.all(7.0),
                   // color:Color(0xFFFECA05),
                    child: Material(
                      color:Color(0xFFFECA05),
                    elevation: 3.0,
                    borderRadius: BorderRadius.circular(10.0),
                    child:Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        SizedBox(height: 10.0,),
                        Padding(
              padding: EdgeInsets.fromLTRB(13.0, 10.0, 0.0,0.0),
              child: 
                        Text('Gymkhana',style:TextStyle(fontWeight:FontWeight.w500,fontSize:27.0,fontFamily: 'Segoe UI',color:Colors.black)),),
                        SizedBox(height: 10.0,),
                        Padding(
              padding: EdgeInsets.fromLTRB(13.0, 10.0, 0.0, 0.0),
              child: 
                        Text('EXECUTIVE SENATE CLUBS',style:TextStyle(fontWeight:FontWeight.w500,fontSize:18.0,fontFamily: 'Segoe UI',color:Colors.black)),
                  ),]))),
                      SizedBox(height:20.0,),
                      
                      ListTile(
                      title:Text('Executive Wing',style:TextStyle(fontWeight:FontWeight.w500,fontSize:27.0,fontFamily: 'Segoe UI',color:Colors.grey[900])),
                      subtitle: Text('Student Executive for the Institute',style:TextStyle(fontWeight:FontWeight.w400,fontFamily: 'Segoe UI',color:Colors.grey[700])),
                      leading:Container(
                            
                        width: 60.0,
                        height: 60.0,
                        decoration: new BoxDecoration(
                          color: Colors.white,
                          image: new DecorationImage(
                            image: AssetImage('images/bus.jpg'),
                            fit: BoxFit.cover,
                          ),
                          
                        ),
              
              )

                    ),

                
                        

                ]
              )
            ]
          ),
          ListView(
            children:[
              Column(
                children:[
                  Container(
                    height:150.0,
                    width:320.0,
                    margin: const EdgeInsets.all(7.0),
                   // color:Color(0xFFFECA05),
                    child: Material(
                      color:Color(0xFFFECA05),
                    elevation: 3.0,
                    borderRadius: BorderRadius.circular(10.0),
                    child:Column(
                      mainAxisAlignment: MainAxisAlignment.start,crossAxisAlignment: CrossAxisAlignment.start,
                      
                      children: <Widget>[
                        SizedBox(height: 10.0,),
                        Padding(
              padding: EdgeInsets.fromLTRB(13.0, 10.0, 0.0,0.0),
              child: 
                        Text('Transport',style:TextStyle(fontWeight:FontWeight.w500,fontSize:27.0,fontFamily: 'Segoe UI',color:Colors.black)),
                           ),   SizedBox(height: 10.0,),
                           Padding(
              padding: EdgeInsets.fromLTRB(13.0, 10.0, 0.0,0.0),
              child: 
                        Text('EXECUTIVE SENATE CLUBS',style:TextStyle(fontWeight:FontWeight.w500,fontSize:18.0,fontFamily: 'Segoe UI',color:Colors.black)),
                   ) ]))),
                      SizedBox(height:20.0,),
                      ListTile(
                      title:Text('Executive Wing',style:TextStyle(fontWeight:FontWeight.w500,fontSize:27.0,fontFamily: 'Segoe UI',color:Colors.grey[900])),
                      subtitle: Text('Student Executive for the Institute',style:TextStyle(fontWeight:FontWeight.w400,fontFamily: 'Segoe UI',color:Colors.grey[700])),
                      leading:Container(
                            
                        width: 60.0,
                        height: 60.0,
                        decoration: new BoxDecoration(
                          color: Colors.white,
                          image: new DecorationImage(
                            image: AssetImage('images/bus.jpg'),
                            fit: BoxFit.cover,
                          ),
                          
                        ),
              
              )

                    ),

                
                        

                ]
              )
            ]
          ),ListView(
            children:[
              Column(
                children:[
                  Container(
                    height:150.0,
                    width:320.0,
                    margin: const EdgeInsets.all(7.0),
                    //color:Color(0xFFFECA05),
                    child: Material(
                      color:Color(0xFFFECA05),
                    elevation: 3.0,
                    borderRadius: BorderRadius.circular(10.0),
                    child:Column(
                      mainAxisAlignment: MainAxisAlignment.start,crossAxisAlignment: CrossAxisAlignment.start,
                      
                      children: <Widget>[
                        SizedBox(height: 10.0,),
                        Padding(
              padding: EdgeInsets.fromLTRB(13.0, 10.0, 0.0,0.0),
              child: 
                        Text('Emergeny',style:TextStyle(fontWeight:FontWeight.w500,fontSize:27.0,fontFamily: 'Segoe UI',color:Colors.black)),
                        ),SizedBox(height: 10.0,),
                        Padding(
              padding: EdgeInsets.fromLTRB(13.0, 10.0, 0.0,0.0),
              child: 
                        Text('',style:TextStyle(fontWeight:FontWeight.w500,fontSize:18.0,fontFamily: 'Segoe UI',color:Colors.black)),
                   ), ]))),
                      SizedBox(height:20.0,),
                      Card(
                        elevation: 3.0,
                        
                        child:Container(height:100.0,
                        
                        margin:const EdgeInsets.all(10.0),
                        child:
                      ListTile(
                      title:Text('Security',style:TextStyle(fontWeight:FontWeight.w500,fontSize:27.0,fontFamily: 'Segoe UI',color:Colors.grey[900])),
                      subtitle: Text('+91 9085082423',style:TextStyle(fontWeight:FontWeight.w400,fontFamily: 'Segoe UI',color:Colors.grey[700])),
                      leading:Container(
                            
                        width: 60.0,
                        height: 60.0,
                        decoration: new BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(50.0),
                          image: new DecorationImage(
                            image: AssetImage('images/bus.jpg'),
                            fit: BoxFit.cover,
                          ),
                          
                        ),
              
              )

                    ),),),
                    SizedBox(height:10.0),
                    Card(
                        elevation: 3.0,
                        
                        child:Container(height:100.0,
                        margin:const EdgeInsets.all(10.0),
                        child:
                      ListTile(
                      title:Text('Hospital',style:TextStyle(fontWeight:FontWeight.w500,fontSize:27.0,fontFamily: 'Segoe UI',color:Colors.grey[900])),
                      subtitle: Text('+91 9435107501',style:TextStyle(fontWeight:FontWeight.w400,fontFamily: 'Segoe UI',color:Colors.grey[700])),
                      leading:Container(
                            
                        width: 60.0,
                        height: 60.0,
                        decoration: new BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(50.0),
                          image: new DecorationImage(
                            image: AssetImage('images/bus.jpg'),
                            fit: BoxFit.cover,
                          ),
                          
                        ),
              
              )

                    ),),),

                
                        

                ]
              )
            ]
          ),



        ])),)),
          
    
    ListView(
      children:[
        Column(                      //ye wala stats hai !!!!!!!!!!!
          mainAxisAlignment:MainAxisAlignment.start,
          children:[
          

        
        

        Card(
          elevation: 0.0,
          child: new InkWell(
            onTap: () {
              print("tapped");
            },
            child: Container(
            
              height: 130.0,
                  margin: const EdgeInsets.all(2.0),
                padding:const EdgeInsets.all(8.0),
                

              
              decoration:myBoxDecoration(          
              
              ),
              child:Row(
                mainAxisAlignment:MainAxisAlignment.spaceBetween,
                  
                children:[
                  Text('Ferry',style:TextStyle(fontWeight:FontWeight.w400, fontSize: 28.0,fontFamily: 'Segoe UI',color:Colors.grey[700])),
                  Container(
              height:90.0,
              width:90.0,
              decoration:BoxDecoration(
                borderRadius:BorderRadius.circular(50.0),
                image:DecorationImage(
                  image:AssetImage('images/bus.jpg'), fit:BoxFit.cover          
                  
                )
              )
            )

                ]
              )
            ),
          ),
        ),

        Card(
          elevation: 0.0,
          child: new InkWell(
            onTap: () {
              print("tapped");
            },
            child: Container(
            
              height: 130.0,
                  margin: const EdgeInsets.all(2.0),
                padding:const EdgeInsets.all(8.0),
                

              
              decoration:myBoxDecoration(          
              
              ),
              child:Row(
                mainAxisAlignment:MainAxisAlignment.spaceBetween,
                  
                children:[
                  Text('Internal Bus',style:TextStyle(fontWeight:FontWeight.w400, fontSize: 28.0,fontFamily: 'Segoe UI',color:Colors.grey[700])),
                  Container(
              height:90.0,
              width:90.0,
              decoration:BoxDecoration(
                borderRadius:BorderRadius.circular(50.0),
                image:DecorationImage(
                  image:AssetImage('images/bus.jpg'), fit:BoxFit.cover          
                  
                )
              )
            )
                ]
              )
            ),
          ),
        ),
        Card(
          elevation: 0.0,
          child: new InkWell(
            onTap: () {
              //Navigator.pushNamed(context, '/first3');
            },
            child: Container(
            
              height: 130.0,
                  margin: const EdgeInsets.all(2.0),
                padding:const EdgeInsets.all(8.0),
                

              
              decoration:myBoxDecoration(          
              
              ),
              child:Row(
                mainAxisAlignment:MainAxisAlignment.spaceBetween,
                  
                children:[
                  Text('IITG Bus',style:TextStyle(fontWeight:FontWeight.w400, fontSize: 28.0,fontFamily: 'Segoe UI',color:Colors.grey[700])),
                  Container(
              height:90.0,
              width:90.0,
              decoration:BoxDecoration(
                borderRadius:BorderRadius.circular(50.0),
                image:DecorationImage(
                  image:AssetImage('images/bus.jpg'), fit:BoxFit.cover          
                  
                )
              )
            )

                ]
              )
            ),
          ),
        ),

        
        ]
        )
      ]
    ),
  ];
  onTapped(int index) {
    setState(() {
      currentTabIndex = index;
    });
  }
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: tabs[currentTabIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTapped,
        currentIndex: currentTabIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text("Home"),
          ),
          
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            title: Text("Complaints"),
          ),
          
          BottomNavigationBarItem(
            icon: Icon(Icons.timer),
            title: Text("Timings"),)
        ],
      ),
    );
  }
}



final drawerItems =Drawer(
  child: Container(
    color: Color(0xFF3068C9),
    padding: EdgeInsets.all(10.0),
    child: ListView(
      children:[
        Container(child: Center(child:
      Text('Hi Priyanshu Barnwal!',style:TextStyle(fontSize: 20.0,fontWeight: FontWeight.w400,fontFamily: 'Tahoma' ,color: Colors.white,)),)),
      
      Container(child: Center(child:
      Text('Umiam',style:TextStyle(fontSize: 18.0,fontWeight: FontWeight.w400,fontFamily: 'Tahoma' ,color: Colors.white,)),)),
      

    
     ListTile(
      title:Text('Outlook',style:TextStyle(color:Colors.white)),
      leading: Icon(
          Icons.pie_chart,
          color: Colors.white,
        ),
    ),
    ListTile(
      title:Text('Exam TimeTable',style:TextStyle(color:Colors.white)),
      leading: Icon(
          Icons.pie_chart,
          color: Colors.white,
        ),
    ),ListTile(
      title:Text('Mess Menu',style:TextStyle(color:Colors.white)),
      leading: Icon(
          Icons.pie_chart,
          color: Colors.white,
        ),
    ),
    ListTile(
      title:Text('Internet Settings',style:TextStyle(color:Colors.white)),
      leading: Icon(
          Icons.pie_chart,
          color: Colors.white,
        ),
    ),
    ListTile(
      title:Text('Contacts',style:TextStyle(color:Colors.white)),
      leading: Icon(
          Icons.pie_chart,
          color: Colors.white,
        ),
    ),
    ListTile(
      title:Text('About',style:TextStyle(color:Colors.white)),
      leading: Icon(
          Icons.pie_chart,
          color: Colors.white,
        ),
      onTap: (){//Navigator.pushNamed(context, '/first3');
      },
    ),
    ListTile(
      title:Text('Log Out',style:TextStyle(color:Colors.white)),
      leading: Icon(
          Icons.pie_chart,
          color: Colors.white,
        ),
    ),
      ]
    ),
  ),);


BoxDecoration myBoxDecoration() {
  return BoxDecoration(
    border: Border.all(
      color: Colors.blue, //                   <--- border color
      width: 2.0,
    ),
    borderRadius: BorderRadius.all(
        Radius.circular(12.0) //         <--- border radius here
    )
  );
}





class About extends StatelessWidget {
  @override
  Widget build(BuildContext context) {    return Scaffold(
      appBar: AppBar(
        title: Text('about',style:TextStyle(color:Colors.white)),
       backgroundColor:Color(0xFF3C82FE),
       //leading: Icon(Icons.menu,color:Colors.white),
      

      ),
      body:ListView(
        children:[      
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children:[
              Container(
                margin: const EdgeInsets.all(7.0),
                
                child: Material(
                elevation: 3.0,
                borderRadius: BorderRadius.circular(10.0),
                child:Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(height: 10.0,),
                    ListTile(
                      title:Text('OneStopIITG',style:TextStyle(fontWeight:FontWeight.w400, fontSize: 28.0,fontFamily: 'Segoe UI',color:Colors.grey[700])),
                      subtitle: Text('c2018 SWC',style:TextStyle(fontWeight:FontWeight.w400,fontFamily: 'Segoe UI',color:Colors.grey[700])),
                      leading:Image.asset(
                        'images/bus.jpg',
                        width: 35.0,
                        height: 35.0,
                        fit: BoxFit.cover,
                      ),

                    ),
                    ListTile(
                      title:Text('Version',style:TextStyle(fontWeight:FontWeight.w400,fontFamily: 'Segoe UI',color:Colors.grey[700])),
                      subtitle: Text('1.0',style:TextStyle(fontWeight:FontWeight.w400,fontFamily: 'Segoe UI',color:Colors.grey[700])),
                      leading:Icon(Icons.info_outline,color:Colors.grey[800])

                    ),ListTile(
                      title:Text('OneStopIITG',style:TextStyle(fontWeight:FontWeight.w400, fontFamily: 'Segoe UI',color:Colors.grey[800])),
                      subtitle: Text('c2018 SWC',style:TextStyle(fontWeight:FontWeight.w400,fontFamily: 'Segoe UI',color:Colors.grey[700])),
                      leading:Icon(Icons.info,color:Colors.grey[800])

                    ),ListTile(
                      title:Text('Report Bugs/Help',style:TextStyle(fontWeight:FontWeight.w400,fontFamily: 'Segoe UI',color:Colors.grey[800])),
                      subtitle: Text('We hate bugs! In mess food or our app',style:TextStyle(fontWeight:FontWeight.w400,fontFamily: 'Segoe UI',color:Colors.grey[700])),
                      leading:Icon(Icons.bug_report,color:Colors.grey[800])
                    ),
                  ]))),
                  SizedBox(height:10.0),

                  Container(
                margin: const EdgeInsets.all(7.0),
                
                child: Material(
                elevation: 3.0,
                borderRadius: BorderRadius.circular(10.0),
                child:Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(height: 10.0,),
                    
                    ListTile(
                      title:Text('Team',style:TextStyle(fontWeight:FontWeight.w500,fontFamily: 'Segoe UI',color:Colors.grey[900])),
                      
                    ),
                    
                    ListTile(
                      title:Text('Team',style:TextStyle(fontWeight:FontWeight.w400,fontFamily: 'Segoe UI',color:Colors.grey[700])),
                      leading:Icon(Icons.group,color:Colors.grey[800]),
                    ),
                     
                    Container(
                      color:Colors.grey[200],
                      child: Column(mainAxisAlignment: MainAxisAlignment.start,children: <Widget>[
                        SizedBox(height:35.0),
                        ListTile(
                      title:Text('Nikhil Gaddam',style:TextStyle(fontWeight:FontWeight.w400,fontFamily: 'Segoe UI',color:Colors.grey[900])),
                      subtitle: Text('SWC General Secretary',style:TextStyle(fontWeight:FontWeight.w400,fontFamily: 'Segoe UI',color:Colors.grey[700])),
                      leading:Container(
                            
                        width: 80.0,
                        height: 80.0,
                        decoration: new BoxDecoration(
                          color: Colors.white,
                          image: new DecorationImage(
                            image: AssetImage('images/bus.jpg'),
                            fit: BoxFit.cover,
                          ),
                          borderRadius: new BorderRadius.all(new Radius.circular(50.0)),
                          border: new Border.all(
                            color: Colors.white,
                            width: 2.0,
                          ),
                        ),
              
              )

                    ),
                    SizedBox(height:35.0),
                    ListTile(
                      title:Text('Nikhil Gaddam',style:TextStyle(fontWeight:FontWeight.w400,fontFamily: 'Segoe UI',color:Colors.grey[900])),
                      subtitle: Text('SWC General Secretary',style:TextStyle(fontWeight:FontWeight.w400,fontFamily: 'Segoe UI',color:Colors.grey[700])),
                      leading:Container(
                            
                        width: 80.0,
                        height: 80.0,
                        decoration: new BoxDecoration(
                          color: Colors.white,
                          image: new DecorationImage(
                            image: AssetImage('images/bus.jpg'),
                            fit: BoxFit.cover,
                          ),
                          borderRadius: new BorderRadius.all(new Radius.circular(50.0)),
                          border: new Border.all(
                            color: Colors.white,
                            width: 2.0,
                          ),
                        ),
              
              )

                    ),
                    SizedBox(height:35.0),
                    ListTile(
                      title:Text('Nikhil Gaddam',style:TextStyle(fontWeight:FontWeight.w400,fontFamily: 'Segoe UI',color:Colors.grey[900])),
                      subtitle: Text('SWC General Secretary',style:TextStyle(fontWeight:FontWeight.w400,fontFamily: 'Segoe UI',color:Colors.grey[700])),
                      leading:Container(
                            
                        width: 80.0,
                        height: 80.0,
                        decoration: new BoxDecoration(
                          color: Colors.white,
                          image: new DecorationImage(
                            image: AssetImage('images/bus.jpg'),
                            fit: BoxFit.cover,
                          ),
                          borderRadius: new BorderRadius.all(new Radius.circular(50.0)),
                          border: new Border.all(
                            color: Colors.white,
                            width: 2.0,
                          ),
                        ),
              
              )

                    ),
                    
                    SizedBox(height:35.0),
                    ListTile(
                      title:Text('Nikhil Gaddam',style:TextStyle(fontWeight:FontWeight.w400,fontFamily: 'Segoe UI',color:Colors.grey[900])),
                      subtitle: Text('SWC General Secretary',style:TextStyle(fontWeight:FontWeight.w400,fontFamily: 'Segoe UI',color:Colors.grey[700])),
                      leading:Container(
                            
                        width: 80.0,
                        height: 80.0,
                        decoration: new BoxDecoration(
                          color: Colors.white,
                          image: new DecorationImage(
                            image: AssetImage('images/bus.jpg'),
                            fit: BoxFit.cover,
                          ),
                          borderRadius: new BorderRadius.all(new Radius.circular(50.0)),
                          border: new Border.all(
                            color: Colors.white,
                            width: 2.0,
                          ),
                        ),
              
              )

                    ),
                    SizedBox(height:35.0),




                      ],),
                    )

                    ]
                    )
                    )
                    ),

            ])]));}}

          
                    
      