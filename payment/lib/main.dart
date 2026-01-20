import 'package:flutter/material.dart';
import 'package:razorpay_flutter/razorpay_flutter.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  void handlePaymentErrorResponse(PaymentFailureResponse response) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          "Payment Failed\n"
          "Code: ${response.code}\n"
          "Description: ${response.message}\n"
          "Metadata: ${response.error.toString()}",
        ),
      ),
    );
  }

  void handleExternalWalletSelected(ExternalWalletResponse response) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text("External Wallet Selected ${response.walletName}"),
      ),
    );
  }

  void handlePaymentSuccessResponse(PaymentSuccessResponse response) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text("Payment Successful Payment ID: ${response.paymentId}"),
      ),
    );
  }

  @override
  void dispose() {
    Razorpay().clear();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            final Razorpay razorpay = Razorpay();

            var options = {
              'key': 'rzp_live_ILgsfZCZoFIKMb',
              'amount': 100,
              'name': 'Acme Corp.',
              'description': 'Fine T-Shirt',
              'prefill': {
                'contact': '8888888888',
                'email': 'test@razorpay.com',
              },
            };
            razorpay.on(Razorpay.EVENT_PAYMENT_ERROR, (
              PaymentFailureResponse response,
            ) {
              handlePaymentErrorResponse(response);
            });

            razorpay.on(Razorpay.EVENT_PAYMENT_SUCCESS, (
              PaymentSuccessResponse response,
            ) {
              handlePaymentSuccessResponse(response);
            });

            razorpay.on(Razorpay.EVENT_EXTERNAL_WALLET, (
              ExternalWalletResponse response,
            ) {
              handleExternalWalletSelected(response);
            });

            razorpay.open(options);
          },
          child: Text('Pay now'),
        ),
      ),
    );
  }
}

void main(List<String> args) {
  runApp(App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: page());
  }
}

class page extends StatelessWidget {
  const page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => HomeScreen()),
            );
          },
          child: Text('pay'),
        ),
      ),
    );
  }
}
