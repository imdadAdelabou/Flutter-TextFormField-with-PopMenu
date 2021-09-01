import "package:flutter/material.dart";

class CustomTextField extends StatelessWidget {
  const CustomTextField();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 70.0,
      child: TextFormField(
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.0),
          ),
          hintText: "Enter your phone number.",
        ),
      ),
    );
  }
}
