import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RegisterButton extends StatelessWidget {
  // late OrdersBloc ordersBloc;
  // List<Data> products;
  // Checkout({required this.products});
  final VoidCallback onTapped;
  RegisterButton({required this.onTapped});
  @override
  Widget build(BuildContext context) {
    // ordersBloc = BlocProvider.of<OrdersBloc>(context);
    return GestureDetector(
        child: Container(
          width: MediaQuery.of(context).size.width * 0.7,
          padding: EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: Theme.of(context).primaryColor,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Center(
            child: Text("Register",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                )),
          ),
        ),
        onTap: () {
          // Navigator.pop(context);
          this.onTapped();
        });
  }
}