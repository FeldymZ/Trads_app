// ignore: file_names
// ignore: file_names
// ignore: file_names
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:trads_app/screen2.dart';

class Screen1 extends StatefulWidget {
  const Screen1({super.key});

  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  final _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0XFF07313A),
      appBar: AppBar(
        backgroundColor: const Color(0XFF07313A), // même couleur que le fond
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Logo à gauche dans l'AppBar
            Image.asset(
              "assets/logo1.jpg",
              height: 17,
              width: 17,
            ),
            const SizedBox(width: 5), // Espacement entre le logo et le texte
            const Text(
              "trads.",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ],
        ),
        elevation: 0, // Éliminer l'ombre sous l'AppBar
      ),
      body: Stack(
        children: [
          // PageView avec le contenu des pages
          PageView(
            controller: _controller,
            children: [
              _buildPage("assets/2.jpg", "Create Invoices \nFaster and Easier",
                  "Simplify billing invoices. Through an automated \npayment system, payments will be faster an \neasier"),
              _buildPage("assets/3.png", "Create Invoices \nFaster and Easier",
                  "Simplify billing invoices. Through an automated \npayment system, payments will be faster an \neasier"),
              _buildPage("assets/4.png", "Create Invoices \nFaster and Easier",
                  "Simplify billing invoices. Through an automated \npayment system, payments will be faster an \neasier"),
            ],
          ),
          // Indicateur de page en bas
          Positioned(
            bottom: 60, // Ajustez la position en bas
            left: 10,
            right: 0,
            child: SmoothPageIndicator(
              controller: _controller,
              count: 3,
              effect: const ExpandingDotsEffect(
                dotHeight: 7,
                dotWidth: 12,
                expansionFactor: 2,
                activeDotColor: Color(0xff2CD196),
                dotColor: Color(0xff0E504B),
              ),
              onDotClicked: (index) {
                _controller.jumpToPage(index);
              },
            ),
          ),
          // Bouton pour aller à l'écran suivant (Screen2)
          Positioned(
            bottom: 20, // Position plus près du bas de l'écran
            right: 20, // Positionné à droite pour un effet plus visuel
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Screen2()),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xff2CD196), // Couleur verte
                shape: RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.circular(10)), // Forme circulaire
                padding:
                    const EdgeInsets.all(16), // Un peu d'espace autour du texte
              ),
              child: const Text(
                ">",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  // Fonction pour générer chaque page
  Widget _buildPage(String image, String title, String description) {
    return SizedBox(
      width: double.infinity,
      height: double.infinity,
      child: Padding(
        padding: const EdgeInsets.only(left: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Image.asset(
                image,
                height: 480,
                width: 350,
              ),
            ),
            Text(
              title,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 45,
              ),
            ),
            Text(
              description,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 18,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
