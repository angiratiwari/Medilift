import 'package:flutter/material.dart';

import '../FirstAidTypes/aid1Details.dart';
import '../FirstAidTypes/aid2Details.dart';
import '../FirstAidTypes/aid3Details.dart';
import '../FirstAidTypes/aid4Details.dart';
import '../FirstAidTypes/aid5Details.dart';
import '../FirstAidTypes/aid6Details.dart';

void navigateToNextScreen(BuildContext context, String workoutType) {
  switch (workoutType) {
    case "aid1":
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => aid1Details()));
      break;
    case "aid2":
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => aid2Details()));
      break;
    case "aid3":
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => aid3Details()));
      break;
    case "aid4":
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => aid4Details()));
      break;
    case "aid5":
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => aid5Details()));
      break;
    case "aid6":
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => aid6Details()));
      break;
    default:
  }
}
