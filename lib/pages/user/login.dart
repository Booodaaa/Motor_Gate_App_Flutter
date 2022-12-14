// import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/Effects/colors.dart';
import 'package:flutter_app/Effects/dimensions.dart';
import 'package:flutter_app/widgets/BigText.dart';
import 'package:flutter_app/widgets/app_text.dart';
import 'package:get/get.dart';


class LogInPage extends StatelessWidget {
  //final UserCredential userCredential;
  const LogInPage({super.key ,});

  @override
  Widget build(BuildContext context) {

    var emailController = TextEditingController();
    var firstNameController = TextEditingController();
    var lastNameController = TextEditingController();
    var passwordController = TextEditingController();
    var phoneController = TextEditingController();
    var confirmPasswordController = TextEditingController();
    var signUpImages = ["images/g.png", "images/f.png"];



    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            SizedBox(
              height: Dimensions.screenHeight * 0.05,
            ),
            Container(
              height: Dimensions.screenHeight * 0.25,
              child: Center(
                child: CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 80,
                  backgroundImage: AssetImage("images/logo.png"),
                ),
              ),
            ),
            AppTextField(
                hintText: "Email",
                icon: Icons.email,
                textController: emailController),
            SizedBox(
              height: Dimensions.height20,
            ),
            AppTextField(
                hintText: "Password",
                icon: Icons.password_sharp,
                textController: passwordController),
            SizedBox(
              height: Dimensions.height20,
            ),
            ElevatedButton(
              // onPressed: () async { try {
              //     UserCredential userCredential = await FirebaseAuth.instance.signInWithEmailAndPassword(
              //       email: "barry.allen@example.com",
              //       password: "SuperSecretPassword!"
              //   );
              // } on FirebaseAuthException catch (e) {
              //   if (e.code == 'user-not-found') {
              //     print('No user found for that email.');
              //   } else if (e.code == 'wrong-password') {
              //     print('Wrong password provided for that user.');
              //   }
              // }
              //   print(userCredential.user?.emailVerified);
              //   if(userCredential.user?.emailVerified == false){
              //     User? user = FirebaseAuth.instance.currentUser;
              //     await user?.sendEmailVerification();
              //   }
              // },
              onPressed: () {  },
              //style: ButtonStyle(backgroundColor: Colors.white) ,
              child: Container(
                width: Dimensions.screenWidth / 2,
                height: Dimensions.screenHeight / 13,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(Dimensions.radius30),
                  color: AppColors.mainColor,
                ),
                child: Center(
                  child: BigText(
                    text: "Login",
                    size: Dimensions.font20 + Dimensions.font20 / 2,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: Dimensions.height10,
            ),
            RichText(
              text: TextSpan(
                  recognizer: TapGestureRecognizer()..onTap = () => Get.back(),
                  text: "Don't have account? ",
                  style: TextStyle(
                    color: Colors.grey[500],
                    fontSize: Dimensions.font20,
                  ),
                  children: [
                    TextSpan(
                  recognizer: TapGestureRecognizer()..onTap = () => Get.back(),
                  text: "Create",
                  style: TextStyle(
                    color: Colors.grey[500],
                    fontSize: Dimensions.font20,
                    fontWeight: FontWeight.bold
                    )),
                  ]
                  
                  
                  ),
                  
            ),
            SizedBox(
              height: Dimensions.screenHeight * 0.05,
            ),
            RichText(
              text: TextSpan(
                  text: "Log In Using One Of The Following ...",
                  style: TextStyle(
                    color: Colors.grey[500],
                    fontSize: Dimensions.font20,
                  )),
            ),
            // Wrap(
            //   children:
            //     List.generate(2, (index) => Padding(
            //       padding: const EdgeInsets.all(8.0),
            //       child: CircleAvatar(
            //         radius: Dimensions.radius30,
            //         backgroundColor: AppColors.mainColor,
            //         backgroundImage:AssetImage("images/"+ signUpImages[index]) ,
            //       ),
            //     ))
            //   ,
            // )
          ],
        ),
      ),
    );
  }
}

class UserCredential {
}
