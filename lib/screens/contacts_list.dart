import 'package:flutter/material.dart';

class ContactsList extends StatelessWidget {
  const ContactsList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contacts'),
      ),
      body: ListView(
        children: const [
          Card(
            child: ListTile(
              title: Text("Bernardo"),
              subtitle: Text("2400"),
            ),
          )
        ],
      ),
      floatingActionButton: ElevatedButton(
        onPressed: () {},
        child: Icon(Icons.add),
        style: ElevatedButton.styleFrom(
          shape: CircleBorder(),
          padding: EdgeInsets.all(15),
          primary: Theme.of(context).colorScheme.secondary,
        ),
      ),
    );
  }
}
