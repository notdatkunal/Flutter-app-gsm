import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gurukulapp/Screens/feesScreen/feesScreenCard.dart';
import 'package:gurukulapp/constraits.dart';

class ActionRequiredContainer extends StatelessWidget {
  const ActionRequiredContainer({super.key, required this.title});

  final String title;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return
        // padding: const EdgeInsets.symmetric(vertical: 10),
        Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(
            12,
          ),
          child: DefaultText(
            title: title,
            color: Colors.black,
            fontsize: 25,
            weight: FontWeight.bold,
          ),
        ),
        Container(
          height: 180,
          child: ListView.builder(
              itemCount: 5,
              itemBuilder: (context, index) {
                return FeesScreenCard(
                  ammount: '20,000',
                  heading: 'Installment #${index}',
                  
                );
              }),
        )
      ],
    );
  }
}
