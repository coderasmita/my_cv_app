import 'package:cv_app/screens/about_page.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  Future<void> _launchUrl(String urllink) async {
    final Uri url = Uri.parse(urllink);
    if (!await launchUrl(url)) {
      throw Exception('Could not launch $url');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "My CV App",
      // theme: ThemeData(primaryColor: Colors.blue),
      home: Scaffold(
        drawer: Drawer(
          child: ListView(
            children: [
              DrawerHeader(
                padding: const EdgeInsets.all(0),
                child: Container(
                  color: Colors.blue,
                  child: const Center(
                    child: Text(
                      "My Introducation",
                      style: TextStyle(color: Colors.white, fontSize: 20.0),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        appBar: AppBar(
          centerTitle: true,
          title: const Text("My Cv App"),
          actions: [
            IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const AboutPage(),
                  ),
                );
              },
              icon: const Icon(Icons.info_outline),
              iconSize: 26.0,
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Card(
                elevation: 2.0,
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: 30.0,
                    horizontal: 20.0,
                  ),
                  child: Column(
                    children: [
                      CircleAvatar(
                        radius: 60.0,
                        backgroundImage: AssetImage("assets/asmee.png"),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      Text(
                        "Asmita Koirala",
                        style: TextStyle(
                          fontSize: 20.0,
                        ),
                      ),
                      SizedBox(
                        height: 3.0,
                      ),
                      Text(
                        "App Developer",
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 16.0,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(
                        height: 7.0,
                      ),
                      Text(
                        "Hello, I'm Asmita Koirala. I am currently studying Bachelor's in IT at Aadim National College and now I'm also learning flutter developer and is involved in Software Engeenering intern at Thulo Technology Pvt.Ltd. I'm currently living in Kathmandu.",
                        style: TextStyle(
                            fontSize: 15, fontFamily: "NotoSans-Regular"),
                      ),
                    ],
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(
                  left: 10.0,
                  top: 10.0,
                  bottom: 3.0,
                ),
                child: Text(
                  "Social Links",
                  style: TextStyle(fontSize: 20.0),
                ),
              ),
              Card(
                elevation: 2.0,
                child: Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        _launchUrl("https://github.com/asmita50");
                      },
                      icon: const FaIcon(FontAwesomeIcons.github),
                    ),
                    IconButton(
                      onPressed: () {
                        _launchUrl(
                            "https://www.linkedin.com/in/asmitakoirala8/");
                      },
                      icon: const FaIcon(FontAwesomeIcons.linkedin),
                    ),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(
                  left: 10.0,
                  top: 10.0,
                  bottom: 3.0,
                ),
                child: Text(
                  "Skills",
                  style: TextStyle(fontSize: 20.0),
                ),
              ),
              const Card(
                elevation: 2.0,
                child: ListTile(
                  leading: CircleAvatar(
                      radius: 30.0,
                      backgroundImage: AssetImage("assets/flutterlogo.jpg")),
                  title: Text("App Development"),
                  subtitle: Text("Dart and Flutter"),
                ),
              ),
              const Card(
                elevation: 2.0,
                child: ListTile(
                  leading: CircleAvatar(
                      radius: 30.0,
                      backgroundImage: AssetImage("assets/web.jpg")),
                  title: Text("Web Development"),
                  subtitle: Text("HTML, CSS, JavaScript"),
                ),
              ),
              const SizedBox(
                height: 10.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
