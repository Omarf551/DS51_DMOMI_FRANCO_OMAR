import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Proyecto #3',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blueGrey),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Identificación'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        foregroundColor: Colors.black,
        title: Text(title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Padding(
              padding: EdgeInsets.all(20),
              child: CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://th.bing.com/th/id/R.b9f2a0a089c701e8a133886239ad53b8?rik=KNP%2foOI9bk%2f1xw&riu=http%3a%2f%2fthumbor-prod-us-east-1.photo.aws.arc.pub%2fEDCSwWez7LyWyxdS2dDdKOYCHmk%3d%2farc-anglerfish-arc2-prod-copesa%2fpublic%2fZ2NK6DYAPBHO3BVPUE25LQ22ZA.jpg&ehk=EXnNjAZaZJrtocPM8CjvdbtaQ46n9j6M%2feZdJgpix5k%3d&risl=&pid=ImgRaw&r=0'),
                radius: 70,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 30),
                  child: Text(
                    'Omar Antonio',
                    style: Theme.of(context).textTheme.headline6,
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  margin: const EdgeInsets.only(right: 30, top: 30, bottom: 60),
                  child: const Column(
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Text('21'),
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          Text('Edad'),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 30, bottom: 60),
                  child: const Column(
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Text('27/08/2002'),
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          Text('FdN'),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 30, top: 30, bottom: 60),
                  child: const Column(
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Text('MEX'),
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          Text('Nac'),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                ElevatedButton(
                  onPressed: () {
                    // Add your logic for _verMas here
                  },
                  child: const Text('Ver +'),
                ),
                const SizedBox(width: 15),
                ElevatedButton(
                  onPressed: () {
                    // Add your logic for _links here
                  },
                  child: const Text('Links'),
                ),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Add your logic for _check here
        },
        tooltip: 'Check',
        child: const Icon(Icons.check),
      ),
    );
  }
}
