import 'package:flutter/material.dart';
import 'package:whatsapp/model/chatmodels.dart';

class CallsScreen extends StatelessWidget {
  const CallsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: dummyData.length,
        itemBuilder: (context, i)=>Column(
          children: <Widget>[
            const Divider(
              height: 10,
            ),
            ListTile(
              leading: CircleAvatar(
              backgroundColor: Theme.of(context).primaryColor,
              backgroundImage: NetworkImage(dummyData[i].avatarUrl),
              ),
              title: Row(
                children: [
                  Text(dummyData[i].name ,style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),),
                ],
              ),
              subtitle: Text(dummyData[i].time, style: TextStyle(
                fontSize: 16,
                color: Colors.grey,
              ),),
              trailing: Container(
                child: Icon(Icons.call, color: Colors.grey, size: 32,),
                padding: EdgeInsets.symmetric(horizontal: 10),
              )
               ),
          ],
        ));
  }
}
