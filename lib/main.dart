import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Elimina el banner de depuración
      home: Scaffold(
        appBar: AppBar(
          title: Text('ElevatedButton'), // Agrega un título al AppBar
        ),
        body: Column(
          children: <Widget>[
            buildListTile(Icons.home, 'GO to home', Colors.purple),
            buildListTile(Icons.home, 'GO to home', Colors.grey),
            buildListTile(Icons.home, 'GO to home', Colors.black),
            buildListTile(Icons.home, 'GO to home', Colors.pink),
            buildListTile(Icons.settings, '', Colors.blue),
            buildListTile(Icons.person, '', Colors.green),
            buildListTile(Icons.notifications, '', Colors.orange),
            buildListTile(Icons.favorite, '', Colors.red),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  TextButton(
                    onPressed: () {
                      // Acción para el botón de texto
                    },
                    child: Text('TextButton'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      // Acción para el botón elevado
                    },
                    child: Text('Elevated'),
                  ),
                ],
              ),
            ),
            // Agrega el Text con tu nombre y matrícula
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                "Angel Garcia Mat:22308051281193",
                style: TextStyle(
                  color: Color(0xb3050505),
                  fontSize: 20,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildListTile(IconData icon, String text, Color color) {
    return ListTile(
      leading: Container(
        alignment: Alignment.center,
        width: 40, // Ajusta el ancho según sea necesario
        child: Icon(icon, color: color),
      ),
      title: Text(text),
      horizontalTitleGap: 0,
      contentPadding: EdgeInsets.symmetric(horizontal: 16.0),
      visualDensity: VisualDensity.compact,
      minLeadingWidth: 0,
    );
  }
}
