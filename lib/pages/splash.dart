import 'package:deache/onboarding.dart';
import 'package:flutter/material.dart';

class SplanScreen extends StatefulWidget {
  const SplanScreen({super.key});

  @override
  State<SplanScreen> createState() => _SplanScreenState();
}

class _SplanScreenState extends State<SplanScreen> {
  final pages = [
    OnboardingPageModel(
      title: '¡BIENVENIDO A DEACHE!',
      description: 'Tu asistente virtual universitario',
      image: 'images/bothello.png',
      bgColor: const Color.fromARGB(255, 193, 235, 219),
      textColor: Colors.black45,
    ),
    OnboardingPageModel(
      title: 'RESPUESTAS INMEDIATAS',
      description: 'Sin tiempos de espera prolongados.',
      image: 'images/bothello.png',
      bgColor: const Color.fromARGB(255, 193, 235, 219),
      textColor: Colors.black45,
    ),
    OnboardingPageModel(
      title: 'ALTA DISPONIBILIDAD',
      description: 'Disponible las 24 horas del día, los 7 días de la semana.',
      image: 'images/bothello.png',
      bgColor: const Color.fromARGB(255, 193, 235, 219),
      textColor: Colors.black45,
    ),
    OnboardingPageModel(
      title: 'INFORMACIÓN ACTUALIZADA',
      description: 'La información más reciente a la mano.',
      image: 'images/bothello.png',
      bgColor: const Color.fromARGB(255, 193, 235, 219),
      textColor: Colors.black45,
    ),
  ];

  @override
  void initState() {
    super.initState();
    redirect();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color.fromRGBO(76, 175, 80, 1),
        child: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'images/bothello.png',
              height: 350,
              width: 350,
            )
          ],
        )),
      ),
    );
  }

  Future<void> redirect() async {
    await Future.delayed(const Duration(seconds: 3));
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (BuildContext context) => OnboardingPage(
          pages: pages,
        ),
      ),
    );
  }
}
