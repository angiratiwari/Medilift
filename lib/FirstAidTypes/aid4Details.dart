import 'package:flutter/material.dart';

class aid4Details extends StatelessWidget {
  aid4Details({Key? key}) : super(key: key);

  final List<String> _materials = [
    "Asprin",
    "Nitroglyceri if earlier prescribed",
  ];

  final List<String> _steps = [
    "Help the person sit down ensure he/she is comfortable.",
    "Loosen tight clothing.",
    "Check for medication.",
    "Keep the person still.",
    "Do not give stimulants.",
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
        title: const Text("Heart Attack"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              height: MediaQuery.of(context).size.height / 3.75,
              width: double.infinity,
              child: Image.network(
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTeHfbJfC3dFXpJp2-dYQ9kxg6EcIc0c7pseQ&usqp=CAU",
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
