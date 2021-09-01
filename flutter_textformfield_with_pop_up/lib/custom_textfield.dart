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
  const CustomPopMenu();
  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<String>(
      onSelected: (String value) {},
      itemBuilder: (BuildContext context) {
        return ["67558790", "97018957"]
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
