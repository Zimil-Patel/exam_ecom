import 'dart:html';

import 'package:exam_ecom/util/cart/cart_list.dart';
import 'package:exam_ecom/view/screen/cart/cart_screen.dart';
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
                          Navigator.popAndPushNamed(context, '/home');
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
                          onPressed: (){

                            totalAmt = getTotal();
                            setState(() {
                              Navigator.pushNamed(context, '/cart');
                            });

                          },
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
                crossAxisAlignment: CrossAxisAlignment.start,
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
                      child: Padding(
                        padding: const EdgeInsets.only(left: 80.0, right: 80),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [

                            const Padding(
                              padding: EdgeInsets.symmetric(vertical: 40.0),
                              child: Row(
                                children: [
                                  Text('Description', style: TextStyle(fontWeight: FontWeight.w600),),
                                  Spacer(),
                                  Icon(Icons.keyboard_arrow_up)
                                ],
                              ),
                            ),
                            const Text('The Jordan Delta 2 offers a fresh, fearless take on\nthe features you want: durability, comfort and an\nattitude that\'s Jordan to the core. We updated\ndesign lines and swapped out some components.\nThe 2 still has that clashing combination of supportive and\nspace age-like materials, with lots of different textures and heavy stitching to create a look that\'s both adventurous and iconic.'),

                            Container(
                              height: 1,
                              color: Colors.grey,
                              width: double.infinity,
                              margin: EdgeInsets.symmetric(vertical: 28),

                            ),

                            const Padding(
                              padding: EdgeInsets.symmetric(vertical: 20.0),
                              child: Row(
                                children: [
                                  Text('Select size', style: TextStyle(fontWeight: FontWeight.w600),),
                                ],
                              ),
                            ),


                            Row(
                              children: [
                                Container(
                                  alignment: Alignment.center,
                                  height: 40,
                                  width: 40,
                                  margin: EdgeInsets.all(5),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadiusDirectional.circular(8),
                                      border: Border.all(color: Colors.grey),
                                      color: Colors.white
                                  ),
                                  child: Text('35'),
                                ),
                                Container(
                                  alignment: Alignment.center,
                                  height: 40,
                                  width: 40,
                                  margin: EdgeInsets.all(5),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadiusDirectional.circular(8),
                                      border: Border.all(color: Colors.grey),
                                      color: Colors.white
                                  ),
                                  child: Text('35'),
                                ),
                                Container(
                                  alignment: Alignment.center,
                                  height: 40,
                                  width: 40,
                                  margin: EdgeInsets.all(5),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadiusDirectional.circular(8),
                                      border: Border.all(color: Colors.grey),
                                      color: Colors.white
                                  ),
                                  child: Text('35'),
                                ),
                                Container(
                                  alignment: Alignment.center,
                                  height: 40,
                                  width: 40,
                                  margin: EdgeInsets.all(5),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadiusDirectional.circular(8),
                                      border: Border.all(color: Colors.grey),
                                      color: Colors.white
                                  ),
                                  child: Text('35'),
                                ),
                                Container(
                                  alignment: Alignment.center,
                                  height: 40,
                                  width: 40,
                                  margin: EdgeInsets.all(5),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadiusDirectional.circular(8),
                                      border: Border.all(color: Colors.grey),
                                      color: Colors.white
                                  ),
                                  child: Text('35'),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Container(
                                  alignment: Alignment.center,
                                  height: 40,
                                  width: 40,
                                  margin: EdgeInsets.all(5),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadiusDirectional.circular(8),
                                      border: Border.all(color: Colors.grey),
                                      color: Colors.white
                                  ),
                                  child: Text('35'),
                                ),
                                Container(
                                  alignment: Alignment.center,
                                  height: 40,
                                  width: 40,
                                  margin: EdgeInsets.all(5),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadiusDirectional.circular(8),
                                      border: Border.all(color: Colors.grey),
                                      color: Colors.white
                                  ),
                                  child: Text('35'),
                                ),
                                Container(
                                  alignment: Alignment.center,
                                  height: 40,
                                  width: 40,
                                  margin: EdgeInsets.all(5),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadiusDirectional.circular(8),
                                      border: Border.all(color: Colors.grey),
                                      color: Colors.white
                                  ),
                                  child: Text('35'),
                                ),
                                Container(
                                  alignment: Alignment.center,
                                  height: 40,
                                  width: 40,
                                  margin: EdgeInsets.all(5),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadiusDirectional.circular(8),
                                      border: Border.all(color: Colors.grey),
                                      color: Colors.white
                                  ),
                                  child: Text('35'),
                                ),
                                Container(
                                  alignment: Alignment.center,
                                  height: 40,
                                  width: 40,
                                  margin: EdgeInsets.all(5),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadiusDirectional.circular(8),
                                      border: Border.all(color: Colors.grey),
                                      color: Colors.white
                                  ),
                                  child: Text('35'),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Container(
                                  alignment: Alignment.center,
                                  height: 40,
                                  width: 40,
                                  margin: EdgeInsets.all(5),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadiusDirectional.circular(8),
                                      border: Border.all(color: Colors.grey),
                                      color: Colors.white
                                  ),
                                  child: Text('35'),
                                ),
                                Container(
                                  alignment: Alignment.center,
                                  height: 40,
                                  width: 40,
                                  margin: EdgeInsets.all(5),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadiusDirectional.circular(8),
                                      border: Border.all(color: Colors.grey),
                                      color: Colors.white
                                  ),
                                  child: Text('35'),
                                ),
                                Container(
                                  alignment: Alignment.center,
                                  height: 40,
                                  width: 40,
                                  margin: EdgeInsets.all(5),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadiusDirectional.circular(8),
                                      border: Border.all(color: Colors.grey),
                                      color: Colors.white
                                  ),
                                  child: Text('35'),
                                ),
                                Container(
                                  alignment: Alignment.center,
                                  height: 40,
                                  width: 40,
                                  margin: EdgeInsets.all(5),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadiusDirectional.circular(8),
                                      border: Border.all(color: Colors.grey),
                                      color: Colors.white
                                  ),
                                  child: Text('35'),
                                ),
                                Container(
                                  alignment: Alignment.center,
                                  height: 40,
                                  width: 40,
                                  margin: EdgeInsets.all(5),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadiusDirectional.circular(8),
                                      border: Border.all(color: Colors.grey),
                                      color: Colors.white
                                  ),
                                  child: Text('35'),
                                ),
                              ],
                            ),


                            Padding(
                              padding: const EdgeInsets.only(top: 100.0),
                              child: Row(
                                children: [
                                  IconButton(
                                      onPressed: (){

                                        setState(() {
                                          if(products[selIndex]['quantity'] > 1) products[selIndex]['quantity']--;
                                        });

                                      },
                                      icon: const Icon(Icons.remove)),

                                  Container(
                                    alignment: Alignment.center,
                                    height: 40,
                                    width: 40,
                                    margin: EdgeInsets.all(5),
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadiusDirectional.circular(8),
                                        border: Border.all(color: Colors.grey),
                                        color: Colors.white
                                    ),
                                    child: Text('${products[selIndex]['quantity']}'),
                                  ),


                                  IconButton(
                                      onPressed: (){
                                        setState(() {
                                          products[selIndex]['quantity']++;
                                        });
                                      },
                                      icon: const Icon(Icons.add)),

                                  Container(
                                    height: 50,
                                    width: 120,
                                    alignment: Alignment.center,
                                    margin: const EdgeInsets.only(left: 50),
                                    decoration: const BoxDecoration(
                                        color: Color(0xffD90429)
                                    ),
                                    child: InkWell(
                                      onTap: (){
                                        if(products[selIndex]['inCart'] == false){
                                          if(products[selIndex]['quantity'] == 0)  products[selIndex]['quantity'] = 1;
                                          products[selIndex]['inCart'] = true;
                                          cartList.add(products[selIndex]);
                                        }

                                        setState(() {

                                        });

                                      },
                                        child:  products[selIndex]['inCart'] ? Text('Added!', style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500),): Text('Add to cart', style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500),)
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],

                        ),
                      ))
                ],
              )


            ],
          )
      ),

    );
  }

}

