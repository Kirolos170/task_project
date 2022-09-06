import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:task/widgets/app_text_field.dart';
import 'package:get/get.dart';
import 'package:task/widgets/category_button.dart';
class AddScreen extends StatelessWidget {

  List btnlist = ["Development" , "Research " , " Design" , " Backend"] ;
   AddScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(onPressed: (){

                Navigator.pop(context);

              }, icon: ImageIcon(AssetImage('images/arrow.png'))),
              IconButton(onPressed: (){}, icon: ImageIcon(AssetImage('images/menu.png'))),


            ],
          ),

      SizedBox(height: 20,),

      Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,

          children: [

        Text(
          'Create New Task',
          style: TextStyle(
            color: Colors.black,
            fontSize: 27,
            fontWeight: FontWeight.w700,
          ),
        ),
Image.asset('images/note.png',height: 20,width: 20,),


]
    ),

          SizedBox(height: 20,),


AppTextField(label: 'Task name', value: "team meeting"),

          SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
                 Text(
                'Select Category',
                style: TextStyle(
                  fontSize: 16,
                  color: Get.theme.primaryColor,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Text(
                'See All',
                style: TextStyle(
                  fontSize: 13,
                  color: Get.theme.primaryColor,
                ),
              ),

            ],
          ),
          SizedBox(height: 20,),

Container(

  height: 50,
child:  ListView.builder(

  scrollDirection: Axis.horizontal,

  itemBuilder: (builder , index){


    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: CategoryButton(label: btnlist[index], isSelected: true, onTap: (){}),
    );


  },

  itemCount: btnlist.length,
)
  ,
) ,


          SizedBox(height: 20,),


          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: Row(children: [
              Expanded(
                flex: 20,
                child: AppTextField(
                  label: 'Date',
                  value: 'Monday, 1 June',
                ),
              ),
              Spacer(flex: 30),
              Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Get.theme.primaryColor,
                ),
                padding: EdgeInsets.all(10),
                child: Icon(
                  Icons.calendar_today,
                  color: Colors.white,
                ),
              ),
            ]),
          ),


          SizedBox(height: 30,),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40.0),
            child: Row(children: [
              Expanded(
                child: AppTextField(
                  label: 'Start Time',
                  value: '10:00 AM',
                  suffix: Image.asset(
                   "images/arrow_down.png",
                    width: 25,
                  ),
                ),
              ),

              SizedBox(width: 40,),

              Expanded(
                child: AppTextField(
                  label: 'End Time',
                  value: '11:00 AM',
                  suffix: Image.asset(
                   "images/arrow_down.png",
                    width: 25,
                  ),
                ),
              ),
            ]),
          ),
          SizedBox(height: 30,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: AppTextField(
              label: 'Describtion',
              value: 'Discuss all question about project',
            ),
          ),
          SizedBox(height: 30,),

          InkWell(

            onTap: (){},

            child: Container(
              height: 50,
              width: 300,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(10.0),



              ),
              child: Center(
                child: Text("Create Task " , style: TextStyle(
                  color: Colors.white,
                  fontSize: 30

                ),),
              ),

            ),
          )



        ],


      ),


    );
  }
}
