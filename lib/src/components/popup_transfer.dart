import 'package:flutter/material.dart';

class TransferPopup extends StatelessWidget {
  const TransferPopup({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      decoration: const BoxDecoration(
        // backgroundBlendMode: ,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20.0),
          topRight: Radius.circular(20.0),
        ),
        color: Colors.grey,
      ),
      child: const Center(
        child: Text('This is a BottomSheet modal'),
      ),
    );
  }
}
