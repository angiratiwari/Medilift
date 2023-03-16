import 'dart:typed_data';
import 'package:meta/meta.dart';
import 'package:flutter_contacts/flutter_contacts.dart';
import 'package:get/get.dart';
import 'package:ui/home.dart';
import 'package:ui/settings.dart';
import 'package:ui/settings_tile.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/material/icon_button.dart';
import 'main.dart';

void main() async {
  runApp(const Contacts());
}

class Contacts extends StatefulWidget {
  const Contacts({Key? key}) : super(key: key);

  @override
  State<Contacts> createState() => _ContactsState();
}

class _ContactsState extends State<Contacts> {
  List<Contact>? contacts;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getPhoneData();
  }

  void getPhoneData() async {
    if (await FlutterContacts.requestPermission()) {
      contacts = await FlutterContacts.getContacts(
          withProperties: true, withPhoto: true);
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            "Contacts",
            style: TextStyle(color: Colors.blue),
          ),
          centerTitle: true,
          backgroundColor: Colors.black,
          automaticallyImplyLeading: false,
          leadingWidth: 100,
          leading: ElevatedButton.icon(
            onPressed: () => Navigator.of(context).pushReplacement(
                MaterialPageRoute(builder: (BuildContext context) => Home())),
            icon: const Icon(Icons.arrow_left_sharp),
            label: const Text('Back'),
            style: ElevatedButton.styleFrom(
                elevation: 0, primary: Colors.transparent),
          ),
        ),
        body: (contacts == null)
            ? Center(child: CircularProgressIndicator())
            : ListView.builder(
                itemCount: contacts!.length,
                itemBuilder: (BuildContext context, int index) {
                  Uint8List? image = contacts![index].photo;
                  String number = (contacts![index].phones.isNotEmpty)
                      ? contacts![index].phones.first.number
                      : "---";
                  return ListTile(
                    leading: (image == null)
                        ? CircleAvatar(
                            child: Icon(Icons.person),
                          )
                        : CircleAvatar(
                            backgroundImage: MemoryImage(image),
                          ),
                    title: Text(contacts![index].name.first),
                    subtitle: Text(number),
                    onTap: () {
                      launch('tel: ${number}');
                    },
                  );
                }));
  }
}
