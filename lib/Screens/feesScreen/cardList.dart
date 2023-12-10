import 'package:flutter/material.dart';
import 'package:gurukulapp/constraits.dart';

class CardList extends StatelessWidget {
  CardList({super.key});

  final PageController _pageController =
      PageController(initialPage: 1, viewportFraction: 0.75);

  final List<String> cardData = [
    'Total Amount',
    'UnPaid: 20,000',
    'Installments',
  ];
  final List<String> cardData1 = [
    '20,000',
    'Paid: 10,000',
    '20/40',
  ];
  List<String> imageUrlData = [
    'assets/decoration/fees.png',
    'assets/decoration/unpaid.png',
    'assets/decoration/installments.png'
  ];

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      controller: _pageController,
      scrollDirection: Axis.horizontal,
      itemCount: cardData.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: EdgeInsets.all(16.0),
          child: Container(
            width: 200,
            height: 400,
            decoration: BoxDecoration(
                color: const Color.fromARGB(255, 42, 45, 116),
                borderRadius: BorderRadius.circular(20)),
            padding: EdgeInsets.all(16.0),
            child: Center(
              child: FractionallySizedBox(
                  widthFactor: 1.0,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: 30,
                          ),
                          Image.asset(
                            imageUrlData[index],
                            height: 200,
                            // width: 150,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      DefaultText(
                          title: cardData1[index],
                          color: Colors.white,
                          fontsize: 30,
                          weight: FontWeight.w600),
                      SizedBox(
                        height: 10,
                      ),
                      DefaultText(
                          title: cardData[index],
                          color: Colors.white,
                          fontsize: 30,
                          weight: FontWeight.bold),
                      if (index == 0)
                        const Padding(
                          padding: EdgeInsets.only(top: 4),
                          child: Icon(
                            Icons.arrow_forward,
                            color: Colors.white,
                            // size: 10,
                          ),
                        ),
                      if (index == 1)
                        const Padding(
                          padding: EdgeInsets.only(top: 4),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.arrow_back,
                                color: Colors.white,
                              ),
                              Icon(
                                Icons.arrow_forward,
                                color: Colors.white,
                              )
                            ],
                          ),
                        ),
                      if (index == 2)
                        const Padding(
                          padding: EdgeInsets.only(top: 4),
                          child: Icon(
                            Icons.arrow_back,
                            color: Colors.white,
                            // size: 10,
                          ),
                        ),
                    ],
                  )),
            ),
          ),
        );
      },
    );
  }
}
