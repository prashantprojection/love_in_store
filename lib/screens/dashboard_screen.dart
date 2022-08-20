import 'package:flutter/material.dart';
import 'package:love_in_store/screens/my_profile_screen.dart';
import 'package:love_in_store/utils/drawer_list_constants.dart';

class Dashboard extends StatefulWidget {
  static const String id = 'Dashboard';
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dashboard'),
      ),
      drawer: Drawer(
        child: Column(
          children: [
            GestureDetector(
              child: DrawerHeader(
                  decoration: const BoxDecoration(color: Colors.deepOrange),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Row(
                        children: const [
                          CircleAvatar(
                            foregroundImage:
                                AssetImage('assets/icons/profile_image.png'),
                            minRadius: 40,
                          ),
                          Expanded(child: SizedBox())
                        ],
                      ),
                      const Text(
                        'Prashant Yadav',
                        style: TextStyle(color: Colors.white),
                      ),
                      const Text(
                        'itservices.ael@gmail.com',
                        style: TextStyle(color: Colors.white),
                      )
                    ],
                  )),
              onTap: () {
                Navigator.popAndPushNamed(context, MyProfile.id);
              },
            ),
            Expanded(
              child: ListView.builder(
                  itemCount: drawerItems.length,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        GestureDetector(
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
                                child: Icon(drawerItems[index]['icon'],
                                    color: Colors.deepOrange),
                              ),
                              Text(drawerItems[index]['title'])
                            ],
                          ),
                          onTap: () {
                            Navigator.popAndPushNamed(
                                context, drawerItems[index]['navigate']);
                          },
                        ),
                        const Divider(
                          color: Colors.black26,
                        ),
                      ],
                    );
                  }),
            )
          ],
        ),
      ),
      body: Container(),
    );
  }
}
