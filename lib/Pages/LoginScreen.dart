import 'package:flutter/material.dart';
import 'package:fortuneteller/Models/LoginDetail.dart';
import 'package:fortuneteller/Models/UserToken.dart';
import 'package:fortuneteller/Pages/HomeScreen.dart';
import 'package:fortuneteller/Pages/WelcomeScreen.dart';
import 'package:fortuneteller/controllers/loginController.dart';
import 'package:fortuneteller/res/constants.dart';
import 'package:fortuneteller/widgets/NavDrawer.dart';
import 'package:fortuneteller/Pages/NavigationScreen.dart';
import 'package:get/get.dart';

   RxInt _selectedIndex = 0.obs; 

class LoginScreen extends StatelessWidget {
  @override
  Widget build(context) {
    // Instantiate your class using Get.put() to make it available for all "child" routes there. 

    return Scaffold(
              // Use Obx(()=> to update Text() whenever count is changed.      
        // Replace the 8 lines Navigator.push by a simple Get.to(). You don't need context
        body: Center(
          child: Column(children: [
            Expanded(
                child: Image.asset(
              'assets/images/icon_flutter.png',
              height: 200,
              width: 200,
            )),
            Expanded(
                child: Column(
              children: [
                Container(
                    height: 35,
                    child: const Text("Kullanıcı Adı",style: TextStyle(color: primaryColor)),
                    alignment: Alignment.center),
                Row(
                  children: [
                    Expanded(flex: 25, child: Container()),
                    Expanded(
                        flex: 50,
                        child: TextFormField(
                          controller: LoginController.to.UserNameTxtController,
                          style: TextStyle(color: secondaryColor),
                          decoration: const InputDecoration(
                             filled: true,
                            fillColor: primaryColor,
                            border: OutlineInputBorder(),
                            hintText: 'Kullanıcı Adı',
                            hintStyle: TextStyle(color: secondaryColor)
                          ),
                        )),
                    Expanded(flex: 25, child: Container())
                  ],
                ),
                Container(
                    height: 35,
                    child: const Text("Şifre",style: TextStyle(color: primaryColor)),
                    alignment: Alignment.center),
                Row(
                  children: [
                    Expanded(flex: 25, child: Container()),
                    Expanded(
                        flex: 50,
                        child: TextFormField(
                          controller: LoginController.to.PasswordTxtController,
                          style: TextStyle(color: secondaryColor),
                          decoration: const InputDecoration(            
                            filled: true,
                            fillColor: primaryColor,                                           
                            border: OutlineInputBorder(),
                            hintText: 'Şifre',
                            hintStyle: TextStyle(color: secondaryColor)
                          ),
                        )),
                    Expanded(flex: 25, child: Container())
                  ],
                ),
                Row(mainAxisAlignment: MainAxisAlignment.center,children: [TextButton(
                  style: ButtonStyle(
                    foregroundColor:
                        MaterialStateProperty.all<Color>(Colors.blue),
                  ),
                  onPressed: () async {
                  UserToken userToken = await  LoginController.to.loginUser(new LoginDetail(
                      userName: LoginController.to.UserNameTxtController.text, 
                      password: LoginController.to.PasswordTxtController.text));
                    if(userToken.accessToken != "" ){
                    Get.to(NavigationScreen());
                    }                   
                    
                    },
                  child: Text('Giriş yap'),
                ),
                  TextButton(
                  style: ButtonStyle(
                    foregroundColor:
                        MaterialStateProperty.all<Color>(Colors.blue),
                  ),
                  onPressed: () {},
                  child: Text('Üye Ol'),
                )],)
                
              ],
            )),           
          ]),
        ),);
  }
}





