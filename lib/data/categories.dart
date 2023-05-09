import 'package:car2go/business_logic/enums.dart';
import 'package:car2go/presentaion/resources/assets_manager.dart';
import 'package:car2go/presentaion/resources/color_manager.dart';
import 'package:flutter/material.dart';

class Category{
  String image;
  String name;
  CarType type;
  Category({required this.image, required this.name, required  this.type, required TextStyle textStyle});
}
List<Category> dummyCategories = [
  Category(
    image: ImageAssets.sedan,
    name: 'Sedan',
    type: CarType.sedan,
    textStyle: const TextStyle(color: ColorManager.offWhite), // add this line to change text color
  ),
  Category(
    image: ImageAssets.coupe,
    name: 'Coupe',
    type: CarType.coupe,
    textStyle: const TextStyle(color: ColorManager.offWhite), // add this line to change text color
  ),
  Category(
    image: ImageAssets.suv,
    name: 'SUV',
    type: CarType.suv,
    textStyle: const TextStyle(color: ColorManager.offWhite), // add this line to change text color
  ),
  Category(
    image: ImageAssets.crossover,
    name: 'Crossover',
    type: CarType.crossover,
textStyle: const TextStyle(color: ColorManager.offWhite), // add this line to change text color
  ),
  Category(
    image: ImageAssets.hatchback,
    name: 'Hatchback',
    type: CarType.minivan,
textStyle: const TextStyle(color: ColorManager.offWhite), // add this line to change text color
  ),
  Category(
    image: ImageAssets.roadster,
    name: 'Roadster',
    type: CarType.roadster,
    textStyle: const TextStyle(color: ColorManager.offWhite), // add this line to change text color
  ),
];
