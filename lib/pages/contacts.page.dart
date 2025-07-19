import 'package:flutter/material.dart';
import 'package:demo_app_2/widgets/mydrawer.widget.dart';

class ContactsPage extends StatelessWidget {
  final List<Map<String, String>> contacts = [
    {
      'name': 'Hajar Harkaoui',
      'email': 'hajar.harkaoui@gmail.com',
      'phone': '+212 623456789'
    },
    {
      'name': 'Ahmed Harkaoui',
      'email': 'ahmed.harkaoui@gmail.com',
      'phone': '+514 123456789'
    },
    {
      'name': 'Saad El Khyat',
      'email': 'saad.elkhyat@gmail.com',
      'phone': '+33 734510290'
    },

    {
      'name': 'Youssra Fakhoury',
      'email': 'youssra.fakhoury@gmail.com',
      'phone': '+514 930123980'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(),
      appBar: AppBar(title: const Text("Contacts")),
      body: ListView.builder(
        itemCount: contacts.length,
        itemBuilder: (context, index) {
          final contact = contacts[index];
          final initials = contact['name']!.split(' ').map((e) => e[0]).join();

          return Card(
            margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
            child: ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.deepOrange,
                child: Text(
                  initials,
                  style: const TextStyle(color: Colors.white),
                ),
              ),
              title: Text(contact['name']!),
              subtitle: Text("${contact['email']}\n${contact['phone']}"),
              isThreeLine: true,
              trailing: const Icon(Icons.arrow_forward_ios, size: 16),
              onTap: () {
              },
            ),
          );
        },
      ),
    );
  }
}
