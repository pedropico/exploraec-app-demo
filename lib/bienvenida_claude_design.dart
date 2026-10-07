import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// Colores del diseño "ExploraEC Bienvenida" (Claude Design).
const Color _fondo = Color(0xFFE7FFF6);
const Color _acento = Color(0xFF0D6E5A);
const Color _titulo = Color(0xFF005444);
const Color _textoSecundario = Color(0xFF3F4945);
const Color _circuloExterior = Color(0xFFD0F5E9);
const Color _circuloInterior = Color(0xFFA0F3D9);

class BienvenidaScreenClaudeDesign extends StatelessWidget {
  const BienvenidaScreenClaudeDesign({super.key, this.onEmpezar});

  final VoidCallback? onEmpezar;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _fondo,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(24, 64, 24, 40),
          child: Column(
            children: [
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 136,
                      height: 136,
                      alignment: Alignment.center,
                      decoration: const BoxDecoration(
                        color: _circuloExterior,
                        shape: BoxShape.circle,
                      ),
                      child: Container(
                        width: 96,
                        height: 96,
                        decoration: const BoxDecoration(
                          color: _circuloInterior,
                          shape: BoxShape.circle,
                        ),
                        child: const Icon(
                          Icons.explore_outlined,
                          size: 48,
                          color: _acento,
                        ),
                      ),
                    ),
                    const SizedBox(height: 40),
                    Text(
                      'ExploraEC',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.plusJakartaSans(
                        fontSize: 44,
                        height: 52 / 44,
                        fontWeight: FontWeight.w800,
                        letterSpacing: -1.32,
                        color: _titulo,
                      ),
                    ),
                    const SizedBox(height: 12),
                    ConstrainedBox(
                      constraints: const BoxConstraints(maxWidth: 280),
                      child: Text(
                        'Descubre lugares increíbles cerca de ti',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.plusJakartaSans(
                          fontSize: 17,
                          height: 26 / 17,
                          color: _textoSecundario,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              DecoratedBox(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(9999),
                  boxShadow: const [
                    BoxShadow(
                      color: Color(0x590D6E5A),
                      offset: Offset(0, 8),
                      blurRadius: 24,
                      spreadRadius: -6,
                    ),
                  ],
                ),
                child: SizedBox(
                  width: double.infinity,
                  height: 56,
                  child: ElevatedButton(
                    onPressed: onEmpezar ?? () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: _acento,
                      foregroundColor: Colors.white,
                      elevation: 0,
                      shape: const StadiumBorder(),
                      textStyle: GoogleFonts.plusJakartaSans(
                        fontSize: 17,
                        fontWeight: FontWeight.w700,
                        letterSpacing: 0.17,
                      ),
                    ),
                    child: const Text('Empezar'),
                  ),
                ),
              ),
              const SizedBox(height: 16),
              Text(
                'COSTA · SIERRA · ORIENTE · GALÁPAGOS',
                textAlign: TextAlign.center,
                style: GoogleFonts.plusJakartaSans(
                  fontSize: 12,
                  height: 16 / 12,
                  fontWeight: FontWeight.w600,
                  letterSpacing: 0.48,
                  color: _textoSecundario,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
