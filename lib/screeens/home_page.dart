import 'package:drawer_app/data/drawer_data.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Drawer App"),
          centerTitle: true,
        ),
        drawer: Drawer(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://cdn.pixabay.com/photo/2014/04/03/10/32/user-310807_1280.png"),
                  radius: 50,
                  backgroundColor: Colors.amber,
                ),
                SizedBox(
                  height: 7,
                ),
                Text(
                  "Bibek Bajagain",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                Divider(
                  color: Colors.grey,
                  thickness: 3,
                  indent: 20,
                  endIndent: 20,
                ),
                Expanded(
                  child: ListView.builder(
                      itemCount: drawerList.length,
                      itemBuilder: (context, index) {
                        return Column(
                          children: [
                            ListTile(
                              leading: Icon(
                                drawerList[index].icon,
                                color: Colors.black,
                              ),
                              title: Text(
                                drawerList[index].title,
                                style: TextStyle(
                                  fontSize: 18,
                                ),
                              ),
                            ),
                          ],
                        );
                      }),
                ),
                Divider(
                  color: Colors.grey,
                  thickness: 3,
                  indent: 20,
                  endIndent: 20,
                ),
                ListTile(
                  leading: Icon(
                    Icons.logout,
                    color: Colors.black,
                  ),
                  title: Text(
                    "Log out",
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
        body: Center(
          child: Text("This is homepage"),
        ),
      ),
    );
  }
}
