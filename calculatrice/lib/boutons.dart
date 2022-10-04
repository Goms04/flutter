import 'package:flutter/material.dart';

class Boutons extends StatelessWidget {
  final couleur;
  final txtcoul;
  final String txtbtn;
  final tapbtn;

  const Boutons({this.couleur, this.txtcoul, required this.txtbtn, this.tapbtn});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: tapbtn,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ClipRRect(
          
          borderRadius: BorderRadius.circular(35),
          child: Container(
            color: couleur,
            child: Center(
              child: Text(
                txtbtn,
                style: TextStyle(color: txtcoul, fontSize: 20),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
