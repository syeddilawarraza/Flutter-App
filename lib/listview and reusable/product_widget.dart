import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProductWidget extends StatelessWidget {
  const ProductWidget({
    super.key,
    required this.productName,
    required this.productImage,
    required this.productCate,
    required this.productPrice,
    required this.productAvail
  });

  final String productName;
  final String productImage;
  final String productCate;
  final String productPrice;
  final String productAvail;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 120,
      margin: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(14),
          color: Colors.grey.shade300
      ),
      child: Row(

        children: [
          // Image Container
          Container(
            width: 80,
            height: 100,
            margin: EdgeInsets.symmetric(horizontal: 8),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(14),
                color: Colors.green,
                image: DecorationImage(image: NetworkImage(productImage),
                    fit: BoxFit.cover
                )
            ),
          ),

          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(productName,style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600,),),
              Text(productCate,style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),),
              Text("\$$productPrice",style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),),
              Text("$productAvail",style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400,
              color: productAvail == "Sold" ? Colors.red : Colors.green
              ),),
            ],
          )
        ],
      ),
    );
  }
}

class ProductGridContainer extends StatelessWidget {
  const ProductGridContainer({
    super.key,
    required this.productImage,
    required this.productName,
    required this.productPrice,
  });

  final String productImage;
  final String productName;
  final String productPrice;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 160,
      height: 220,
      alignment: Alignment.bottomLeft,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(14),
          color: Colors.grey,
          image: DecorationImage(
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.3), BlendMode.darken),
              image: NetworkImage(productImage))
      ),
      child: Container(
        margin: EdgeInsets.only(left: 8,bottom: 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(productName, style: TextStyle(fontWeight: FontWeight.w600,fontSize: 14, color: Colors.white),),
            Text("\$$productPrice", style: TextStyle(fontWeight: FontWeight.w800,fontSize: 12, color: Colors.white),),
          ],
        ),
      ),
    );
  }
}

