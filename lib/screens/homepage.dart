
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoprovider/provider/todomodel.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.blueAccent,
      appBar: AppBar(
        title: Text("Todo Application"),
      ),
      body: Column(
        children: [
          Column(
          ),
          Expanded(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                  topRight: Radius.circular(50),
                    topLeft: Radius.circular(50),
                  )
                ),
                child: Consumer<TodoModel>(
                  builder: (context, todo, child){
                   return ListView.builder(
                        itemCount: todo.taskList.length,
                        itemBuilder: (context, index){
                          return Container(
                            child: ListTile(
                              contentPadding: EdgeInsets.only(left: 32,right: 32,top: 8,bottom: 8),
                              title: Text(todo.taskList[index].title,style: TextStyle(color: Colors.black54,fontWeight: FontWeight.bold),
                              ),
                              subtitle: Text(todo.taskList[index].detail,style: TextStyle(color: Colors.black12,fontWeight: FontWeight.bold),),
                              trailing: Icon(Icons.check_circle,color: Colors.greenAccent,),
                            ),
                            margin: EdgeInsets.only(left: 16,right: 16,bottom: 8),
                          );
                        }
                    );
                  }

                ),

          ))
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: (){
          Provider.of<TodoModel>(context ,listen: false).addTaskInList();

        },
      ),

    );
  }
}
