import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget {
  final String label;
  // final GlobalKey<FormState>? formkey;
  const PrimaryButton({Key? key, required this.label, /*this.formkey*/})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 45,
      child: ElevatedButton(
        onPressed: () => _saveForm(/*formkey!*/),
        child: Text(
          label,
          style: const TextStyle(fontSize: 15),
        ),
      ),
    );
  }

  void _saveForm(/*GlobalKey<FormState> formkey*/) {
    print("Validating");

    //   final isValid = formkey.currentState!.validate();

    //   if (!isValid) {
    //     return;
    //   }
    //   formkey.currentState!.save();

    //   try {
    //     print("Saving");
    //   } catch (error) {
    //     print("Error");
    //   }
  }
}
