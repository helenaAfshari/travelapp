import 'package:expandable_text/expandable_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travelapp/model/TravelModel.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
  
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  const MainPage({
    Key? key,
  }) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
//عکس که انتخاب میکنیم اینجا 0درنظر گرفتیم از اولین عکس
  int _selectedIndex = 0;
  double imageSize = 55;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
        body: SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: Color.fromARGB(255, 219, 216, 216),
              width: double.infinity,
              //اینجا یعنی طول را مشخص کردیم
              height: size.height / 1.8,
              child: Stack(
                children: [
                  //قسمت بالای پروژه هست big image
                  Container(
                    width: double.infinity,
                    //طول عکس را مشخص کردیم
                    height: size.height / 2.1,
                    decoration: BoxDecoration(
                       //به پایین عکس بزرگه  گرد کردیم
                        borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(60),
                          bottomRight: Radius.circular(60),
                        ),
                        //اینجا انتخاب کردیم از کلاس travelکه عکسش را بگیره
                        image: DecorationImage(
                          image: AssetImage(travelList[_selectedIndex].image),
                          //برای این که فیکس کند عکس را بزرگ کند
                          fit: BoxFit.cover,
                        )
                        ),
                  ),
      
                  //head icons 2 icons
                  Positioned(
                    right: 0,
                    top: 0,
                    left: 0,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(16, 20, 16, 0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: 50,
                            height: 50,
                            decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color.fromARGB(101, 255, 255, 255)),
                            child: const Icon(CupertinoIcons.arrow_left),
                          ),
                          Container(
                            width: 50,
                            height: 50,
                            decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color.fromARGB(101, 255, 255, 255)),
                            child: const Icon(CupertinoIcons.heart),
                          ),
                        ],
                      ),
                    ),
                  ),
                  //image list
                  Positioned(
                    right: 0,
                    top: 100,
                    child: SizedBox(
                      width: 70,
                      height: double.maxFinite,
                      child: ListView.builder(
                        //تعداد ایتم هارا میگیریم
                        itemCount: travelList.length,
                        itemBuilder: (context, index) {
                          //ایتمی هست که لیست باید از روش بسازیم
                          return imageItem(index);
                        },
                      ),
                    ),
                  )
      
                  //name and place
                  ,
                  Positioned(
                    bottom: 140,
                    left: 20,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          travelList[_selectedIndex].name,
                          style: const TextStyle(
                            color: Color.fromARGB(255, 244, 244, 245),
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Row(
                          children: [
                            const Icon(
                              CupertinoIcons.placemark_fill,
                              color: Colors.white,
                            ),
                            Text(
                              travelList[_selectedIndex].location,
                              style: const TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.normal,
                                fontSize: 16,
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            //قسمت پایین پروژه هست
            Container(
             
              width: double.infinity,
              child: Column(
            children: [
              //برای 3تا مربع که کنار هم قرار گرفتند card
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                    //خط دور borderهست
                    side: const BorderSide(color: Colors.black
                    //زخامت border
                    , width: 1,
                    )
                    ),
                    child: Container(
                      width: 100,
                      height: 100,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                        const Text("Distance",style: TextStyle(color: Colors.blue),),
                        Text(travelList[_selectedIndex].distance + " km ",style:TextStyle(color: Colors.blue) ,)
                      ],),
                    ),
                ),
      
                Card(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15),
                  side: const BorderSide(color: Colors.black,width: 2),
                
                  
                  ),
                  child: Container(
                    
                    width: 100,
                    height: 100,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        const Text("Temp",style: TextStyle(color: Colors.blue),
                      
                        ),
                        Text(travelList[_selectedIndex].temp + " ° C",style: TextStyle(color:Colors.blue) ,)
                      ],
                    ),
                  ),
                ),
      
                 Card(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15),
                  side: const BorderSide(color: Colors.black,width: 2),
                
                  
                  ),
                  child: Container(
                    
                    width: 100,
                    height: 100,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        const Text("Rating",style: TextStyle(color: Colors.blue),
                      
                        ),
                        Text(travelList[_selectedIndex].rating ,style: TextStyle(color:Colors.blue) ,)
                      ],
                    ),
                  ),
                ),
              ],)
            
            ,Padding(
              padding: const EdgeInsets.fromLTRB(24,16,24,16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text("Description"),
                  //برای این که متن زیاد هست از این استفاده میکنیم 
                  ExpandableText(
                    travelList[_selectedIndex].discription,
                    expandText:"Reade More" ,
                    collapseText: "colaps",
                    maxLines: 1,
                 
                    textDirection: TextDirection.ltr,
                 
                  ),
                  const SizedBox(height: 16,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text("Total Price"),
                          Text(travelList[_selectedIndex].price + "\$",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),),
                        ],
                      ),

                      Container(
                        width: 100,
                        height: 100,
                        decoration: const BoxDecoration(shape: BoxShape.circle,color: Colors.black),
                          child: const Icon(CupertinoIcons.arrow_right,color: Colors.white,),
                      )
                    ],
                  )
                ],
              ),
            )
            ],
              ),
            ),
          ],
        ),
      ),
    ));
  }

  Column imageItem(int index) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: InkWell(
            onTap: () {
              // اینجا زمانی که انتخاب میکنیم دیتاهایی که  مربوط به اون شهر هست را انتخاب میکند دو تغییر میدهد indexرا چون داخل لیست هست
              setState(() {
                _selectedIndex = index;
              });
            },
            child: AnimatedContainer(
              decoration: BoxDecoration(
                  border: Border.all(
                      color:
                          _selectedIndex == index ? Colors.amber : Colors.white,
                      width: 2),
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage(travelList[index].image),
                  )),
              width: _selectedIndex == index ? imageSize + 2 : imageSize,
              height: _selectedIndex == index ? imageSize + 2 : imageSize,
              duration: const Duration(milliseconds: 500),
            ),
          ),
        ),
      ],
    );
  }
}


