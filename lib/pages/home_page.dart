import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:localization_2/pages/task_page.dart';
class HomePage extends StatefulWidget {
  static final String id = "home_page";
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            icon: Icon(FontAwesome.angle_right,size: 40,),
            onPressed: () {
              Navigator.pushNamed(context, TaskPage.id);
            },

          )
        ],
      ),
      body: Container(
        padding: EdgeInsets.all(30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Expanded(child: Center(
              child: Text("wellcome",style: TextStyle(fontSize: 20),).tr(),
            )),
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
                    context.locale = Locale('ru','RU');
                  },
                  child: Text("Russia",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),

                ),),
                SizedBox(width: 10,),
                Expanded(child: FlatButton(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)),
                  height: 45,
                  color: Colors.blue,
                  onPressed: (){
                    context.locale = Locale('uz','UZ');
                  },
                  child: Text("Uzbek",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),

                ),),
                SizedBox(width: 10,),
                Expanded(child: FlatButton(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)),
                  height: 45,
                  color: Colors.orange,
                  onPressed: (){
                    context.locale = Locale('fr','FR');
                  },
                  child: Text("French",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),

                ),),
              ],
            ),

          ],
        ),
      )
    );
  }
}
