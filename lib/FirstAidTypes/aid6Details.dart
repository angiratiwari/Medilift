import 'package:flutter/material.dart';

class aid6Details extends StatelessWidget {
  aid6Details({Key? key}) : super(key: key);

  final List<String> _materials = [
    "Activated/instant cold compress",
    "Commercial eyewash (that is not expired",
    "A rigid eye shield",
  ];

  final List<String> _steps = [
    "For a foregin particle in eye do not rub the eye.",
    "Pull the upper lid down and blink repeatedly.",
    "If particle is still there, rinse with eyewash.",
    "For a chemical exposure immediately wash out the eye with lots of water.",
    "Do not bandage the eye.",
  ];

  Widget buildSectionTitle(BuildContext context, String text) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      padding: const EdgeInsets.only(top: 10),
      child: Text(
        text,
        style: const TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
      ),
    );
  }

  Widget buildContainerMaterial(Widget child) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(10),
      ),
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(10),
      height: 93,
      width: 300,
      child: child,
    );
  }

  Widget buildContainerSteps(Widget child) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(10),
      ),
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.only(left: 15, right: 15, top: 5, bottom: 5),
      height: 240,
      width: double.infinity,
      child: child,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Eye Injuries"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              height: MediaQuery.of(context).size.height / 3.75,
              width: double.infinity,
              child: Image.network(
                "https://cdn.pixabay.com/photo/2018/06/19/20/51/trauma-3485235__340.jpg",
                fit: BoxFit.cover,
              ),
            ),
            buildSectionTitle(context, "Materials Required"),
            buildContainerMaterial(ListView.builder(
              itemBuilder: (context, index) => Card(
                color: Theme.of(context).accentColor,
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                  child: Text(
                    _materials[index],
                    style: const TextStyle(fontSize: 18),
                  ),
                ),
              ),
              itemCount: _materials.length,
            )),
            buildSectionTitle(context, "Steps"),
            buildContainerSteps(ListView.builder(
              itemBuilder: ((context, index) => Column(
                    children: [
                      ListTile(
                        leading: CircleAvatar(
                          child: Text(
                            '# ${(index + 1)}',
                            style: const TextStyle(fontWeight: FontWeight.w400),
                          ),
                        ),
                        title: Text(
                          _steps[index],
                          style: const TextStyle(fontSize: 18),
                        ),
                      ),
                      const Divider(),
                    ],
                  )),
              itemCount: _steps.length,
            ))
          ],
        ),
      ),
    );
  }
}
