import 'package:flutter/material.dart';
import 'package:helpbeacon/widgets/home_widgets/emergencies/police_emergency.dart';
import 'package:helpbeacon/widgets/home_widgets/emergencies/ambulance_emergency.dart';
import 'package:helpbeacon/widgets/home_widgets/emergencies/firebrigade_emergency.dart';
import 'package:helpbeacon/widgets/home_widgets/emergencies/army_emergency.dart';

class Emergency extends StatelessWidget {
  const Emergency({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 180,
      child: ListView(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        children: const [
          PoliceEmergency(),
          AmbulanceEmergency(),
          FirebrigadeEmergency(),
          ArmyEmergency(),
        ],
      ),
    );
  }
}
