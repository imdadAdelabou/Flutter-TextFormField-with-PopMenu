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

class CustomPopMenu extends StatelessWidget {
  final TextEditingController controller;

  CustomPopMenu({required this.controller});
  final List<String> contents = ["67558790", "97018957"];
  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<String>(
      onSelected: (String value) {
        controller.text = value;
      },
      itemBuilder: (BuildContext context) {
        return contents
            .map<PopupMenuItem<String>>(
              (e) => PopupMenuItem(
                child: Text(e),
                value: e,
              ),
            )
            .toList();
      },
    );
  }
}
