import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
class TaskPage extends StatefulWidget {
  static final String id = "task_page";
  const TaskPage({Key? key}) : super(key: key);

  @override
  State<TaskPage> createState() => _TaskPageState();
}

class _TaskPageState extends State<TaskPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(FontAwesome.angle_left,size: 40,),
          onPressed: (){
            Navigator.pop(context);
          },
        ),
      ),
      body: Container(
        padding: EdgeInsets.only(left: 30,right: 30,bottom: 50),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Expanded(child: Center(child:
              Text('flutter',style: TextStyle(fontSize: 20),).tr(),)),
            Row(
            children: [
              Expanded(child: FlatButton(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)),
                height: 45,
                color: Colors.green,
                onPressed: (){
                  context.locale = Locale('en','US');
                },
                child: Text("English",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),

              ),),
              SizedBox(width: 10,),
              Expanded(child: FlatButton(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)),
                height: 45,
                color: Colors.red,
                onPressed: (){
                  context.locale = Locale('kr','KR');
                },
                child: Text("Korean",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),

              ),),
              SizedBox(width: 10,),
              Expanded(child: FlatButton(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)),
                height: 45,
                color: Colors.blue,
                onPressed: (){
                  context.locale = Locale('jp','JP');
                },
                child: Text("Japanese",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),

              ),),
            ],
          )],
        ),
      ),
    );
  }
}
