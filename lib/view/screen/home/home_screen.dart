import 'package:exam_ecom/util/home_product_list/homeShoeList.dart';
import 'package:flutter/material.dart';

import '../cart/cart_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [

            //top bar
            Container(
              color: const Color(0xffEBEDEE),
              padding: EdgeInsets.symmetric(horizontal: 80),
              height: 80,
              width: double.infinity,
              child: Container(
                alignment: Alignment.center,
                child: Row(
                  children: [
                    Image.asset('asset/images/home/sclogo.png', fit: BoxFit.cover,),
                    const Spacer(),
                    GestureDetector(
                      onTap: (){
                        Navigator.pushNamed(context, '/filter');
                      },
                      child: const Text(
                        'New arrival',
                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
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


            //feature bar
            Container(
              height: 400,
              width: double.infinity,
              color: const Color(0xffEBEDEE),
              child: Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 100, top: 50),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text('Puma', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40, color: Colors.black),),
                          const Text('Running SX', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40, color: Colors.black),),
                          const SizedBox(height: 20,),
                          const Text('The shoe that moved mountains for eternity and still does so\nwith a swift touch of modernism', style: TextStyle( color: Colors.black),),
                          const Text('62, 000RWF', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 23, color: Colors.black),),
                          const Spacer(),
                          Container(
                            height: 50,
                            width: 120,
                            margin: EdgeInsets.only(bottom: 60),
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              color: Color(0xffbacD90429)
                            ),
                            child: Text('Add to cart', style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500),),
                          )
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 100),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Expanded(
                          child: Container(
                            margin: const EdgeInsets.only(right: 150),
                            child: ClipRRect(
                              child: Image.asset('asset/images/home/rc4.png'),
                            ),
                          ),
                        ),
                        Row(
                          children: [
                            Container(
                              margin: EdgeInsets.all(12),
                              height: 80,
                              width: 80,
                              decoration: const BoxDecoration(
                                color: Colors.white
                              ),
                              child: ClipRRect(
                                child: Image.asset('asset/images/home/rc6.png'),
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
                                child: Image.asset('asset/images/home/rc7.png'),
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
                                child: Image.asset('asset/images/home/rc8.png'),
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
                                child: Image.asset('asset/images/home/rc9.png'),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),

            Container(
              margin: EdgeInsets.only(top: 60),
              padding: EdgeInsets.only(left: 20),
              alignment: Alignment.centerLeft,
              child: Text('All the new arrivals', style: TextStyle(fontWeight: FontWeight.bold),),
            ),

            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  ...List.generate(homeShoe.length, (index) => addBox(index))
                ],
              ),
            ),

            Container(
              padding: const EdgeInsets.only(right: 50),
              alignment: Alignment.centerRight,
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text('View all new arrivals', style: TextStyle(fontWeight: FontWeight.bold),),
                  SizedBox(width: 20,),
                  Icon(Icons.arrow_forward)
                ],
              ),
            ),

            Container(
              height: 100,
              width: 380,
              color: Colors.white,
              alignment: Alignment.center,
              child: Stack(
                children: [
                  const Align(
                    alignment: Alignment.center,
                    child: Column(
                      children: [
                        Text('Good sneakers' , style: TextStyle(fontWeight: FontWeight.bold, fontSize: 26),),
                        Text('take you good places', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 26)),
                        Text('look no further, this is where you find the best pair!'),
                      ],
                    ),
                  ),
                  
                  Align(
                    alignment: Alignment.topLeft,
                      child: Image.asset('asset/images/home/foot.png'))
                ],
              ),
            ),

            Container(
              height: 400,
              width: double.infinity,
              alignment: Alignment.center,
              margin: const EdgeInsets.symmetric(vertical: 30, horizontal: 200),
              color: Colors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Image.asset('asset/images/home/Group 26.png')
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Image.asset('asset/images/home/original 1.png')
                    ],

                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Image.asset('asset/images/home/stream.png')
                    ],
                  ),
                ],
              ),
            ),

            const Padding(
              padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 60),
              child: Divider(
                color: Colors.grey,
              ),
            ),

            Container(
              alignment: Alignment.centerLeft,
              padding: const EdgeInsets.only(left: 80, bottom: 50, right: 80),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset('asset/images/home/sclogo.png', fit: BoxFit.cover,),
                  SizedBox(height: 16,),
                  Text('We don’t just sell shoes, we sell memories and collectibles. We collect the best in the best\nwith an attention to all little details. we know that shoes speaks\nlouder than words that’s why we’ve mastered the science of good sneakers.'),
                  SizedBox(height: 26,),
                  Row(
                    children: [
                      const Text('Don’t missout on once-in-a-while-deals:'),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 8),
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadiusDirectional.circular(8)
                        ),
                        child: const Icon(Icons.whatshot, size: 25, color: Colors.red,),
                      ),
                      Container(
                        height: 30,
                        width: 30,
                        margin: EdgeInsets.symmetric(horizontal: 8),
                        decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadiusDirectional.circular(8)
                        ),
                        child: const Icon(Icons.call, size: 25, color: Colors.red,),
                      ),
                      Container(
                        height: 30,
                        width: 30,
                        margin: EdgeInsets.symmetric(horizontal: 8),
                        decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadiusDirectional.circular(8)
                        ),
                        child: const Icon(Icons.face, size: 25, color: Colors.red,),
                      ),
                      Spacer(),
                      const Text('Support line: +250 788 467 808'),
                      Spacer(),
                      const Text('Copyright  2021 © Sneaker City ltd'),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }


  //home screen product box
  Widget addBox(int index){
    return Container(
      height: 280,
      width: 200,
      margin: const EdgeInsets.all(16),
      child: Column(
        children: [
          Container(
            height: 200,
            width: 200,
            decoration: BoxDecoration(color: Colors.grey.withOpacity(0.2)),
            child: ClipRRect(
              child: Image.asset(homeShoe[index]['img']),
            ),
          ),
          Container(
            alignment: Alignment.centerLeft,
            height: 80,
            width: 200,
            decoration: BoxDecoration(color: Colors.white),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(homeShoe[index]['name'], style: TextStyle(fontWeight: FontWeight.bold),),
                Text('35, 000RWF')
              ],
            ),
          ),
        ],
      ),
    );
  }
}
