import 'package:flutter/material.dart';

class aid2Details extends StatelessWidget {
  aid2Details({Key? key}) : super(key: key);

  final List<String> _materials = [
    "Non conducting materials",
  ];

  final List<String> _steps = [
    "Turn off the source of electricity, if possible.",
    "If not, use a dey nonconducting object made of cardboard, plastic or wood to move the source away from you and the injured person.",
    "Begin CPR if the person shows no signs of circulation such as breathing, coughing or movement."
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
        title: const Text("Electric Shock"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              height: MediaQuery.of(context).size.height / 3.75,
              width: double.infinity,
              child: Image.network(
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQXgmZf_wsUVy_j805gieVXqjjKHWFYp9_fbg&usqp=CAU",
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
