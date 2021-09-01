import "package:flutter/material.dart";

class CustomTextField extends StatelessWidget {
  final TextEditingController controller;
  const CustomTextField({required this.controller});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 70.0,
      child: TextFormField(
        controller: controller,
        decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.0),
            ),
            hintText: "Enter your phone number.",
            suffixIcon: CustomPopMenu(controller: controller)),
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
      icon: Icon(
        Icons.arrow_drop_down,
        color: Colors.orange,
      ),
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
