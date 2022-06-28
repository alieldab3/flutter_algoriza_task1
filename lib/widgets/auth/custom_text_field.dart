import 'package:flutter/material.dart';

class CustomTextField extends StatefulWidget {
  final String label;
  final String hintText;
  final String validationText;
  final bool isPassword;

  const CustomTextField({
    Key? key,
    required this.label,
    required this.hintText,
    required this.validationText,
    this.isPassword = false,
  }) : super(key: key);

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  late bool _obscurePass;

  @override
  void initState() {
    _obscurePass = widget.isPassword;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text(widget.label),
      const SizedBox(
        height: 8,
      ),
      SizedBox(
        height: 45,
        child: TextFormField(
          decoration: InputDecoration(
            hintText: widget.hintText,
            hintStyle: const TextStyle(fontSize: 13.5, color: Colors.grey),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(4),
              borderSide: const BorderSide(color: Colors.grey),
            ),
            suffixIcon: widget.isPassword
                ? IconButton(
                    icon: const Icon(Icons.visibility),
                    onPressed: () {
                      setState(() {
                        _obscurePass = !_obscurePass;
                      });
                    },
                    color: Colors.black,
                  )
                : null,
          ),
          obscureText: _obscurePass,
          textInputAction: TextInputAction.next,
          keyboardType: TextInputType.emailAddress,
          validator: (String? value) {
            if (value!.isEmpty) {
              return widget.validationText;
            }
            return null;
          },
          onChanged: (value) {
            print(value);
          },
        ),
      ),
    ]);
  }
}
