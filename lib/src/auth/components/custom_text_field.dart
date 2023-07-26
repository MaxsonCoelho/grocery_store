
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


// ignore: must_be_immutable
class CustomFormField extends StatefulWidget {
  final IconData icon;
  final String label;
  final bool isSecret;
  final List<TextInputFormatter>? inputFormatters;

  const CustomFormField({
    super.key,
    required this.icon,
    required this.label,
    this.isSecret = false,
    this.inputFormatters
  });

  @override
  State<CustomFormField> createState() => _CustomFormFieldState();
}

class _CustomFormFieldState extends State<CustomFormField> {
  bool isObscure = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    isObscure = widget.isSecret;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15),
      child: TextFormField(
        inputFormatters: widget.inputFormatters,
        obscureText: isObscure,
        decoration: InputDecoration(
            prefixIcon: Icon(widget.icon),
            suffixIcon: widget.isSecret ? IconButton(
              onPressed: () {
                setState(() {
                  isObscure = !isObscure;
                });
              },
              icon: Icon(isObscure ? Icons.visibility : Icons.visibility_off),
            ) : null,
            labelText: widget.label,
            isDense: true,
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(18))),
      ),
    );
  }
}
