import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List <String> image=["img/washing1.png","img/iron.png","img/cloth1.png","img/washing1.png"];
  List <String> text=["wash", "iron","Dry Clean","wet Clean"];
  List <Color> colors=[Colors.greenAccent,Colors.blueAccent,Colors.orange,Colors.pink];
  List<String> image1=["img/washing2.jpg","img/washing3.png","img/washing4.jpg"];
  List<String> text1=["Klen Laundry","London Laundary","Custom laundary"];
  List<String> text2=["8.90","8.58","9.20"];
  List<String> text3=["MT Road, 1582","London Road, 1582","MT Road, 1582"];
  List<String> text4=["5.0","4.9","4.8"];
  List<String> text5=["(4.7k Ratings)","(4.9k Ratings)","(4.2k Ratings)"];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 8,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        child:Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Picking & Deliver",style: TextStyle(color: Colors.black26),),
                            SizedBox(height: 5,),
                            Row(
                              children: [
                                Icon(Icons.location_on_outlined,color: Colors.black,),
                                Text("Las Vegas, US",style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.w500),)
                              ],
                            )
                          ],
                        ),
                      ),
                      Container(
                        child: Stack(
                          children: [
                            Container(
                              height:55,
                              width: 55,
                              decoration: BoxDecoration(
                                  color: Colors.yellow,
                                  borderRadius: BorderRadius.circular(10)
                              ),
                              child: Image.asset("img/men.png",fit: BoxFit.cover,height: 10,),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left:42.0),
                              child: Container(
                                  height:12,
                                  width: 12,
                                  child: Image.asset("img/radio.jfif",fit: BoxFit.cover,height: 30,)),
                            )

                          ],
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                       Container(
                         height:50,
                         width:270,
                          child:TextField(
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.white,
                              prefixIcon: Icon(Icons.search),
                              hintText: "Search A service or laundry",
                              hintStyle: TextStyle(color: Colors.grey,
                                  fontSize: 15),

                              enabledBorder: OutlineInputBorder(

                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide(

                                      color: Colors.white
                                  )
                              ),
                            ),
                          ),

                       ),
                      Container(
                        height: 50,
                        width: 50,
                        margin: EdgeInsets.symmetric(horizontal: 4.0),
                        decoration: BoxDecoration(
                                  color: Colors.blue,
                                 borderRadius: BorderRadius.circular(10)
                              ),
                       child:Icon(Icons.add_road,color: Colors.white,)
                      ),
                    ],
                  ),
                  SizedBox(height: 25,),

                  Stack(
                      children: [
                        Container(
                            child:ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image(image: AssetImage("img/washingmachine.jpg"),),
                            )
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left:15.0,top: 60),
                          child: Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Boxing Day",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w900,fontSize: 26),),
                                SizedBox(height: 8,),
                                Container(
                                  height: 30,
                                    width: 170,
                                    child: Text("Get 35% Discount From Every Laundary * * * * * *",style: TextStyle(color: Colors.white),))
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  SizedBox(height: 18,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        child: Text("Services",style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.w500),),
                      ),
                      Container(
                        child:Text("See All",style: TextStyle(color: Colors.black26),)
                      ),
                    ],
                  ),
                  SizedBox(height: 12,),
                  Container(
                    height: 100,
                    width: 330,
                    child: ListView.builder(
                      itemCount: text.length,
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      itemBuilder:(context, index){
                        return Washing(
                          text: text[index],
                          image: image[index],
                          color:colors[index] ,
                        );
                      },
                    ),
                  ),
                  SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        child: Text("Popular Near by you",style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.w500),),
                      ),
                      Container(
                          child:Text("See All",style: TextStyle(color: Colors.black26),)
                      ),
                    ],
                  ),
                  SizedBox(height: 10,),
                  Container(
                    height: 250,
                    width: 330,
                    child: ListView.builder(
                      itemCount: text1.length,
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      itemBuilder:(context, index){
                        return Ratings(
                          text1: text[index],
                          image1: image1[index],
                          text2: text2[index],
                          text3: text3[index],
                          text4: text4[index],
                          text5: text5[index],
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class Ratings extends StatelessWidget {
  const Ratings({
    this.image1,
    this.text1,
    this.text2,
    this.text3,
    this.text4,
    this.text5,
    Key key,
  }) : super(key: key);
  final String image1;
  final String text1;
  final String text2;
  final String text3;
  final String text4;
  final String text5;


  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      height:280,
      width: 280,
      alignment: Alignment.topLeft,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            child: Image.asset(image1,fit: BoxFit.cover,height: 130,width: 300,),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                  child: Text(text1,style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.w500),)
              ),
             Container(
                 child:Column(
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                     Text(text2,style: TextStyle(color: Colors.red,fontSize: 20,fontWeight: FontWeight.w700),),
                     Text("Starting at",style: TextStyle(color: Colors.black26),)
                   ],
                 )
             )
            ],
          ),
          SizedBox(height: 5,),
          Text(text3,style: TextStyle(color: Colors.black26,fontSize: 15,fontWeight: FontWeight.w500),),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                child: Row(
                  children: [
                    Icon(Icons.star,color: Colors.yellow,),
                    Text(text4,style: TextStyle(color: Colors.black,fontWeight:FontWeight.w500,fontSize: 15),),
                    Text(text5,style: TextStyle(color: Colors.black26),),
                  ],
                ),
              ),
              Container(
                alignment: Alignment.center,
                  height: 30,
                  width: 70,
                  margin: EdgeInsets.symmetric(horizontal: 4.0),
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(5)
                  ),
                  child:Text("Details",style: TextStyle(color: Colors.white),)
              ),

            ],
          )

        ],
      ),
    );
  }
}

class Washing extends StatelessWidget {
  const Washing({
    this.image,
    this.text,
    this.color

  }) ;
  final String image;
  final String text;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
        height: 120,
        width: 100,
        margin: EdgeInsets.symmetric(horizontal: 4.0),
        decoration: BoxDecoration(
            color: this.color,
            borderRadius: BorderRadius.circular(10)
        ),
           child:Column(
             children: [
               Padding(
                 padding: const EdgeInsets.only(top:8.0),
                 child: ClipRRect(
                     borderRadius: BorderRadius.circular(8),
                     child: Image.asset(image,fit: BoxFit.cover,height:60,)),
               ),
               Text(text)
             ],
           )

          ),
      ],
    );
  }
}

