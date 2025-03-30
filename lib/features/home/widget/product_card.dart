import 'package:app/app/app_image_path.dart';
import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
                elevation: 5,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                color: Colors.white,

                child: SizedBox(
                 
                  width: 144,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      // Blue container with an image
                     
                      Container(
                        height: 115,
                        width: 199.3,
                        decoration: BoxDecoration(
                          color: Colors.blue, // Blue background
                          borderRadius:BorderRadius.circular(7),
                          image: DecorationImage(
                            image: AssetImage(
                              AppImagePath.mac,
                            ), // Replace with your image
                           
                          ),
                        ),
                      ),
                      Column(
                        children: [
                          SizedBox(height: 5,),
                          Text(
                            'Product Name',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 3),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text(
                                '100\$',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                          Row(
                            children: [
                              Icon(Icons.star, color: Colors.yellow, size: 16),
                              Text(
                                ' 3.5',
                                style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          Icon(Icons.favorite, color: Colors.red, size: 18),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              );
  }
}