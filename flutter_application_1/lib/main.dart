import 'package:flutter/material.dart';
import 'widgets/user_card.dart';
import 'widgets/book_card.dart';
import 'widgets/tab_navigation_row.dart';
import 'widgets/banner_card.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color(0xFFFFBDE1), 
        appBar: AppBar(
          backgroundColor: const Color(0xFFFF2B6D), 
          elevation: 0,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back, color: Colors.black),
            onPressed: () {},
          ),
          title: const Text(
            "feisbuk",
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
          actions: [
            IconButton(
              icon: const Icon(Icons.info_outline, color: Colors.black),
              onPressed: () {},
            ),
          ],
        ),
        body: ListView(
          padding: const EdgeInsets.only(bottom: 24.0),
          children: const [

            UserCard(
              name: "Wendy Daniela",
              subtitle: "7 amigos en común",
              imageUrl: "https://i.pinimg.com/736x/68/83/13/688313bc0df340082e6b96fc336a8249.jpg", 
            ),

            BookCard(
              title: "Decoración para cuarto",
              author: "Maria Rojas",
              description:
                  "Quería enseñarles cómo arreglé mi habitación, alguna recomendación?",
              imageUrl: "https://i.pinimg.com/736x/ed/e3/e6/ede3e6ee169c70a7541f66eceaee5688.jpg",  
            ),

            BookCard(
              title: "rigging y animación (trauma)",
              author: "Daniel Pereza",
              description:
                  "1000 noches sin dormir, deberían pagarme por esto",
              imageUrl: "https://i.pinimg.com/1200x/d5/af/e5/d5afe5e0e6ec31042a3edc5a4a473cfa.jpg", 
            ),

            BookCard(
              title: "Como te amo música en la madrugada",
              author: "Julian Triana",
              description:
                  "Que hermosa es la música, hagamos una playlist juntos :0",
              imageUrl: "https://i.pinimg.com/736x/43/02/b8/4302b8a6bcdd2dfc26fea193ec186e61.jpg", 
            ),

            TabNavigationRow(),

            BannerCard(
              text:
                  "Explora y conoce nuevas personas en esta app, ¡te sorprenderás!",
            ),

            UserCard(
              name: "Brayan Jose",
              subtitle: "2 amigos en común",
              imageUrl: "https://i.pinimg.com/736x/e5/6b/a3/e56ba3860be0e92aa08f597f079e280d.jpg", 
            ),

            UserCard(
              name: "Julieta Silva",
              subtitle: "19 amigos en común",
              imageUrl: "https://i.pinimg.com/736x/24/2d/bb/242dbbe14b59e352e2087d5b27fafdda.jpg", 
            ),
          ],
        ),
      ),
    );
  }
}