import 'package:flutter/material.dart';

class aid1Details extends StatelessWidget {
  aid1Details({Key? key}) : super(key: key);

  final List<String> _materials = [
    "Bandage",
    "Scissors",
    "Detol",
    "Soframycin"
  ];

  final List<String> _steps = [
    "Remove any clothing or debris on the wound. Do not remove large or deeply embedded objects.",
    "Place a sterile bandage or clean cloth on the wound. Press the bandage firmly with your palm to control bleeding.",
    "Apply constant pressure until the bleeding stops.",
    "Help the injured person lie down.",
    "If the bleeding seeps through the gauze or other cloth on the wound, add another bandage on top of it.",
    "Immobilize the injured body part as much as possible."
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
        title: const Text("Bleeding"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              height: MediaQuery.of(context).size.height / 3.75,
              width: double.infinity,
              child: Image.network(
                "https://media.glamourmagazine.co.uk/photos/6183cd34aed16de914f5fcdc/1:1/w_1920,h_1920,c_limit/BLEEDING_041121_GettyImages-1171749853_SQ.jpg",
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
