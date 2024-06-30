import 'package:ecn_app/presentation/resources/string_manager.dart';
import 'package:ecn_app/presentation/resources/theme_manager.dart';
import 'package:ecn_app/screens/home/home_screen.dart';
import 'package:ecn_app/screens/home/voter_registration_screen.dart';
import 'package:flutter/material.dart';
import 'dart:io' show Platform;

void main() {
  runApp(const ECNApp());
}

class ECNApp extends StatelessWidget {
  const ECNApp({super.key});

  static final platform_isIOS = (Platform.isIOS) ? true : false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: AppStrings.appTitle,
      theme: getApplicationTheme(),
      initialRoute: HomeScreen.ROUTE_NAME,
      routes: {
        HomeScreen.ROUTE_NAME: (context) => const HomeScreen(),
        VoterRegistrationScreen.ROUTE_NAME: (context) =>
            const VoterRegistrationScreen()
      },
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ECN App',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 40,
                    backgroundImage: AssetImage(
                        'assets/ecn_logo.jpg'), // Placeholder for logo
                  ),
                  SizedBox(height: 10),
                  Text('ECN Navigation',
                      style: TextStyle(color: Colors.white, fontSize: 20)),
                ],
              ),
            ),
            ListTile(
              title: const Text('Voter Education'),
              leading: const Icon(Icons.school),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const VoterEducationPage()),
                );
              },
            ),
            ListTile(
              title: const Text('Elections'),
              leading: const Icon(Icons.how_to_vote),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const ElectionsPage()),
                );
              },
            ),
            ListTile(
              title: const Text('Political Parties'),
              leading: const Icon(Icons.groups),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const PoliticalPartiesPage()),
                );
              },
            ),
            ListTile(
              title: const Text('Media Releases'),
              leading: const Icon(Icons.announcement),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const MediaReleasesPage()),
                );
              },
            ),
          ],
        ),
      ),
      body: const Padding(
        padding: EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 20),
              Text('Welcome to the ECN App',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
              SizedBox(height: 10),
              Text(
                  'Stay informed about elections, voter education, political parties, and more.',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 16)),
            ],
          ),
        ),
      ),
    );
  }
}

class VoterEducationPage extends StatelessWidget {
  const VoterEducationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Voter Education'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Voter Education',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
            const SizedBox(height: 10),
            const Text(
              'The ECN aims to foster and promote a democratic culture and good governance through voter education. This includes understanding voting requirements, the concepts of multi-party democracy, civil rights, and the electoral process.',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 10),
            const Text(
              'Key Points:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 5),
            const Text(
              '• Conditions and requirements for voting.\n'
              '• Multi-party democracy and proportional representation.\n'
              '• Namibian elections Code of Conduct.\n'
              '• Civil rights and responsibilities.\n'
              '• Types of elections in Namibia.\n'
              '• Voter registration process.',
              style: TextStyle(fontSize: 16),
            ),
            const Divider(height: 40),
            Expanded(
              child: ListView(
                children: const [
                  ListTile(
                    title: Text('How to register as a voter'),
                    trailing: Icon(Icons.arrow_forward_ios),
                  ),
                  Divider(),
                  ListTile(
                    title: Text('The Voters\' Register'),
                    trailing: Icon(Icons.arrow_forward_ios),
                  ),
                  Divider(),
                  ListTile(
                    title: Text('Types of voters\' registration'),
                    trailing: Icon(Icons.arrow_forward_ios),
                  ),
                  Divider(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ElectionsPage extends StatelessWidget {
  const ElectionsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Elections'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Elections',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
            const SizedBox(height: 10),
            const Text(
              'Get information about upcoming elections, past election results, and how to participate.',
              style: TextStyle(fontSize: 16),
            ),
            const Divider(height: 40),
            Expanded(
              child: ListView(
                children: const [
                  ListTile(
                    title: Text('Upcoming Elections'),
                    trailing: Icon(Icons.arrow_forward_ios),
                  ),
                  Divider(),
                  ListTile(
                    title: Text('Past Election Results'),
                    trailing: Icon(Icons.arrow_forward_ios),
                  ),
                  Divider(),
                  ListTile(
                    title: Text('How to Participate'),
                    trailing: Icon(Icons.arrow_forward_ios),
                  ),
                  Divider(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class PoliticalPartiesPage extends StatelessWidget {
  const PoliticalPartiesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Political Parties'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Political Parties',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
            const SizedBox(height: 10),
            const Text(
              'Information about registered political parties, their policies, and how they participate in elections.',
              style: TextStyle(fontSize: 16),
            ),
            const Divider(height: 40),
            Expanded(
              child: ListView(
                children: const [
                  ListTile(
                    title: Text('Registered Political Parties'),
                    trailing: Icon(Icons.arrow_forward_ios),
                  ),
                  Divider(),
                  ListTile(
                    title: Text('Party Policies'),
                    trailing: Icon(Icons.arrow_forward_ios),
                  ),
                  Divider(),
                  ListTile(
                    title: Text('Code of Conduct'),
                    trailing: Icon(Icons.arrow_forward_ios),
                  ),
                  Divider(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MediaReleasesPage extends StatelessWidget {
  const MediaReleasesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Media Releases'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Media Releases',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
            const SizedBox(height: 10),
            const Text(
              'Stay updated with the latest news and announcements from the Electoral Commission of Namibia.',
              style: TextStyle(fontSize: 16),
            ),
            const Divider(height: 40),
            Expanded(
              child: ListView(
                children: const [
                  ListTile(
                    title: Text('Latest News'),
                    trailing: Icon(Icons.arrow_forward_ios),
                  ),
                  Divider(),
                  ListTile(
                    title: Text('Announcements'),
                    trailing: Icon(Icons.arrow_forward_ios),
                  ),
                  Divider(),
                  ListTile(
                    title: Text('Press Releases'),
                    trailing: Icon(Icons.arrow_forward_ios),
                  ),
                  Divider(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
