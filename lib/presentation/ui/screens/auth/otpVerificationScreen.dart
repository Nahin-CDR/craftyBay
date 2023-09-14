import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import '../../utility/assetManager.dart';
import '../../utility/colorManager.dart';

class OTPVerificationScreen extends StatefulWidget {
  const OTPVerificationScreen({super.key});

  @override
  State<OTPVerificationScreen> createState() => _OTPVerificationScreenState();
}

class _OTPVerificationScreenState extends State<OTPVerificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                const SizedBox(
                  height: 100,
                ),
                Center(
                  child: SvgPicture.asset(
                    AssetsManager.logoSVG,
                    height: 100,
                  ),
                ),
                const SizedBox(height: 16),
                Text("Enter your OTP code",style: Theme.of(context).textTheme.titleLarge?.copyWith(fontSize: 24)),
                const SizedBox(height: 8),
                Text("A 4 digit OTP code has been sent", style: Theme.of(context).textTheme.titleMedium?.copyWith(color:Colors.grey)),
                const SizedBox(height: 16),
                PinCodeTextField(
                  keyboardType: TextInputType.number,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  length: 4,
                  obscureText: false,
                  animationType: AnimationType.fade,
                  pinTheme: PinTheme(
                    shape: PinCodeFieldShape.box,
                    borderRadius: BorderRadius.circular(5),
                    fieldHeight: 50,
                    fieldWidth: 45,
                    activeFillColor: Colors.white,
                    inactiveFillColor: Colors.white,
                    selectedFillColor: ColorsManager.appPrimaryColor
                  ),
                  animationDuration: const Duration(milliseconds: 300),
                  backgroundColor: Colors.transparent,
                  enableActiveFill: true,
                  onCompleted: (v) {
                    print("Completed");
                  },
                  onChanged: (value) {
                    print(value);
                    setState(() {

                    });
                  },
                  beforeTextPaste: (text) {
                    print("Allowing to paste $text");
                    //if you return true then it will show the paste confirmation dialog. Otherwise if false, then nothing will happen.
                    //but you can show anything you want here, like your pop up saying wrong paste format or etc
                    return true;
                  }, appContext:context,
                ),
                const SizedBox(height: 16),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      textStyle: const TextStyle(
                          fontSize: 16,
                          letterSpacing: 0.5,
                          fontWeight: FontWeight.w600
                      ),
                      backgroundColor: ColorsManager.appPrimaryColor,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0)
                      ),
                    ),
                    onPressed: (){},
                    child: const Text("Next"),
                  ),
                ),
                const SizedBox(height: 16),
                RichText(
                    text: const TextSpan(
                        style: TextStyle(
                          color: Colors.grey
                        ),
                        children: [
                          TextSpan(text: 'This code will expire after '),
                          TextSpan(text: '120 s',
                              style: TextStyle(
                                  color: ColorsManager.appPrimaryColor
                              )
                          )
                        ]
                    )
                ),
                TextButton(
                    onPressed: (){} ,
                    child: const Text("Resend",style: TextStyle(color: Colors.grey))
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
