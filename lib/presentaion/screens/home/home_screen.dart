import 'package:car2go/business_logic/enums.dart';
import 'package:car2go/data/brands.dart';
import 'package:car2go/data/car_details.dart';
import 'package:car2go/data/categories.dart';
import 'package:car2go/presentaion/resources/color_manager.dart';
import 'package:car2go/presentaion/resources/font_manager.dart';
import 'package:car2go/presentaion/resources/routes_manager.dart';
import 'package:car2go/presentaion/resources/values_manager.dart';
import 'package:car2go/presentaion/screens/home/home_widgets.dart';
import 'package:car2go/presentaion/screens/see_more_screen.dart';
import 'package:car2go/presentaion/widgets/components.dart';
import 'package:car2go/presentaion/widgets/custom_textfield.dart';
import 'package:flutter/material.dart';
import '../../resources/style_manager.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController searchCtrl = TextEditingController();

  Color  dark =ColorManager.DarkMode;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:dark,

      appBar: AppBar(
        title: const Text(
          'Home',
          style: TextStyle(
            color:  ColorManager.offWhite, // set the text color to red
          ),
        ),
      ),

      body: ListView(
        padding: const EdgeInsets.only(left: AppPadding.screenPadding,
          right: AppPadding.screenPadding,
          bottom: AppPadding.screenPadding,),
        children: [
          Card(
            color: ColorManager.primaryLight,
            child: Padding(
              padding: const EdgeInsets.all(AppPadding.cardPadding),
              child: Column(
                children: [
                  Text(
                    'Easiest way to get your favourite car.',
                    style: getSemiBoldStyle(
                        color: ColorManager.primary,
                        fontSize: FontSize.f18),
                  ),
                  Space(),
                  Row(
                    children: [
                      Expanded(
                        child:
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.white, // set the background color to grey
                            borderRadius: BorderRadius.circular(11.0), // add rounded corners
                          ),
                          child: CustomTextField(
                            controller: searchCtrl,
                            textFieldType: TextFieldType.text,
                            text: "Search a car...",
                            style: const TextStyle(color: Colors.white),
                            prefix: Icons.search,
                          ),
                      ),

                      ),
                      Space(),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.filter_list_sharp,
                          color: ColorManager.primary,
                          size: 20,
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
          Space(),

          //Brands
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Brands',
                style: getMediumStyle(
                    fontSize: FontSize.f26, color: ColorManager.primary),
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  'See More',
                  style: getMediumStyle(color: ColorManager.offWhite),
                ),

              ),
            ],
          ),
          Space(height: 5),
          SizedBox(
            height: 220,
            child: GridView.count(
              physics: const NeverScrollableScrollPhysics(),
              crossAxisCount: 3,
              crossAxisSpacing: 5,
              mainAxisSpacing: 10,
              childAspectRatio: 1.1,
              children: List.generate(6, (index) {
                return BrandItem(brandImage: dummyBrands[index]);
              }),
            ),
          ),
          Space(height: 40),

          //Categories
          HeaderWithDivider(title: 'Categories'),
          Space(
            height: 20,
          ),
          SizedBox(
              height: 180,
              child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return CategoryItem(category: dummyCategories[index]);
                },
                itemCount: 6,
              )),
          Space(height: 40),

          //Most Liked Car
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Most Liked Cars',
                style: getMediumStyle(
                    fontSize: FontSize.f26, color: ColorManager.primary),
              ),
              TextButton(
                onPressed: () {
                  navigateTo(context: context, widget: SeeMoreScreen(title: 'Most Liked Card', carsList: cars));
                },
                child: Text(
                  'See More',
                  style: getMediumStyle(color: ColorManager.offWhite),
                ),

              ),
            ],
          ),
          Space(height: 5),
          ListView.separated(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
             // background: Container(color: Colors.white),
              itemBuilder: (context, index) {
                return ListItem(carDetails: cars[index]);
              },
              separatorBuilder: (context, index) => Space(height: 5),
              itemCount: cars.length)
        ],
      ),
    );
  }
}
