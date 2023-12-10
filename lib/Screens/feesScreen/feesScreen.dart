import 'package:flutter/material.dart';
import 'package:gurukulapp/Screens/Dashboard/components/cards/feesCard.dart';
import 'package:gurukulapp/Screens/feesScreen/actionRequiredContainer.dart';
import 'package:gurukulapp/Screens/feesScreen/cardList.dart';
import 'package:gurukulapp/Screens/feesScreen/feesScreenCard.dart';
import 'package:gurukulapp/constraits.dart';
import 'package:gurukulapp/defaultScaffold.dart';

class FeesScreen extends StatelessWidget {
  const FeesScreen({super.key});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return DefaultScaffold(
        title: 'Fees & Payments',
        color: const Color.fromARGB(255, 223, 235, 250),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Container(height: 400, child: CardList()),
              FeesScreenCard(
                ammount: '50,000',
                heading: 'Extending Date',
              ),
              ActionRequiredContainer(title: 'Action Required'),
              ActionRequiredContainer(title: 'Payment History'),
            ],
          ),
        ));
  }
}
