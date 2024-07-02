import 'package:flutter/material.dart';

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
                      fontWeight: FontWeight.bold,
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
                    color: Colors.cyan,
                    height: 10,
                    thickness: 1,
                  ),
                ),
                Card(
                  margin:
                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: ClipRRect(
                    child: InkWell(
                      borderRadius: BorderRadius.circular(10),
                      onTap: () {},
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
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
                                color: Colors.teal.shade200,
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
                ),
                Card(
                  margin:
                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
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
