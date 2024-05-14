import 'package:flutter/material.dart';

addTimePicker(BuildContext context) {
  TimeOfDay time = TimeOfDay.now();

  return showDialog(
    context: context,
    builder: (context) {
      return StatefulBuilder(
        builder: (context, setState) {
          return AlertDialog(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
            title: const Text("Add Timer"),
            content: SingleChildScrollView(
              child: Column(
                children: [
                  MaterialButton(
                    onPressed: () async {
                      TimeOfDay? newTime = await showTimePicker(
                          context: context, initialTime: TimeOfDay.now());

                      if (newTime == null) {
                        return;
                      }
                      setState(() {
                        time = newTime;
                      });
                    },
                    child: Row(
                      children: [
                        const Icon(
                          Icons.timer,
                          color: Colors.indigo,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Text(
                          time.format(context).toString(),
                          style: const TextStyle(
                              color: Colors.indigo, fontSize: 30),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            actions: [
              TextButton(
                  onPressed: () => Navigator.of(context).pop(context),
                  child: const Text("Cancel")),
              TextButton(
                  onPressed: () => Navigator.of(context).pop(context),
                  child: const Text("Add"))
            ],
          );
        },
      );
    },
  );
}
