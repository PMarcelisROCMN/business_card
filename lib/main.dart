import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

  final Uri _openCallMe = Uri.parse('tel: +31 6 222 11 482');
  final Uri _openEmail = Uri.parse('mailto: petermarcelis95@gmail.com');

void main() {
  runApp(
    App(),
  );
}

class App extends StatelessWidget {
  const App({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return buildMaterialApp();
  }


  MaterialApp buildMaterialApp() {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 100, 147, 142),
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 100,
                  backgroundImage: AssetImage('images/rando1.jpeg'),
                ),
                Text(
                  'Peter Marcelis',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 40.0,
                      fontWeight: FontWeight.normal,
                      fontFamily: 'Pacifico'),
                ),
                Text(
                  'Professional clown'.toUpperCase(),
                  style: TextStyle(
                    color: Colors.teal.shade100,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    // fontStyle: FontStyle.italic,
                    letterSpacing: 2,
                    fontFamily: 'SourceSans',
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 96.0),
                  child: Divider(
                    color: Colors.teal,
                    height: 10,
                    thickness: 2,
                  ),
                ),
                Card(
                  margin:
                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                  color: Colors.white,
                  child: InkWell(
                    borderRadius: BorderRadius.circular(10),
                    onTap: () => _launchUrl(_openCallMe),
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Row(
                        children: <Widget>[
                          Icon(
                            Icons.phone_android,
                            color: Colors.teal,
                            size: 30.0,
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            '+31 6 222 11 482',
                            style: TextStyle(
                              color: Colors.teal.shade900,
                              fontFamily: 'SourceSans',
                              letterSpacing: 2,
                              fontWeight: FontWeight.bold,
                              fontSize: 20.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Card(
                  margin:
                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                  color: Colors.white,
                  child: InkWell(
                    borderRadius: BorderRadius.circular(10),
                    onTap: () => _launchUrl(_openEmail),
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Row(
                        children: <Widget>[
                          Icon(
                            Icons.email,
                            color: Colors.teal,
                            size: 30.0,
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            'petermarcelis@gmail.com',
                            style: TextStyle(
                              color: Colors.teal.shade900,
                              fontFamily: 'SourceSans',
                              letterSpacing: 2,
                              fontWeight: FontWeight.bold,
                              fontSize: 20.0,

                            ),
                            overflow: TextOverflow.fade,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.ad_units),
        ),
      ),
    );
  }
}

Future<void> _launchUrl(_url) async {
  if (!await launchUrl(_url)) {
    throw Exception('Could not launch $_url');
  }
}
