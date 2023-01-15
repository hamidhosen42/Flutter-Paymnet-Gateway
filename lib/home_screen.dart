// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_stripe_paymnet/bikash_payment.dart';
import 'package:flutter_stripe_paymnet/payment_controller.dart';

class PaymentHomeScreen extends StatefulWidget {
  const PaymentHomeScreen({Key? key}) : super(key: key);

  @override
  State<PaymentHomeScreen> createState() => _PaymentHomeScreenState();
}

class _PaymentHomeScreenState extends State<PaymentHomeScreen> {
  var obj = PaymentController();
  @override
  Widget build(BuildContext context) {
    // final PaymentController controller = Get.put(PaymentController());

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () => obj.makePayment(amount: '5', currency: 'USD'),
              child: Text('Make A Payment'),
            ),
            ElevatedButton(
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>BikashPayment(title: 'bKash Demo')));
              },
              child: Text('Bikash Payment'),
            ),
          ],
        ),
      ),
    );
  }
}