// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_contacts/contact.dart';
import 'package:ionicons/ionicons.dart';
import 'package:ui/contacts.dart';
import 'package:ui/settings_tile.dart';

class Settings extends StatefulWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Settings",
                style: TextStyle(fontSize: 25, color: Colors.indigo),
              ),
              const SizedBox(height: 40),
              Settingstiles(
                color: Colors.black,
                icon: Ionicons.moon_outline,
                title: "Theme",
                onTap: () {},
              ),
              const SizedBox(
                height: 20,
              ),
              Settingstiles(
                color: Colors.indigo.shade200,
                icon: Ionicons.person_add_outline,
                title: "Add Contacts",
                onTap: () {
                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                      builder: (BuildContext context) => Contacts()));
                },
              ),
              const SizedBox(
                height: 20,
              ),
              Settingstiles(
                color: Colors.indigo.shade200,
                icon: Ionicons.add,
                title: "Edit Contacts",
                onTap: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
