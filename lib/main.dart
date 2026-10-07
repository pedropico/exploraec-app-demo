import 'package:exploraec/bienvenida_claude_design.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// Colores del sistema de diseño "Andean Horizon" (Stitch).
const Color kFondo = Color(0xFFE7FFF6);
const Color kPrimario = Color(0xFF0D6E5A);
const Color kPrimarioOscuro = Color(0xFF005444);
const Color kTextoSecundario = Color(0xFF3F4945);
const Color kCirculoIcono = Color(0xFFA0F3D9);

void main() {
  runApp(const ExploraEcApp());
}

class ExploraEcApp extends StatelessWidget {
  const ExploraEcApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ExploraEC',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: kPrimario),
        scaffoldBackgroundColor: kFondo,
      ),
      // Cambia el comentario para comparar los dos diseños:
      home: const BienvenidaScreen(),
      //home: const BienvenidaScreenClaudeDesign(),
    );
  }
}

class BienvenidaScreen extends StatelessWidget {
  const BienvenidaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kFondo,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 32),
          child: Column(
            children: [
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 112,
                      height: 112,
                      decoration: const BoxDecoration(
                        color: kCirculoIcono,
                        shape: BoxShape.circle,
                      ),
                      child: const Icon(
                        Icons.explore,
                        size: 56,
                        color: kPrimario,
                      ),
                    ),
                    const SizedBox(height: 36),
                    Text(
                      'ExploraEC',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.plusJakartaSans(
                        fontSize: 40,
                        fontWeight: FontWeight.w800,
                        letterSpacing: -1.2,
                        height: 1.2,
                        color: kPrimarioOscuro,
                      ),
                    ),
                    const SizedBox(height: 12),
                    Text(
                      'Descubre lugares increíbles cerca de ti',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.plusJakartaSans(
                        fontSize: 16,
                        height: 1.5,
                        color: kTextoSecundario,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: double.infinity,
                height: 56,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: kPrimario,
                    foregroundColor: Colors.white,
                    shape: const StadiumBorder(),
                    elevation: 0,
                    textStyle: GoogleFonts.plusJakartaSans(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  child: const Text('Empezar'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
