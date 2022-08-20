import 'package:flutter/material.dart';
import 'package:love_in_store/screens/dsr_list_screen.dart';
import 'package:love_in_store/utils/temp_data/distributor_list_data.dart';

class DistributorList extends StatefulWidget {
  static const String id = 'DistributorList';
  const DistributorList({Key? key}) : super(key: key);

  @override
  State<DistributorList> createState() => _DistributorListState();
}

class _DistributorListState extends State<DistributorList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Distributor List'),
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
                      borderSide: BorderSide(color: Colors.black54)),
                  focusedBorder: OutlineInputBorder()),
            ),
            Expanded(
                child: ListView.builder(
                    itemCount: distributorTempList.length,
                    itemBuilder: (context, index) {
                      return Card(
                        elevation: 5,
                        margin: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                        child: ListTile(
                          title: Text(distributorTempList[index]['title']),
                          subtitle:
                              Text(distributorTempList[index]['subtitle']),
                          onTap: () {
                            Navigator.pushNamed(context, DSRList.id);
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
