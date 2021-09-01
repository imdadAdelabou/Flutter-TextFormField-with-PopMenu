# Flutter-TextFormField-with-PopMenu
## How to create a TextFormField with PopupMenuItem
## First let's create our TextFormField
- what is a TextFormField
> A TextFormField is a flutter widget that allows the user to enter data. For example, the boxes present on the facebook app when you log in that allow you to enter information about yourself such as your phone number or password are TextFormFields.
- How to create a TextFormField in Flutter
> **To create a TextFormField in flutter we call the TextFormField() widget as follows 👇 ⬇️ 👇 :**
> <img src="flutter_textformfield_with_pop_up/screenshots/customTextFormField.png" />
- **Render**
> <img src="flutter_textformfield_with_pop_up/screenshots/render1.png" />\
> The TextFormField has a number of properties that define the look and feel of the widget.
> For example we have these different properties 👇👇:
1. controller
    - To manage the content of the TextFormField
    - With **controller.text** we can retrieve the content entered by the user
2. border
    - Apply a border type to the TextFormField
3. hintText
    - Allows you to enter a predefined text to guide the user to the expected value
4. Go into detail about the different properties of the TextFormField by following this link [https://api.flutter.dev/flutter/material/TextFormField-class.html]

## Let's go back to the essentials and build our PopMenu
>To build a PopMenu we make use of the PopupMenuButton() widget by implementing it this way 👇👇👇:
> <img src="flutter_textformfield_with_pop_up/screenshots/myPopMenu.png">

1.itemBuilder
    - A function that expects a List<PopupMenuItem<String>>, in a simple way the content of the PopMenuButton
    - So what we do is we just convert a List of strings into a List of PopMenuItem
