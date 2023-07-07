import 'package:flutter/material.dart';
// Abdallahi Salem Elemine N116
//NB Dans ce fichier il y a 3 Activites (Activite14,Activite13_interf1,Activite13_2)

//Activite14

// void main() {
//   runApp(MaterialApp(
//     home: Scaffold(
//       body: Stack(
//         fit: StackFit.expand,
//         children: <Widget>[
//           Image.asset(
//             'assets/lihsey.png',
//             fit: BoxFit.cover,
//           ),
//           Positioned(
//             left: 50,
//             right: 50,
//             bottom: 30,
//             child: Container(
//               height: 200,
//               decoration: BoxDecoration(
//                 color: Colors.lightBlue,
//                 borderRadius: BorderRadius.only(
//                   topLeft: Radius.circular(20),
//                   topRight: Radius.circular(20),
//                   bottomRight: Radius.circular(20),
//                   bottomLeft: Radius.circular(20),
//                 ),
//               ),
//               padding: EdgeInsets.all(16),
//               child: Text(
//                 'Bonjour à tous je suis Abdallahi Salem Elemine',
//                 style: TextStyle(
//                   fontSize: 24,
//                   fontWeight: FontWeight.bold,
//                   color: Colors.black,
//                 ),
//               ),
//             ),
//           ),
//         ],
//       ),
//     ),
//   ));
// }

// Activite 13_interface2

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mon application',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String selectedOption = 'Rendez-vous';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              alignment: Alignment.center,
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage('assets/images.png'),
                  ),
                  SizedBox(height: 16),
                  Text(
                    "Utilisateur de l'application",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Élément',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    buildLabel('Rendez-vous'),
                    buildLabel('Suivi'),
                    buildLabel('Notification'),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Nombre',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    buildLabel('1'),
                    buildLabel('2'),
                    buildLabel('7'),
                  ],
                ),
              ],
            ),
            SizedBox(height: 16),
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    buildRadioButton('Rendez-vous'),
                    buildRadioButton('Suivi'),
                    buildRadioButton('Notification'),
                  ],
                ),
                Spacer(),
                ElevatedButton(
                  onPressed: () {},
                  child: Text('Envoyer'),
                ),
                SizedBox(width: 8),
                ElevatedButton(
                  onPressed: () {},
                  child: Text('Annuler'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget buildLabel(String text) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 4.0),
      child: Text(text),
    );
  }

  Widget buildRadioButton(String text) {
    return Row(
      children: [
        Radio(
          value: text,
          groupValue: selectedOption,
          onChanged: (value) {
            setState(() {
              selectedOption = value.toString();
            });
          },
        ),
        Text(text),
      ],
    );
  }
}


// Activite 13_interface1


// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Mon application',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: MyHomePage(),
//     );
//   }
// }

// class MyHomePage extends StatefulWidget {
//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   String selectedOption = 'Modifier';
//   List<String> selectedDegrees = [];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Padding(
//         padding: const EdgeInsets.all(8.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             // Photo
//             Container(
//               alignment: Alignment.center,
//               child: Image.asset(
//                 'assets/profile.png',
//                 width: 150,
//                 height: 100,
//               ),
//             ),
//             SizedBox(height: 10),
//             // Boutons radio
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               children: [
//                 buildRadioButton('Ajouter'),
//                 buildRadioButton('Modifier'),
//                 buildRadioButton('Supprimer'),
//               ],
//             ),
//             SizedBox(height: 10),
//             // Champs de texte
//             Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 buildTextField('Nom'),
//                 buildTextField('Prénom'),
//                 buildTextField('Adresse'),
//               ],
//             ),
//             SizedBox(height: 12),
//             // Cases à cocher et bouton Valider
//             Row(
//               children: [
//                 Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     buildCheckbox('Baccalauriat'),
//                     buildCheckbox('BTS'),
//                     buildCheckbox('Licence'),
//                     buildCheckbox('Master'),
//                     buildCheckbox('Doctorat'),
//                   ],
//                 ),
//                 SizedBox(width: 16),
//                 ElevatedButton(
//                   onPressed: null,
//                   child: Text('Confirmer'),
//                 ),
//               ],
//             ),
//             SizedBox(height: 16),
//             // Résultat
//           ],
//         ),
//       ),
//     );
//   }

//   Widget buildRadioButton(String text) {
//     return Row(
//       children: [
//         Radio(
//           value: text,
//           groupValue: selectedOption,
//           onChanged: (value) {
//             setState(() {
//               selectedOption = value.toString();
//             });
//           },
//         ),
//         Text(text),
//       ],
//     );
//   }

//   Widget buildTextField(String label) {
//     return Padding(
//       padding: const EdgeInsets.only(bottom: 8.0),
//       child: TextFormField(
//         decoration: InputDecoration(
//           labelText: label,
//         ),
//       ),
//     );
//   }

//   Widget buildCheckbox(String text) {
//     return Row(
//       children: [
//         Checkbox(
//           value: selectedDegrees.contains(text),
//           onChanged: (value) {
//             setState(() {
//               if (value != null && value) {
//                 selectedDegrees.add(text);
//               } else {
//                 selectedDegrees.remove(text);
//               }
//             });
//           },
//         ),
//         Text(text),
//       ],
//     );
//   }
// }











