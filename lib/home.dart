import 'package:flutter/material.dart';
import 'package:time_picker_app/addtimepicker.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: TextButton(
                onPressed: () {
                  addTimePicker(context);
                },
                child: const Icon(
                  Icons.timer,
                  size: 30,
                  color: Colors.indigo,
                )),
          )
        ],
      ),
    );
  }
}
