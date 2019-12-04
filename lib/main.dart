import 'package:flutter/material.dart';

void main() => runApp(Task());


class Task extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return Estado();
  }
}

class Estado extends State{
  double costo = 10, costoH = 40, costoTotal = 0, horaI = 0, horaF = 0, horasT = 0, minI = 0, minF = 0, minT = 0;
  @override
  // TODO: implement widget
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
      appBar: AppBar(
        title: Text('Estacionamiento'),
      ),
      body:
      Padding (
        padding: const EdgeInsets.all(40.0),
          child: Column(
            children: <Widget>[
          TextField(
            decoration: InputDecoration(
              icon: Icon(Icons.monetization_on),
              labelText: 'Costo 1ra Hora',
              helperText: 'Este precio no incluye iva',
              border: OutlineInputBorder (
                borderRadius: BorderRadius.circular(20),
              )
            ),
            onChanged: (change) {
              setState(() {
              costoH = double.parse(change);
             });
            },
          ),
           TextField(
            decoration: InputDecoration(
              icon: Icon(Icons.monetization_on),
              labelText: 'Costo por fraccion',
              helperText: 'Este precio no incluye iva',

              border: OutlineInputBorder (
                borderRadius: BorderRadius.circular(20),
              )
            ),
            onChanged: (change) {
              setState(() {
              costo = double.parse(change);
             });
            },
          ),
           TextField(
            decoration: InputDecoration(
              icon: Icon(Icons.alarm_on),
              labelText: 'Hora de inicio',
              helperText: 'Indica las puras horas ',

              border: OutlineInputBorder (
                borderRadius: BorderRadius.circular(5),
              )
            ),
            onChanged: (change) {
              setState(() {
              horaI = double.parse(change);
             });
            },
          ),
           TextField(
            decoration: InputDecoration(
              icon: Icon(Icons.alarm_on),
              labelText: 'Y minutos',
              helperText: 'Indica los minutos',

              border: OutlineInputBorder (
                borderRadius: BorderRadius.circular(5),
              )
            ),
            onChanged: (change) {
              setState(() {
              horaI = double.parse(change);
             });
            },
          ),
           TextField(
            decoration: InputDecoration(
              icon: Icon(Icons.alarm_off),
              labelText: 'Hora de ida',
              helperText: 'Este precio no incluye iva',

              border: OutlineInputBorder (
                borderRadius: BorderRadius.circular(5),
              )
            ),
            onChanged: (change) {
              setState(() {
              horaF = double.parse(change);
             });
            },
          ),
        ],
        )
    ),
    ),
    );
  }
}