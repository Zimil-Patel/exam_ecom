import 'package:flutter/material.dart';

import '../../../util/filter/product_data.dart';
import '../filter/FilterScreen.dart';

class ProductScreen extends StatefulWidget {
  const ProductScreen({super.key});

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

int selIndex = 0;

class _ProductScreenState extends State<ProductScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                color: const Color(0xffEBEDEE),
                padding: EdgeInsets.symmetric(horizontal: 80),
                height: 80,
                width: double.infinity,
                child: Container(
                  alignment: Alignment.center,
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 10.0),
                        child: IconButton(onPressed: (){
                          Navigator.pop(context);
                        },
                            icon: Icon(Icons.arrow_back)),
                      ),
                      Image.asset('asset/images/home/sclogo.png', fit: BoxFit.cover,),
                      const Spacer(),
                      const Text(
                        'New arrival',
                        style: TextStyle(
                          fontSize: 18, fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(width: 40,),
                      const Text(
                        'Men',
                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(width: 40,),
                      const Text(
                        'Women',
                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(width: 40,),
                      const Text(
                        'Kids',
                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      const Spacer(),

                      IconButton(
                          onPressed: (){},
                          icon: Icon(Icons.shopping_cart)),
                      SizedBox(width: 40,),
                      IconButton(
                          onPressed: (){},
                          icon: Icon(Icons.favorite_outlined)),
                      SizedBox(width: 40,),
                      IconButton(
                          onPressed: (){},
                          icon: Icon(Icons.person)),
                      SizedBox(width: 40,),
                    ],
                  ),
                ),
              ),

              Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: Container(
                        color: Colors.grey.shade300,
                        child: Column(
                          children: [
                            SizedBox(height: 50,),
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 50),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(products[selIndex]['name'], style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
                                  IconButton(onPressed: (){}, icon: Icon(Icons.favorite_outline))
                                ],
                              ),
                            ),
                            Container(
                                padding: EdgeInsets.symmetric(horizontal: 50),
                                alignment: Alignment.centerLeft,
                                child: Text('${products[selIndex]['price']}RWF', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),)),
                            Container(
                              alignment: Alignment.center,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  IconButton(onPressed: (){}, icon: Icon(Icons.arrow_back_ios_new)),
                                  ClipRRect(
                                    child: Image.asset(products[selIndex]['img'], height: 500, width: 600, fit: BoxFit.cover,)
                                  ),
                                  IconButton(onPressed: (){}, icon: Icon(Icons.arrow_forward_ios_outlined )),

                                ],
                              ),
                            ),
                            Container(
                              alignment: Alignment.center,
                              height: 200,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    margin: EdgeInsets.all(12),
                                    height: 80,
                                    width: 80,
                                    decoration: const BoxDecoration(
                                        color: Colors.white
                                    ),
                                    child: ClipRRect(
                                      child: Image.asset(products[selIndex]['img']),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.all(12),
                                    height: 80,
                                    width: 80,
                                    decoration: const BoxDecoration(
                                        color: Colors.white
                                    ),
                                    child: ClipRRect(
                                      child: Image.asset(products[selIndex]['img']),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.all(12),
                                    height: 80,
                                    width: 80,
                                    decoration: const BoxDecoration(
                                        color: Colors.white
                                    ),
                                    child: ClipRRect(
                                      child: Image.asset(products[selIndex]['img']),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.all(12),
                                    height: 80,
                                    width: 80,
                                    decoration: const BoxDecoration(
                                        color: Colors.white
                                    ),
                                    child: ClipRRect(
                                      child: Image.asset(products[selIndex]['img']),
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        )
                    ),
                  ),
                  Expanded(
                      flex: 1,
                      child: Container(
                          child: Column()
                      ))
                ],
              )


            ],
          )
      ),

    );
  }

}

