import 'package:flutter/material.dart';
import 'package:love_in_store/screens/personal_details_screen.dart';
import 'package:love_in_store/utils/temp_data/dsr_list_data.dart';

class DSRList extends StatefulWidget {
  static const String id = 'DSRList';
  const DSRList({Key? key}) : super(key: key);

  @override
  State<DSRList> createState() => _DSRListState();
}

class _DSRListState extends State<DSRList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('DSR List'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            const TextField(
              decoration: InputDecoration(
                  hintText: 'Search...',
                  suffixIcon: Icon(Icons.close_rounded),
                  border: OutlineInputBorder(),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey)),
                  focusedBorder: OutlineInputBorder()),
            ),
            Expanded(
                child: ListView.builder(
                    itemCount: dsrTempList.length,
                    itemBuilder: (context, index) {
                      return Card(
                        elevation: 5,
                        margin: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                        child: ListTile(
                          leading: CircleAvatar(
                            backgroundColor: Colors.deepOrange,
                            foregroundColor: Colors.white,
                            child: Icon(dsrTempList[index]['icon']),
                          ),
                          title: Text(dsrTempList[index]['title']),
                          subtitle: Text(dsrTempList[index]['subtitle']),
                          onTap: () {
                            Navigator.pushNamed(
                                context, PersonalDetailsScreen.id,
                                arguments: dsrTempList[index]['subtitle']);
                          },
                        ),
                      );
                    }))
          ],
        ),
      ),
    );
  }
}
