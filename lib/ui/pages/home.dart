import 'package:flutter/material.dart';
import 'package:flutter_app/ui/pages/Customer.dart';
import 'package:flutter_app/ui/pages/Details.dart';
//import 'package:flutter_app/ui/pages/Welcome/welcome.dart';
import 'package:flutter_app/ui/pages/addPage/mainSubmissionForm.dart';

class HomePage extends StatefulWidget{
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  //TextEditingController _controller = new TextEditingController();
  List <Customer> customerList = [];

  @override
  void initState() {
    super.initState();
  }
  void _addTodoItem(String name) { //copied
    if (name.length > 0) {
      Customer person = Customer(name: name, status: false);
      setState(() {
        customerList.add(person);
      });
    }
  }

  Future addToDo() async { //copied
    String newToDO = await Navigator.push(context, MaterialPageRoute(builder: (context) => MeasurementForm()));
    _addTodoItem(newToDO);
  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("Tailor\'s Notes"),
        actions: <Widget>[
          IconButton(
            tooltip: "Add",
            onPressed: () => addToDo(),
            icon :Icon(Icons.add, color: Colors.red),

          ),
        ],
      ),
      body:
        customerList.length > 0 ?ListView.builder(
            itemCount: customerList.length,
            itemBuilder: (context, index){
              return Container(
                margin: EdgeInsets.symmetric(horizontal: 8.0 , vertical: 8.0),
                decoration: BoxDecoration(
                  color: Colors.amber,
                  borderRadius: BorderRadius.circular(10.0)
                ),
                padding: EdgeInsets.all(10.0),
                child: ListTile(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => ShowDetail()));
                  },
                  onLongPress: (){},
                  title: Text(
                    customerList[index].name,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20.0
                  ),),
                  trailing: Icon(Icons.check_circle, color: Colors.pink,),
                ),
              );
            })
                : Center(
                  child: Text("Press (+) To Get Started", style: TextStyle(
                    fontSize: 20.0
                  ),),
                ),
    );
  }
}
