import 'package:ecommerce/presentation/ui/widgets/home/customStepper.dart';
import 'package:ecommerce/presentation/ui/widgets/home/productImageSlider.dart';
import 'package:flutter/material.dart';
import '../utility/colorManager.dart';

class ProductDetailsScreen extends StatefulWidget {
  const ProductDetailsScreen({super.key});

  @override
  State<ProductDetailsScreen> createState() => _ProductDetailsScreenState();
}

class _ProductDetailsScreenState extends State<ProductDetailsScreen> {

  List<Color>colors = [
    Colors.deepOrange,
    Colors.amber,
    Colors.pink,
    Colors.blue,
    Colors.black
  ];
  List<String>sizes = [
    "S",
    "M",
    "XL",
    "2XL",
    "3XL"
  ];
  int selectedColorIndex = 0;
  int selectedSizeIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            /// header portion
            Stack(
              children: [
                const ProductImageSlider(),
                AppBar(
                  title: const Text("Product Details",style: TextStyle(color: Colors.black54)),
                  leading: const BackButton(color: Colors.black54),
                  backgroundColor: Colors.transparent,
                  elevation: 0,
                )
              ],
            ),
            /// body portion
            Expanded(
                child: SingleChildScrollView(
                  child: Padding(
                    padding:const EdgeInsets.all(16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            const Expanded(child: Text("Adidas Shoe HK23454 - Black Edition")),
                            CustomStepper(
                                lowerLimit: 1,
                                upperLimit: 10,
                                stepValue: 1,
                                value: 1,
                                onChange:(newValue){
                                  print(newValue);
                                }
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Wrap(
                                  crossAxisAlignment: WrapCrossAlignment.center,
                                  children: [
                                    Icon(Icons.star,size: 15,color: Colors.amber),
                                    Text("\$4.5",
                                        style: TextStyle(
                                            overflow:TextOverflow.ellipsis,
                                            fontSize: 14,
                                            fontWeight: FontWeight.w600,
                                            color: Colors.blueGrey
                                        )
                                    )
                                  ],
                                ),
                                TextButton(
                                    onPressed: (){},
                                    child: const Text("Review",style: TextStyle(
                                        color: ColorsManager.appPrimaryColor
                                    ))
                                ),
                                const Card(
                                  color: ColorsManager.appPrimaryColor,
                                  child: Padding(
                                    padding: EdgeInsets.all(2.0),
                                    child: Icon(Icons.favorite_border,size: 12,color: Colors.white),
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                        const Text(
                            "Color",
                            style: TextStyle(
                                fontSize: 16,
                                color: Colors.black,
                                fontWeight: FontWeight.w700
                            )
                        ),
                        const SizedBox(height: 10),
                        SizedBox(
                          height: 20,
                          child: ListView.separated(
                              scrollDirection: Axis.horizontal,
                              itemCount: colors.length,
                              itemBuilder :  (context,index){
                                return InkWell(
                                    borderRadius: BorderRadius.circular(20.0),
                                    onTap: (){
                                      selectedColorIndex = index;
                                      if(mounted){
                                        setState(() {});
                                      }
                                    },
                                    child: CircleAvatar(
                                      radius: 15,
                                      backgroundColor: colors[index],
                                      child: selectedColorIndex == index ? const Icon(Icons.done,size: 15,color: Colors.white) : null,
                                    )
                                );
                              },
                              separatorBuilder: (BuildContext context, int index) {
                                return const SizedBox(width: 4);
                              }
                          ),
                        ),
                        const SizedBox(height: 10),
                        SizedBox(
                          height: 20,
                          child: ListView.separated(
                              scrollDirection: Axis.horizontal,
                              itemCount: sizes.length,
                              itemBuilder :  (context,index){
                                return InkWell(
                                    borderRadius: BorderRadius.circular(20.0),
                                    onTap: (){
                                      selectedSizeIndex = index;
                                      if(mounted){
                                        setState(() {});
                                      }
                                    },
                                    child: Container(
                                      margin: const EdgeInsets.symmetric(horizontal: 4),
                                      padding: const EdgeInsets.symmetric(horizontal: 8),
                                      decoration: BoxDecoration(
                                        border:Border.all(color: Colors.grey),
                                        borderRadius: BorderRadius.circular(4.0),
                                        color: selectedSizeIndex == index ? ColorsManager.appPrimaryColor : null,
                                      ),
                                      child: Text(sizes[index]),
                                    )
                                );
                              },
                              separatorBuilder: (BuildContext context, int index) {
                                return const SizedBox(width: 4);
                              }
                          ),
                        ),
                        /// footer portion
                        const SizedBox(height: 16),
                        const Text("Description",
                            style: TextStyle(
                                fontSize: 16,
                                color: Colors.black,
                                fontWeight: FontWeight.w700
                            )),
                        const SizedBox(height: 16),
                        const Text('''
                          Lorem Ipsum is simply dummy text of the printing and 
                          typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release 
                          of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop 
                          publishing software like Aldus PageMaker including versions of Lorem Ipsum.
                        '''),
                      ],
                    ),
                  ),
                ),
            ),
            Container(
              decoration: BoxDecoration(
                color: ColorsManager.appPrimaryColor.withOpacity(.1),
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(16),
                  topRight: Radius.circular(16)
                )
              ),
              padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Column(
                    children: [
                      Text("Price",
                          style: TextStyle(
                            color: Colors.black54,
                            fontWeight: FontWeight.w600,
                            fontSize: 16
                          )
                      ),
                      SizedBox(height: 4),
                      Text("\$10009",
                          style: TextStyle(
                              color: ColorsManager.appPrimaryColor,
                              fontWeight: FontWeight.w600,
                              fontSize: 16
                      ))
                    ],
                  ),
                  SizedBox(
                    width: 120,
                    child: ElevatedButton(
                      onPressed: (){
                      },
                      child: const Text("Add to cart"),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}