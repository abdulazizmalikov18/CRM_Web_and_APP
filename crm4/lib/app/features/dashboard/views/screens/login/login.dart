import 'package:crm4/app/constans/style.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AuthenticationPage extends StatelessWidget {
  const AuthenticationPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          constraints:const BoxConstraints(maxWidth: 400),
          padding:const  EdgeInsets.all(24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 12),
                    child: Image.asset("assets/icons/logo.png"),
                  ),
                  Expanded(child: Container()),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  Text("Login",
                      style: GoogleFonts.roboto(
                          fontSize: 30, fontWeight: FontWeight.bold)),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children:const [
                  Text(
                    "Welcome back to the admin panel.",
                    style: TextStyle(color: Color(0xFFF7F8FC)),
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              TextField(
                decoration: InputDecoration(
                    labelText: "Email",
                    hintText: "abc@domain.com",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20))),
              ),
              const SizedBox(
                height: 15,
              ),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                    labelText: "Password",
                    hintText: "123",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20))),
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Checkbox(value: true, onChanged: (value){}),
                      const Text("Remeber Me"),
                    ],
                  ),

                 const Text(
                   "Forgot password?",
                    style: TextStyle(color: Colors.grey),
                  )
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              InkWell(
                // onTap: (){
                //   Get.offAllNamed(rootRoute);
                // },
                child: Container(
                  decoration: BoxDecoration(color: active, 
                  borderRadius: BorderRadius.circular(20)),
                  alignment: Alignment.center,
                  width: double.maxFinite,
                  padding:const EdgeInsets.symmetric(vertical: 16),
                  child:const Text( "Login",
                    style: TextStyle(color: Colors.white,),
                  ),
                ),
              ),

              const SizedBox(
                height: 15,
              ),

              RichText(text: TextSpan(
                children: [
                  const TextSpan(text: "Do not have admin credentials? "),
                  TextSpan(text: "Request Credentials! ", style: TextStyle(color: active))
                ]
              ))

            ],
          ),
        ),
      ),
    );
  }
}
