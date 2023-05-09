import 'package:car2go/business_logic/enums.dart';
import 'package:car2go/presentaion/resources/assets_manager.dart';
import 'package:car2go/presentaion/resources/color_manager.dart';
import 'package:car2go/presentaion/resources/color_manager.dart';
import 'package:car2go/presentaion/resources/font_manager.dart';
import 'package:car2go/presentaion/resources/string_manager.dart';
import 'package:car2go/presentaion/resources/style_manager.dart';
import 'package:car2go/presentaion/resources/theme_manager.dart';
import 'package:car2go/presentaion/resources/values_manager.dart';
import 'package:car2go/presentaion/screens/home/home_screen.dart';
import 'package:car2go/presentaion/screens/login_screen.dart';
import 'package:car2go/presentaion/widgets/components.dart';
import 'package:car2go/presentaion/widgets/custom_textfield.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:introduction_screen/introduction_screen.dart';

import '../resources/color_manager.dart';
import '../resources/color_manager.dart';
import '../resources/color_manager.dart';
import '../resources/color_manager.dart';
import '../widgets/custom_button.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final userNameController = TextEditingController();
  final phoneController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  IconData passwordIcon = Icons.visibility;

  @override
  Widget build(BuildContext context) {
    var pageDecoration = const PageDecoration(
      pageColor: ColorManager.DarkMode,
      imagePadding: EdgeInsets.zero,
    );
    Color  dark =ColorManager.DarkMode;


    return Scaffold(
      backgroundColor:dark,
      appBar: AppBar(),
     body: Center(
       child: SingleChildScrollView(
         padding: const EdgeInsets.all(AppPadding.screenPadding),
         child: Column(
           children: [
             Space(),
             Image.asset(
               ImageAssets.logo,
               height: 120,
             ),
             Space(height: 30,),
             Container(
               decoration: BoxDecoration(
                 color: Colors.white, // set the background color to grey
                 borderRadius: BorderRadius.circular(11.0), // add rounded corners
               ),
               child: CustomTextField(
                 controller: userNameController,
                 textFieldType: TextFieldType.text,
                 text: "Username",
                 style: const TextStyle(color: Colors.white),
                 prefix: Icons.account_circle_outlined,
               ),
             ),

             Space(),

             Container(
               decoration: BoxDecoration(
                 color: Colors.white, // set the background color to grey
                 borderRadius: BorderRadius.circular(11.0), // add rounded corners
               ),
               child: CustomTextField(
                 controller: phoneController,
                 textFieldType: TextFieldType.text,
                 text: "Phone Number",
                 style: const TextStyle(color: Colors.white),
                 prefix: Icons.phone,
               ),
             ),
             Space(),
             Container(
               decoration: BoxDecoration(
                 color: Colors.white, // set the background color to grey
                 borderRadius: BorderRadius.circular(11.0), // add rounded corners
               ),
               child: CustomTextField(
                 controller: emailController,
                 textFieldType: TextFieldType.text,
                 text: "Email",
                 style: const TextStyle(color: Colors.white),
                 prefix: Icons.email_outlined,
               ),
             ),

             Space(),

             Container(
                decoration: BoxDecoration(
                 color: Colors.white, // set the background color to grey
                 borderRadius: BorderRadius.circular(11.0), // add rounded corners
               ),
               child: CustomTextField(
                 controller: passwordController,
                 textFieldType: TextFieldType.text,
                 text: 'Password',
                 style: const TextStyle(color: Colors.white),
                 isPassword: true,
                 prefix: Icons.lock_outline,
                 suffix: passwordIcon,
                 suffixPressed: null,
               ),
             ),


             Space(),
             Container(
               decoration: BoxDecoration(
                 color: Colors.white, // set the background color to grey
                 borderRadius: BorderRadius.circular(11.0), // add rounded corners
               ),
               child: CustomTextField(
                 controller: passwordController,
                 textFieldType: TextFieldType.text,
                 text: "Confirm Password",
                 style: const TextStyle(color: Colors.white),
                 isPassword: true,
                 prefix: Icons.lock_outline,
                 suffix: passwordIcon,
                 suffixPressed: null,
               ),
             ),
            Space(
               height: 30,
             ),
             CustomButton(
               text: 'Sign up',
               function: () {
                   Navigator.push(
                     context,
                     MaterialPageRoute(builder: (context) => const HomeScreen()),
                   );
               },
             ),

           ],
         ),
       ),
     ),
    );
  }
}
