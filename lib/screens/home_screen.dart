import 'package:ecn_app/utils/widgets.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size mediaQuery = MediaQuery.of(context).size;
    return SizedBox(
      width: mediaQuery.width,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.symmetric(
                vertical: mediaQuery.height * 0.01,
              ),
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: mediaQuery.width,
                    ),
                    infoBoxText(
                      'Total number of registered voters',
                      fontSize: 16.0,
                    ),
                    infoBoxText(
                      '395.8K',
                      fontSize: 45.0,
                    ),
                    infoBoxText(
                      '+35% month over month',
                      fontWeight: FontWeight.normal,
                    ),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: TextButton(
                        onPressed: () {},
                        style: TextButton.styleFrom(
                          backgroundColor: Colors.grey.shade300,
                          padding: const EdgeInsets.symmetric(horizontal: 25.0),
                        ),
                        child: const Text(
                          'View',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16.0,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: GridView(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                ),
                children: [
                  homeCard(
                    'Voter Information',
                    const Color(0xFFFEBB57),
                  ),
                  homeCard(
                    'Voter Registration',
                    const Color(0xFFB3E1D9),
                  ),
                  homeCard(
                    'Candidate Information',
                    const Color(0xFFF397D9),
                  ),
                  homeCard(
                    'Elections',
                    const Color(0xFF06A982),
                  ),
                  homeCard(
                    'Voter Education',
                    const Color(0xFFDADADA),
                  ),
                  homeCard(
                    'Latest Updates',
                    const Color(0xFF6CB43F),
                  ),
                  homeCard(
                    'Registration Points',
                    const Color(0xFFF17171),
                  ),
                  homeCard(
                    'Media Releases',
                    const Color(0xFFFFE145),
                  ),
                  homeCard(
                    'Election Results',
                    const Color(0xFFB3E1D9),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
