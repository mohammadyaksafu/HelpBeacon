import 'package:flutter/material.dart';

class ArmyEmergency extends StatelessWidget {
  const ArmyEmergency({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10.0, bottom: 5),
      child: Card(
        elevation:5 ,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        child: Container(
          height: 180,
          width: MediaQuery.of(context).size.width*0.7,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
              const Color.fromARGB(255, 0, 0, 0),
              const Color.fromARGB(255, 0, 0, 0),
                const Color.fromARGB(255, 0, 0, 0),
            ])
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ClipOval(
                child: Image.asset(
                    'assets/alert.jpg',
                    fit: BoxFit.cover,
                    width: 80,  
                    height: 80,
                  ), 
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text("Active Emergency",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: MediaQuery.of(context).size.width*0.04,
                    ),
                    ),
                    Text("Call 01642468704 for emergencies",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: MediaQuery.of(context).size.width*0.03,
                    ),
                    ),
                    Container(
                      height: 30,
                      width: 80,
                      decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                       color: Colors.white,
                      ),
                      child: Text("Call",
                      textAlign: TextAlign.center ,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: MediaQuery.of(context).size.width*0.045,

                      ) ,),
                     
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}