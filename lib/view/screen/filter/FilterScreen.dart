import 'package:exam_ecom/util/filter/product_data.dart';
import 'package:exam_ecom/view/screen/product/product_screen.dart';
import 'package:flutter/material.dart';

import '../../../util/home_product_list/homeShoeList.dart';
import '../cart/cart_screen.dart';

class FilterScreen extends StatefulWidget {
  const FilterScreen({super.key});

  @override
  State<FilterScreen> createState() => _FilterScreenState();
}

String selBrand = 'All';
RangeValues range = RangeValues(100, 80000);

class _FilterScreenState extends State<FilterScreen> {
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
                          decoration: TextDecoration.underline,
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

              Container(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 50.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 20.0),
                            child: Text('Brands' , style: TextStyle(fontSize: 20, color: Colors.black, fontWeight: FontWeight.bold),),
                          ),
                          SizedBox(height: 30,),
                          ...List.generate(brands.length, (index) => brandsList(index)),

                          Container(
                            margin: EdgeInsets.symmetric(vertical: 20),
                            alignment: Alignment.centerLeft,
                            child:
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  margin: EdgeInsets.symmetric(vertical: 10),
                                  height: 1,
                                  width: 200,
                                  color: Colors.grey,
                                ),
                                Text('Price', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),),
                                RangeSlider(
                                  min: 0,
                                  max: 80000,
                                  divisions: 100,
                                  values: range,
                                  activeColor: Colors.black,
                                  labels: RangeLabels(range.start.toString(), range.end.toString()),
                                  onChanged: (values) {
                                    setState(() {
                                      range = values;
                                    });
                                  },
                                ),

                                Row(
                                  children: [
                                    Text('${range.start.toString()}RWF'),
                                    SizedBox(width: 30,),
                                    Text('${range.end.toString()}RWF'),
                                  ],
                                ),

                                Container(
                                  margin: EdgeInsets.symmetric(vertical: 10),
                                  height: 1,
                                  width: 200,
                                  color: Colors.grey,
                                ),

                                Text('Size', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),),

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


                              ],
                            ),
                          )
                        ],
                      ),
                    ),



                    SingleChildScrollView(
                      child: Column(
                        children: [
                          ...List.generate(
                              products.length,
                                  (index) =>
                              (selBrand == 'All') ?
                              (products[index]['price'] >= range.start &&
                                  products[index]['price'] <= range.end)
                                  ? addBox(index) : Container()
                                  : products[index]['brand'] == selBrand
                                  ? (products[index]['price'] >= range.start &&
                                  products[index]['price'] <= range.end)
                                  ? addBox(index) : Container() : Container()
                          )
                        ],
                      ),
                    )
                  ],
                ),
              )

            ],
          )
      ),

    );
  }
  
  
  Widget brandsList(int index){
    return  GestureDetector(
      onTap: (){
        selBrand = brands[index];
        setState(() {

        });
      },
      child: Container(
        child: Row(
          children: [
            Icon(Icons.check_box_outline_blank_rounded),
            SizedBox(width: 20,),
            Text(brands[index])
          ],
        ),
      ),
    );
  }

  Widget addBox(int index){
    return GestureDetector(
      onTap: (){
        selIndex = index;
        Navigator.pushNamed(context, '/product');
      },
      child: Container(
        height: 250,
        width: 500,
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Colors.grey),
          borderRadius: BorderRadiusDirectional.circular(25),
        ),
        margin: const EdgeInsets.all(16),
        child: Row(
          children: [


            Container(
              height: 200,
              width: 200,
              margin: EdgeInsets.only(left: 10),
              decoration: BoxDecoration(color: Colors.grey.withOpacity(0.2)),
              child: ClipRRect(
                child: Image.asset(products[index]['img']),
              ),
            ),


            const SizedBox(width: 50,),


            Container(
              alignment: Alignment.center,
              height: 80,
              width: 200,
              decoration: BoxDecoration(color: Colors.white),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(products[index]['name'], style: TextStyle(fontWeight: FontWeight.bold),),
                  Text('${products[index]['price']}RWF')
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}
