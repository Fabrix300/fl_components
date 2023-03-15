import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AlertScreen extends StatelessWidget {
  const AlertScreen({super.key});

  void displayDialogIos(BuildContext context){
    showCupertinoDialog(
      barrierDismissible: true,
      context: context, 
      builder: (context) => CupertinoAlertDialog(
        title: const Text('título'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: const[
            Text('Este es el contenido de la alerta')
          ],
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context), 
            child: const Text('Cancelar'),
          ),
        ],
      ),
    );
  }

  void displayDialogAndroid(BuildContext context) {
    showDialog(
      barrierDismissible: true,
      context: context, 
      builder: (context) {
        return AlertDialog(
          elevation: 5,
          title: const Text('título'),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: const[
              Text('Este es el contenido de la alerta')
            ],
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context), 
              child: const Text('Cancelar'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          // style: ElevatedButton.styleFrom(
          //   backgroundColor: Colors.red,
          //   shape: const StadiumBorder(),
          //   elevation: 0,
          // ),
          onPressed: () => displayDialogAndroid(context),
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
            child: Text(
              'Mostrar alerta', 
              style: TextStyle(
                fontSize: 18
              ),
            ),
          ), 
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(
          Icons.close
        ),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
    );
  }
}