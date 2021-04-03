import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:weather/whether.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}



class _HomePageState extends State<HomePage> {

  static const f_fontform = 'MyFlutterApp';
  static const f_fontpkg = null;


  static const IconData drizzle = IconData(0xe800,fontFamily:f_fontform,fontPackage: f_fontpkg);
  static const IconData sun = IconData(0xe800,fontFamily:f_fontform,fontPackage: f_fontpkg);
  static const IconData cloud = IconData(0xe800,fontFamily:f_fontform,fontPackage: f_fontpkg);
  static const IconData sun_set = IconData(0xe800,fontFamily:f_fontform,fontPackage: f_fontpkg);


  String temp = "28";
  String status = "S\nU\nN\nY";
  Color color = Colors.black;
  String bg = "assets/images/bg1.png";
  String gif = "assets/images/sunny.gif";
  String imgDay = "assets/images/i_sunny.png";
  String imgNight = "assets/images/i_sunny.png";


  List<bool> isSelected = [true,false,false,false,false,false,false];


  final List<Whether> weatherList =[

    Whether(
      id: 1,
      day: "SUN",
      temp: "25",
      status: "S\nU\nN\nN\nY",
      imgDay: "assets/images/i_sunny.png",
      imgNight: "assets/images/i_sun.png"
    ),
    Whether(
        id: 2,
        day: "MON",
        temp: "26",
        status: "C\nL\nO\nU\nD\nY",
        imgDay: "assets/images/i_sun.png",
        imgNight: "assets/images/i_sunny.png"
    ),   Whether(
        id: 3,
        day: "TUE",
        temp: "27",
        status: "R\nA\nI\nN\nY",
        imgDay: "assets/images/rain.png",
        imgNight: "assets/images/rain.png"
    ),   Whether(
        id: 4,
        day: "WED",
        temp: "24",
        status: "C\nL\nO\nU\nD\nY",
        imgDay: "assets/images/sun.png",
        imgNight: "assets/images/sun.png"
    ),   Whether(
        id: 5,
        day: "THU",
        temp: "22",
        status: "S\nU\nN\nN\nY",
        imgDay: "assets/images/i_cloudy.png",
        imgNight: "assets/images/i_cloudy2.png"
    ),   Whether(
        id: 6,
        day: "FRI",
        temp: "20",
        status: "S\nU\nN\nN\nY",
        imgDay: "assets/images/i_sun.png",
        imgNight: "assets/images/i_sunny.png"
    ),   Whether(
        id: 7,
        day: "SAT",
        temp: "31",
        status: "S\nU\nN\nN\nY",
        imgDay: "assets/images/i_cloudy2.png",
        imgNight: "assets/images/i_cloudy3.png"
    ),

  ];

  void daySelection(int index){

    setState(() {

      for(int buttonIndex=0;buttonIndex < isSelected.length;buttonIndex++ ){

        if(buttonIndex==index){

          isSelected[buttonIndex] = true;
          temp=weatherList[buttonIndex].temp;
          status=weatherList[buttonIndex].status;
          imgDay=weatherList[buttonIndex].imgDay;
          imgNight=weatherList[buttonIndex].imgNight;

          if(weatherList[buttonIndex].id ==4) {

            color= Colors.white;
            gif = "assets/images/night.gif";
            bg ="assets/images/bg.png";
            imgDay ="assets/images/i_cloudy3.png";
            imgNight = "assets/images/i_cloudy3.png";



      }else{

            color= Colors.black;
            if(weatherList[buttonIndex].id==2 || weatherList[buttonIndex].id==6){
              gif = "assets/images/rainy.gif";
            }else{
              gif = "assets/images/sunny.gif";
            }
            bg ="assets/images/bg1.png";
          }

        }
        else{

          isSelected[buttonIndex] = false;


        }


      }
    });



  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(

            body: Container(

              decoration: BoxDecoration(

                image: DecorationImage(
                  image: AssetImage(bg),fit: BoxFit.cover,
                ),
              ),
              
              child: SafeArea(
                  child: Stack(


                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [

                      Container(
                        padding: EdgeInsets.only(top: 20,left: 30,right: 20),
                        child: Row(

                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [

                            Container(
                              child: Row(
                                children: [

                                  Container(
                                    child: Text(temp,style: TextStyle(fontSize: 100,fontFamily: "Oxygen",color: color),),


                                  ),
                                  SizedBox(width: 5,),

                                  Container(height: 80,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text("o",style: TextStyle(fontSize: 20,fontFamily: "Oxygen",fontWeight: FontWeight.bold,color: color),),
                                      Text("C",style: TextStyle(fontSize: 35,fontFamily: "IBM",fontWeight: FontWeight.bold,color: color),),

                                    ],


                                  ),

                                  )


                                ],


                              ),


                            )


                          ],



                        ),


                      ),

                        Container(
                        height: 350,
                        padding: EdgeInsets.symmetric(vertical: 20),
                        child: Image.asset(gif),



                      ),

                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [

                         Text("DHAKA",style: TextStyle(fontSize: 35,letterSpacing: 2,fontFamily: "Poppins",color: color,fontWeight: FontWeight.w300),),

                          SizedBox(
                            height: 10,
                          ),
                          ToggleButtons(

                            borderRadius: BorderRadius.circular(50),
                            fillColor: Colors.brown.withOpacity(.5),
                            children: [
                              Icon(
                                sun_set,
                                color: color,
                                size: 32,),
                              Icon(
                                sun,
                                color: color,
                                size: 32,),
                              Icon(
                                cloud,
                                color: color,
                                size: 32,),
                              Icon(
                                  drizzle,
                                color: color,
                                size: 32,),
                              Icon(
                                sun,
                                color: color,
                                size: 32,),
                              Icon(
                                sun_set,
                                color: color,
                                size: 32,),
                              Icon(
                                sun,
                                color: color,
                                size: 32,),



                            ],

                            onPressed: (int index){
                              daySelection(index);
                            },

                            isSelected: isSelected,


                          ),

                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            height: 30,
                            width: MediaQuery.of(context).size.width*.9,
                            child: ListView.builder(itemBuilder:(ctx,i)=> Padding(padding: EdgeInsets.symmetric(horizontal: 13,vertical: 5),
                              child: Text(weatherList[i].day,style: TextStyle(fontFamily: "Poppins",color: color),),

                            ),

                              itemCount: 7,
                              scrollDirection: Axis.horizontal,



                            ),



                          )


                        ],



                      ),
                      SizedBox(
                        height: 8,
                      )
                      
                    ],
                    
                  ),
                  
                  Positioned(
                    right: 20,
                    top: MediaQuery.of(context).size.height*.1,
                    child: Container(
                          child: Text(status,style: TextStyle(
                            fontSize: 20,fontFamily: "IBM",color: color
                          ),),


                    ),



                  )



                ],


              )
              ),

            ),



    );
  }
}
