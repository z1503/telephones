import 'package:flutter/material.dart';
import 'package:telephones/page.dart';

void main() {
  runApp(const MaterialApp(
    title: 'Navigation Basics',

    home: FirstRoute(),
  ));
}

class FirstRoute extends StatelessWidget {
  const FirstRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Авторизация'),
          backgroundColor: const Color.fromARGB(255, 119, 176, 39),
          centerTitle: true,    
      ),
      body: Padding(
        padding: const EdgeInsets.all(60.0),

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          
          children: [
            const Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: TextField(
              decoration: InputDecoration(
                labelText: 'Логин',
                border: OutlineInputBorder(borderSide: BorderSide(width: 2)),
              ),
            ),
          ),

           const SizedBox(height: 20), 
          const Padding(
            padding:  EdgeInsets.symmetric(vertical: 10),
            child: TextField(
              obscureText: true, 
              decoration: InputDecoration(
                labelText: 'Пароль',
                border: OutlineInputBorder(borderSide: BorderSide(width: 2)),
              ),
            ),
          ),
          const SizedBox(height: 20), 
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const HomePage()),
                );
              },
              child: const Text('Войти',
              style: TextStyle(
              color: Color.fromARGB(255, 119, 176, 39)             
              )
              ),
            ),
            const SizedBox(height: 10),
            
          ],
        ),
      ),
    );
  }
}

  