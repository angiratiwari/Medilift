import 'package:flutter/material.dart';

class Manual extends StatelessWidget {
  const Manual({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xFFF2D1D1),
          title: const Text('Bleeding', style: TextStyle(fontSize: 15)),
        ),
        body: Center(
            child: Container(
                padding: EdgeInsets.all(20),
                child: Column(children: [
                  Row(
                    children: [Image.asset('images/bleeding.jpg')],
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Expanded(
                      child: Container(
                    padding: EdgeInsets.all(25),
                    color: Colors.grey[200],
                    child: Center(
                        child: Column(
                      children: [
                        Row(
                          children: [
                            Text(
                              'Steps',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                            )
                          ],
                        ),
                        // listview of steps
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(16),
                          ),
                          child: ListView(children: [
                            Container(
                              child: Text(
                                  '1. Remove any clothing or debris on the wound. Do not remove large or deeply embedded objects.'),
                            ),
                            Container(
                              child: Text(
                                  '2. Place a sterile bandage or clean cloth on the wound. Press the bandage firmly with your palm to control bleeding.'),
                            ),
                            Container(
                              child: Text(
                                  '3. Apply constant pressure until the bleeding stops.'),
                            ),
                            Container(
                              child:
                                  Text('4. Help the injured person lie down.'),
                            ),
                            Container(
                              child: Text(
                                  '5. If the bleeding seeps through the gauze or other cloth on the wound, add another bandage on top of it.'),
                            )
                          ]),
                        ),
                      ],
                    )),
                  ))
                ]))));

    //     ],
    //   )
    // )));
  }
}
// }Row(
//                   children: [
//                     ListView.builder(
//                         itemBuilder: (BuildContext context, int index) {
//                       return ListTile(
//                         title: Text('1. Remove any clothing or debris on the wound. Do not remove large or deeply embedded objects.'
//                         ),
//                       );
//                     })