import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          shadowColor: const Color.fromARGB(255, 133, 131, 131),
          title: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Hello X!",
                style: GoogleFonts.poppins(
                  fontSize: 23,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "Let’s Learn More About  Your Plants",
                style: GoogleFonts.poppins(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          backgroundColor: const Color.fromARGB(255, 100, 189, 132),
        ),
        body: SingleChildScrollView(
          child: SafeArea(
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(30),
                      child: Builder(builder: (context) {
                        return GestureDetector(
                          onTap: () {
                            Navigator.of(context, rootNavigator: true).push(
                              MaterialPageRoute(
                                builder: (context) => HealthCheckPage(),
                              ),
                            );
                          },
                          child: Card(
                            color: const Color.fromARGB(255, 232, 236, 234),
                            child: SizedBox(
                              width: 150,
                              height: 120,
                              child: ListTile(
                                contentPadding: const EdgeInsets.all(20),
                                leading: const Icon(Icons.healing_sharp),
                                title: Text(
                                  "Health Check",
                                  style: GoogleFonts.poppins(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        );
                      }),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15),
                      child: Card(
                        shadowColor: const Color.fromARGB(255, 133, 131, 131),
                        color: const Color.fromARGB(255, 232, 236, 234),
                        child: SizedBox(
                          width: 150,
                          height: 120,
                          child: ListTile(
                            contentPadding: const EdgeInsets.all(20),
                            leading: const Icon(Icons.cloud_circle),
                            title: Text(
                              "Weather",
                              style: GoogleFonts.poppins(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Text(
                  "Your Previous Diseases",
                  style: GoogleFonts.poppins(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                // Adding multiple instances of CardWidget
                const CardWidget(),
                const CardWidget(),
                const CardWidget(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class CardWidget extends StatelessWidget {
  const CardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Card(
          shadowColor: const Color.fromARGB(255, 133, 131, 131),
          color: const Color.fromARGB(255, 232, 236, 234),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              ListTile(
                leading: CircleAvatar(
                  radius: 35,
                  child: ClipOval(
                    child: Image.asset(
                      "images/apple.jpeg",
                      fit: BoxFit.cover,
                      width: 80,
                      height: 80,
                    ),
                  ),
                ),
                title: const Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(bottom: 8.0),
                      child: Text(
                        'Apple Scab',
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                  ],
                ),
                subtitle: const Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      '20/12/2023',
                      style: TextStyle(fontSize: 15),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  IconButton(
                    onPressed: () {
                      debugPrint("Current context: $context");
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Builder(
                            builder: (context) => SecondPage(),
                          ),
                        ),
                      );
                    },
                    icon: const Icon(
                      Icons.arrow_circle_right_outlined,
                      color: Colors.green,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Page'),
      ),
      body: const Center(
        child: Text('This is the Second Page'),
      ),
    );
  }
}

class HealthCheckPage extends StatelessWidget {
  const HealthCheckPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Health Check Page'),
      ),
      body: const Center(
        child: Text('This is the Health Check Page'),
      ),
    );
  }
}
