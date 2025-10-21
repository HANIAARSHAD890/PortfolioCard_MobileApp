import 'package:flutter/material.dart';
import 'package:portfolio_card/appColors.dart';
import 'package:portfolio_card/socialMediaCard..dart';

class portfolioCard extends StatelessWidget {
  const portfolioCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(16),
      color: appColors.cardbackgroud,

      child: Padding(
        padding: EdgeInsetsGeometry.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            //image
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CircleAvatar(
                radius: 110,
                backgroundColor: appColors.cardtertiary,
                child: Container(
                  width: 200,
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(
                    color: appColors.cardprimary,
                    shape: BoxShape.circle,
                  ),

                  child: Image.asset(
                    fit: BoxFit.cover,
                    'assets/images/me.png',
                    height: 400,

                    // color: Color.fromARGB(255, 15, 147, 59),
                  ),
                ),
              ),
            ),
            //name
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                style: TextStyle(
                  backgroundColor: appColors.cardprimary,
                  fontSize: 20,
                ),
                'Hania Arshad',
              ),
            ),
            //description
            Container(
              decoration: BoxDecoration(
                color: appColors.cardsecondary,
                borderRadius: BorderRadius.circular(
                  20.0,
                ), // Adjust the value for desired roundness
              ),

              height: 200,
              child: Center(
                child: Text(
                  textAlign: TextAlign.center,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  'Hey there , I am a passionate Flutter developer currently in my 5th semester at UET Lahore',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Text(
                style: TextStyle(
                  backgroundColor: appColors.cardprimary,
                  fontSize: 20,
                ),
                "Let's Connect",
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Container(
                height: 100,

                child: GridView.count(
                  primary: false,
                  padding: const EdgeInsets.all(8),
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  crossAxisCount: 3,
                  children: <Widget>[
                    Socialmediacard(
                      imagePath: 'assets/images/github.png',
                      onTap: () {},
                    ),
                    Socialmediacard(
                      imagePath: 'assets/images/gmail.png',
                      onTap: () {},
                    ),
                    Socialmediacard(
                      imagePath: 'assets/images/fb.png',
                      onTap: () {},
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
