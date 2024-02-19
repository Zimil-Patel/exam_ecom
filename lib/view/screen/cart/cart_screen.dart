import 'package:exam_ecom/util/cart/cart_list.dart';
import 'package:exam_ecom/util/filter/product_data.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

double totalAmt = 0;
late double width;

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {

    width = MediaQuery.of(context).size.width;

    return Scaffold(


      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            color: const Color(0xffEBEDEE),
            padding: EdgeInsets.symmetric(horizontal: 80),
            height: 80,
            width: double.infinity,
            child: Container(
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

          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text('Your shopping cart', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),),
          ),

          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SingleChildScrollView(
                  child: Expanded(
                    child: Container(
                      alignment: Alignment.topLeft,
                      width: width / 1.4,
                      child: Column(
                        children: [

                          ...List.generate(cartList.length, (index) => addBox(index))
                        ],
                      ),
                    ),
                  ),
                ),
            
            
                Expanded(
                  child: Column(
                    children: [
                      Text('Order summary', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),),
                      SizedBox(height: 50,),


                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Sub total', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),),
                            Text('${totalAmt}RWF', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),),
                          ],
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Delivery fee', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),),
                            Text('0RWF', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),),
                          ],
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 20),
                        child: Container(
                          height: 1,
                          color: Colors.grey,
                        )
                      ),

                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text('${totalAmt}RWF', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),),
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget addBox(int index){
    return Container(
      height: 120,
      margin: const EdgeInsets.all(16),
      padding: EdgeInsets.symmetric(horizontal: 30),
      decoration: BoxDecoration(color: Colors.grey.withOpacity(0.2)),
      child: Row(
        children: [


          Container(
            height: 160,
            width: 160,
            margin: const EdgeInsets.only(left: 10),
            child: ClipRRect(
              child: Image.asset(cartList[index]['img']),
            ),
          ),



          Container(
            alignment: Alignment.center,
            height: 80,
            width: 200,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(cartList[index]['name'], style: TextStyle(fontWeight: FontWeight.bold),),
                Text('${cartList[index]['price']}RWF')
              ],
            ),
          ),


          Row(
            children: [
              IconButton(
                  onPressed: (){

                    setState(() {
                      if(cartList[index]['quantity'] > 1){
                        cartList[index]['quantity']--;
                      }
                      totalAmt = getTotal();
                    });

                    for (int i = 0;
                    i < products.length;
                    i++) {
                      if (cartList[index]['id'] ==
                          products[i]['id']) {
                        products[i]['quantity'] =
                        cartList[index]['quantity'];
                      }
                    }

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
                child: Text('${cartList[index]['quantity']}'),
              ),


              IconButton(
                  onPressed: (){
                    setState(() {
                      cartList[index]['quantity']++;

                      totalAmt = getTotal();
                    });

                    for (int i = 0;
                    i < products.length;
                    i++) {
                      if (cartList[index]['id'] ==
                          products[i]['id']) {
                        products[i]['quantity'] =
                        cartList[index]['quantity'];
                      }
                    }
                  },
                  icon: const Icon(Icons.add)),

              Container(
                width: 250,
                padding: EdgeInsets.all(40),
                  child: Text('${cartList[index]['price'] * cartList[index]['quantity']}', style: TextStyle(fontWeight: FontWeight.bold),),),


              InkWell(
                onTap: (){
                  setState(() {
                    for (int i = 0; i < products.length; i++) {
                      if (cartList[index]['id'] ==
                          products[i]['id']) {
                        products[i]['inCart'] = false;
                        products[i]['quantity'] = 0;
                      }
                    }
                    setState(() {
                      cartList.removeAt(index);
                      totalAmt = getTotal();
                    });

                  });
                },
                child: Container(
                  height: 50,
                  width: 120,
                  alignment: Alignment.center,
                  decoration: const BoxDecoration(
                      color: Color(0xffD90429)
                  ),
                  child: Text('Remove', style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500),),
                ),
              )
            ],
          ),

        ],
      ),
    );
  }



}

double getTotal(){

  double totalAmt = 0;

  for(int i = 0; i < cartList.length; i++){

    totalAmt += (cartList[i]['price'] * cartList[i]['quantity']);

  }

  return totalAmt;

}
