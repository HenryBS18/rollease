part of 'widgets.dart';

class TextFieldWithIcon extends StatefulWidget {
  final IconData icon;
  final String value;
  final bool enabled;
  final FocusNode? focusNode;

  const TextFieldWithIcon({Key? key, required this.icon, required this.value, required this.enabled, this.focusNode})
      : super(key: key);

  @override
  _TextFieldWithIconState createState() => _TextFieldWithIconState();
}

class _TextFieldWithIconState extends State<TextFieldWithIcon> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      focusNode: widget.focusNode,
      initialValue: widget.value,
      enabled: widget.enabled,
      style: TextStyle(color: Colors.black),
      decoration: InputDecoration(
        prefixIcon: Icon(widget.icon),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(
            color: Color(0xffA2C90C),
            width: 3,
          ),
        ),
        disabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(
            color: Color(0xffA2C90C),
            width: 1,
          ),
        ),
      ),
    );
  }
}
