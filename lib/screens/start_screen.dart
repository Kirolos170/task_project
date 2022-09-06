import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:task/constants.dart';
import 'package:task/model/task_model.dart';
import 'package:task/screens/add_screen.dart';
import 'package:task/widgets/clips.dart';
import 'package:task/widgets/custom_container.dart';
import 'package:task/widgets/day_button.dart';
import 'package:get/get.dart';


class StartScreen extends StatefulWidget {



  const StartScreen({Key? key}) : super(key: key);

  @override
  State<StartScreen> createState() => _StartScreenState();
}

class _StartScreenState extends State<StartScreen> {
  List<TaskModel> mylist = [

    TaskModel(urlimage: "images/team.png", text1: "Team Meeting " , text2: "disscus all questions about new projects" , time: "10.00 AM") ,
    
    
    TaskModel(urlimage: "images/phone.png", text1: "call the stylist", text2: "agree on an evening look" , time: "10.00 AM"),
    TaskModel(urlimage: "images/mail.png", text1: "Check mail", text2: "write to the manager" , time: "10.00 AM")
    


  ];




  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Expanded(
          flex: 1,
          child: Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(50)),
              ),
              ClipPath(
                clipper: Mycliper(),
                child: Container(color: Colors.blue),
              ),

                 Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Row(
                        children: [
                          Icon(
                            Icons.menu,
                            color: Colors.black,
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Icon(
                            Icons.notifications_outlined,
                            color: Colors.blue,
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [

                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "MY TASK",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 40,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 700),
                            child: InkWell(
                              onTap: (){


Navigator.push(context, MaterialPageRoute(builder: (context)=> AddScreen()));

                              },


                              child: Container(
                                width: 50,
                                height: 50,
                                decoration: BoxDecoration(
                                  color: Colors.blue,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Icon(
                                  Icons.add,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [

                          Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Text(
                              "Today",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 700),
                            child: Text("Monday 1 June",style: TextStyle(color: Colors.blue),)
                          ),
                        ],
                      ),
                    ),





Container(
  padding: EdgeInsets.only(left: 55,top: 5),
  height: 60,
child: ListView.builder(itemBuilder: (context,index)

{

  return Padding(
    padding: const EdgeInsets.all(5.0),
    child: DayButton(daynymber: index+1, character: getWeekOfDaysFirstLettersByIndex(index), is_selected: true, ontap: (){



    }),
  );

},
  itemCount: 7,
  scrollDirection: Axis.horizontal,
),

),









                  ],
                ),

            ],
          ),
        ),
        SizedBox(
          height: 50,
        ),
        Expanded(
            child: Container(
                decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(50))
            ,
              child: ListView.builder(itemBuilder: (context , index)

              {

                return MyContainer(mymodel: mylist[index]);

              }
              ,
                itemCount: mylist.length,

              ),



            )


        ),
        
      ],

    )



    );
  }


}
