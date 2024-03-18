import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepPurple,
          title: Center(
            child: Text(
              "Containers",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
          ),
        ),
        body: Center(
          child: body(),
        ));
  }
}

// possiamo vederlo come se fosse un div in html.
Widget body() => Container(
    width: 200,
    height: 200,
    // non può stare insieme a decoration, visto che
    // è una sua shortcut/metodo/proprietà.
    // color: Colors.deepPurpleAccent,
    //decoration: posso definire altri stili oltre al colore.
    decoration: BoxDecoration(
      color: Colors.white,
      border: Border.all(color: Colors.grey.shade300, width: 1),
      borderRadius: BorderRadius.circular(16),
      // posso avere o borderRadius o shape per definire i bordi.
      // shape: BoxShape.circle
      boxShadow: [
        BoxShadow(
          //sfumatura:
          blurRadius: 5,
          // quanto deve allargarsi al di fuori del contenitore.
          spreadRadius: 2,
          color: Colors.black.withOpacity(0.3),
        ),
      ],
    ),
    child: Center(
      child: Text("Card Container",
          style: TextStyle(
            fontSize: 20,
          )),
    ));
