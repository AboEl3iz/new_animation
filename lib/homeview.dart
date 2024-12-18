import 'package:concentric_transition/page_view.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:new_animation/cartview.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  final data = [
    CardData(
        title: 'Tremendous Collections',
        subtitle: 'Best platform to get your desired product between 100000+ products',
        image: Image.asset('asset/Ecommerce1.png'),
        backgroundColor: const Color(0xfffff4ee),
        titleColor: const Color(0xFFc24f78),
        subtitleColor: const Color.fromARGB(255, 0, 0, 0)),
    CardData(
        title: 'Easy Interaction',
        subtitle: 'Order your products with our application very easily',
        image: Image.asset("asset/Ecommerce2.png"),
        backgroundColor: const Color(0xFFf4e1e1),
        titleColor: const Color(0xFFc24f78),
        subtitleColor: const Color.fromARGB(255, 0, 0, 0)),
    CardData(
        title: 'Products at Home',
        subtitle: 'Get your products with our outstanding home delivery service',
        image: Image.asset("asset/Ecommerce3.png"),
        backgroundColor: const Color(0xffff878b).withOpacity(0.2),
        titleColor: const Color(0xFFc24f78),
        subtitleColor: const Color.fromARGB(255, 0, 0, 0)),
   
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ConcentricPageView(
        //reverse: true,
        // radius: 200,
        itemCount: data.length,
        colors: data.map((e) => e.backgroundColor).toList(),
        physics: const AlwaysScrollableScrollPhysics(),
        itemBuilder: (int index) {
          return CardUIView(
              data: data[index]
          );
        },
        onChange: (index){
          print(index);
        },

      ),
    );
  }

}