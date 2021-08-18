import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({ Key? key , this.img}) : super(key: key);
  final String? img;
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Container(
          margin: EdgeInsets.all(10.0),
          height: screenHeight * 0.2,
          width: screenWidth * 0.3 + 20,
           alignment: Alignment.topRight,
            decoration: BoxDecoration(
            color: Color(0xff323232),
            borderRadius: BorderRadius.circular(10.0),
            image: DecorationImage(
              image: AssetImage(img!),
            ),

          ),
          child: IconButton(
            onPressed: (){},
            icon: Icon(
              Icons.favorite,
              color: Colors.white,
            ),
          ),
        ),
      ],

    );
  }
}

// class ProductCard extends StatefulWidget {
//   const ProductCard({
//     Key? key,
//   }) : super(key: key);

//   @override
//   _ProductCardState createState() => _ProductCardState();
// }

// class _ProductCardState extends State<ProductCard> {
//   bool active = false;

//   @override
//   Widget build(BuildContext context) {
//    late final String img;
//     final screenHeight = MediaQuery.of(context).size.height;
//     final screenWidth = MediaQuery.of(context).size.width;
//     return Column(
//       children: [
//         Container(
//           margin: EdgeInsets.all(10.0),
//           height: screenHeight * 0.2,
//           width: screenWidth * 0.3 + 20,
//           alignment: Alignment.topRight,
//           decoration: BoxDecoration(
//             color: Color(0xff323232),
//             borderRadius: BorderRadius.circular(10.0),
//             image: DecorationImage(
//               image: AssetImage(""),
//             ),
//           ),
//           child: IconButton(
//             onPressed: () {
//               setState(() {
//                 active = !active;
//               });
//             },
//             icon: Icon(
//               Icons.favorite,
//               color: active ? Color(0xfffa6d20) : Colors.white,
//             ),
//           ),
//         ),
//       ],
//     );
//   }
// }
