import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List toDoLists = [];

  @override
  void initState() {
    super.initState();
    toDoLists.add("11111111");
    toDoLists.add("22222222");
    toDoLists.add("33333333");
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFFA4C639).withOpacity(0.1),
          title: Text('EOS ToDoList'),
          leading: Image.asset('assets/images/eos_logo.png.png'),
        ),
        body: Column(
          children: [
            Container(
                height: 200,
                padding: EdgeInsets.all(25),
                child: Row(children: [
                  Container(
                    width: 140,
                    height: 140,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(70),
                      border: Border.all(width: 10, color: Colors.grey),
                    ),
                    child: Center(
                        child: Image.asset('assets/images/eos_logo.png.png')),
                  ),
                  SizedBox(
                    width: 35,
                  ),
                  Expanded(
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                        Text(
                          '권영진',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 15),
                        Text('에오스 권영진입니다'),
                      ])),
                ])),
            Stack(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height - 300,
                    decoration: BoxDecoration(
                      color: Color(0xFFA4C639).withOpacity(0.1),
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
                Positioned(
                  top: 20,
                  left: MediaQuery.of(context).size.width / 2 - 75,
                  child: Container(
                    width: 150,
                    height: 38,
                    decoration: BoxDecoration(
                      color: Color(0xFFA4C639).withOpacity(0.3),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Center(
                      child: Text(
                        "To do list",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 23,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 80, left: 40, right: 25),
                  child: Container(
                    height: MediaQuery.of(context).size.height - 400,
                    child: ListView.builder(itemCount: toDoLists.length, itemBuilder: (BuildContext context, int index){
                      return ListTile(
                        title: Text(toDoLists[index]),
                      );
                    }),
                  ),
                ),
                Positioned(
                    bottom: 30,
                    right: 50,
                    child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          toDoLists.add("++++++++");
                        });
                      },
                      child: Icon(
                          Icons.add,
                          size: 30,
                          color: Colors.white
                      ),
                      style: ElevatedButton.styleFrom(
                        elevation: 0,
                        backgroundColor: Color(0xFFA4C639).withOpacity(0.3),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        padding: EdgeInsets.all(0),
                        minimumSize: Size(50, 50),
                      ),
                    )),
              ],
            ),
          ],
        ));
  }
}
