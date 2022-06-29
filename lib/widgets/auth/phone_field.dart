import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class PhoneField extends StatelessWidget {
  const PhoneField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text("Phone Number"),
        const SizedBox(
          height: 8,
        ),
        SizedBox(
          height: 45,
          child: IntlPhoneField(
            showCountryFlag: false,
            initialCountryCode: 'EG',
            disableLengthCheck: true,
            dropdownIconPosition: IconPosition.trailing,
            flagsButtonPadding: const EdgeInsets.only(left: 17),
            dropdownIcon:
                const Icon(Icons.keyboard_arrow_down, color: Colors.black),
            decoration: InputDecoration(
              hintText: 'Eg. 812345678',
              hintStyle: const TextStyle(fontSize: 13.5, color: Colors.grey),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(4),
                borderSide: const BorderSide(color: Colors.grey),
              ),
            ),
            // validator: (PhoneNumber? value) {
            //   if (value!.number.length < 5) {
            //     return 'Enter a valid number';
            //   }
            //   return null;
            // },
            onChanged: (phone) {
              print(phone.completeNumber);
            },
          ),
        ),
      ],
    );
  }
}
