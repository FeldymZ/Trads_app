import 'package:flutter/material.dart';

class Screen2 extends StatefulWidget {
  const Screen2({super.key});

  @override
  State<Screen2> createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0XFFdcdcdc),
      body: Column(
        children: [
          // Barre supérieure avec le logo et les notifications
          Padding(
            padding: const EdgeInsets.only(top: 40),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 170),
                  child: Row(
                    children: [
                      Image.asset(
                        "assets/logo1.jpg",
                        height: 25,
                        width: 25,
                      ),
                      const SizedBox(
                          width: 5), // Espacement entre le logo et le texte
                      const Text(
                        "trads.",
                        style: TextStyle(fontSize: 20),
                      ),
                    ],
                  ),
                ),
                const Spacer(),
                const Padding(
                  padding: EdgeInsets.only(right: 20),
                  child: Icon(Icons.notifications),
                ),
              ],
            ),
          ),

          // Titre pour la section "Overview"
          const Padding(
            padding: EdgeInsets.all(10.0),
            child: Row(
              children: [
                Text(
                  "Overview",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
                ),
                Spacer(),
                Icon(Icons.more_horiz)
              ],
            ),
          ),

          // Conteneur pour la vue "Overview"
          Container(
            height: 200,
            width: double.infinity, // Largeur réactive
            decoration: BoxDecoration(
              color: Colors.amberAccent,
              borderRadius: BorderRadius.circular(10), // Bordures arrondies
            ),
            margin: const EdgeInsets.symmetric(
                horizontal: 20), // Marges pour espacer
          ),

          const SizedBox(height: 30),

          // Conteneur pour la section "Upgrade to Enterprise"
          Container(
            height: 100,
            width: double.infinity, // Largeur réactive
            decoration: BoxDecoration(
              color: const Color.fromRGBO(12, 34, 13, 1),
              borderRadius: BorderRadius.circular(10),
            ),
            margin: const EdgeInsets.symmetric(
                horizontal: 20), // Marges pour espacer
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20, top: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Upgrade to Enterprise",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                      const Text(
                        "Scale your business with pro features.",
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ),
                const Spacer(),
                Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: const Text(
                    ">",
                    style: TextStyle(color: Colors.white, fontSize: 30),
                  ),
                ),
              ],
            ),
          ),

          // Titre pour la section "Activity"
          const Padding(
            padding: EdgeInsets.all(10.0),
            child: Row(
              children: [
                Text(
                  "Recent Activity",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
                ),
                Spacer(),
                Icon(Icons.more_horiz)
              ],
            ),
          ),
        ],
      ),
    );
  }
}
