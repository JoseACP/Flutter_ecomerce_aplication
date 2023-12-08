import 'package:flutter/material.dart';


class CircleDisplay2 extends StatelessWidget{
  const CircleDisplay2({super.key});
  @override
  Widget build(BuildContext context){
      return  Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 370,
                      height: 300,
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          InkWell(
                            onTap: () {
                               Navigator.pushNamed(context, '/Frutas');
                            },
                            child:Container(
                            width: 300,
                            height: 300,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color.fromARGB(255, 241, 206, 91),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Dried frut',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 30,
                                    color: Color.fromARGB(255, 245, 244, 244),
                                  ),
                                ),
                                SizedBox(height: 20),
                                Text(
                                  '\$19.99',
                                  style: TextStyle(
                                    fontSize: 22,
                                    color: const Color.fromARGB(255, 245, 244, 244),
                                  ),
                                ),
                                SizedBox(height: 20),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    for (int i = 0; i < 5; i++)
                                      Icon(
                                        Icons.star,
                                        color: Color.fromARGB(255, 245, 244, 244),
                                        size: 20,
                                      ),
                                  ],
                                ),
                                SizedBox(height: 20),
                                Container(
                                  width: 150,
                                  height: 50,
                                  child: ElevatedButton.icon(
                                    onPressed: () {
                                      Navigator.pushNamed(context, '/Frutas');
                                    },
                                    style: ElevatedButton.styleFrom(
                                      primary: Colors.white,
                                      onPrimary: Colors.black,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(25),
                                      ),
                                    ),
                                    icon: Icon(
                                      Icons.shopping_cart,
                                      color: Colors.black,
                                    ),
                                   label: Center(
                                    child: Text(
                                      'Add to Cart',
                                      textAlign: TextAlign.center,
                                    ),
                                  ),

                                  ),
                                ),
                              ],
                            ),
                          ),
                          ),
                          Positioned(
                            left: -60, // Ajusta la posición de la imagen según tus necesidades
                            child: Image.asset(
                              'assets/example.png', // Ruta correcta de tu imagen en assets
                              width: 220, // Ajusta el tamaño de la imagen según tus necesidades
                              height: 220, // Ajusta el tamaño de la imagen según tus necesidades
                              fit: BoxFit.contain
                            
                            ),
                          ),

                          Positioned(
                            right: 10, // Ajusta la posición de la imagen según tus necesidades
                            child: Image.asset(
                              'assets/heart.png', // Ruta correcta de tu imagen en assets
                              width: 50, // Ajusta el tamaño de la imagen según tus necesidades
                              height: 50, // Ajusta el tamaño de la imagen según tus necesidades
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              );
  }
}


