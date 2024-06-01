import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HorizontalBoxes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 1,
            blurRadius: 4,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      height: 100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                width: 50,
                height: 50,
                margin: EdgeInsets.all(4.0),
                decoration: BoxDecoration(
                  border: Border.all(color: Color(0xFF6F4E37)), // Coklat kopi
                  borderRadius: BorderRadius.circular(7.0),
                ),
                child: Image.asset('assets/rekammedis.jpg', fit: BoxFit.cover),
              ),
              Text(
                'REKAM\nMEDIS',
                style: GoogleFonts.roboto(
                  fontSize: 10,
                  color: Color(0xFFDAA520), // Kuning tua
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                width: 50,
                height: 50,
                margin: EdgeInsets.all(4.0),
                decoration: BoxDecoration(
                  border: Border.all(color: Color(0xFF6F4E37)), // Coklat kopi
                  borderRadius: BorderRadius.circular(7.0),
                ),
                child: Image.asset('assets/konsul.jpg', fit: BoxFit.cover),
              ),
              Text(
                'KONSULTASI\ndr. ANDREAS',
                style: GoogleFonts.roboto(
                  fontSize: 10,
                  color: Color(0xFFDAA520), // Kuning tua
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                width: 50,
                height: 50,
                margin: EdgeInsets.all(4.0),
                decoration: BoxDecoration(
                  border: Border.all(color: Color(0xFF6F4E37)), // Coklat kopi
                  borderRadius: BorderRadius.circular(7.0),
                ),
                child: Image.asset('assets/jadwal.jpg', fit: BoxFit.cover),
              ),
              Text(
                'JADWAL\nTEMU DOKTER',
                style: GoogleFonts.roboto(
                  fontSize: 10,
                  color: Color(0xFFDAA520), // Kuning tua
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                width: 50,
                height: 50,
                margin: EdgeInsets.all(4.0),
                decoration: BoxDecoration(
                  border: Border.all(color: Color(0xFF6F4E37)), // Coklat kopi
                  borderRadius: BorderRadius.circular(7.0),
                ),
                child: Image.asset('assets/artikel.jpg', fit: BoxFit.cover),
              ),
              Text(
                'ARTIKEL\nKESEHATAN',
                style: GoogleFonts.roboto(
                  fontSize: 10,
                  color: Color(0xFFDAA520), // Kuning tua
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
