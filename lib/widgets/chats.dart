import 'package:flutter/material.dart';

class Chats extends StatefulWidget {
  @override
  _ChatsState createState() => _ChatsState();
}

class _ChatsState extends State<Chats> {

List<String> names =[
  'Robert',
  'Jacob',
  'John',
];

List<String> text = [
  'hello',
  'mhoro',
  'hevo, ndamba kuudzwa akaonekwa nembonje pahuma, hameno kuti mbonje yacho yakanga iri yekuzvitsvagira here kana kuti akasangana nevanhu vezanu',
];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: names.length,
      itemBuilder: (context, index){
        return Column(
                  children: <Widget>[
                    ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage('assets/images/obama.jpg'),
              // child: Image(
              //   image: AssetImage(
              //     'assets/images/obama.jpg',
              //   ),
              //   fit: BoxFit.cover,
              // ),
            ),
            title: Text(names[index]),
            subtitle: Text(text[index]),
            trailing: Text('10:00'),
          ),
          Divider(),
                  ],
        );
    });
  }
}