import 'package:flutter/material.dart';

class TextMain extends StatefulWidget {
  bool isObscure = true;
  final TextEditingController controller;
  final bool obscure;
  final Color color;
  final FontWeight fw;
  final double fontsize;
  final IconData prefix;
  final IconData suffix;
  final String hint;
  final TextInputType input;
  final String label;

  TextMain({this.controller, this.obscure, this.color, this.fw, this.fontsize,
      this.prefix, this.suffix, this.hint, this.input, this.label});

  @override
  _TextMainState createState() => _TextMainState();
}

class _TextMainState extends State<TextMain> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: widget.controller,
      obscureText: (widget.obscure==true)?widget.isObscure:!widget.isObscure,
      style: TextStyle(
        color: widget.color,
        fontWeight: widget.fw,
        fontSize: widget.fontsize,
        fontFamily: "Ubuntu",
      ),
      decoration: InputDecoration(
        // labelText: widget.label,
        // labelStyle: TextStyle(
        //   fontFamily: 'Questrial',
        //   fontSize: 20.0,
        //   letterSpacing: 1.5,
        //   color: Colors.black,
        // ),
        border: const OutlineInputBorder(
          gapPadding: 10.0,
          borderRadius: BorderRadius.all(
            Radius.circular(30.0),
          ),
          // borderSide: BorderSide(
          //   // color: Colors.purpleAccent,
          //   // width: 10.0,
          //   style: BorderStyle.none,
          // ),
        ),

        focusedBorder: const OutlineInputBorder(
          // gapPadding: 10.0,
          borderRadius: BorderRadius.all(
            Radius.circular(30.0),
          ),
          // borderSide: BorderSide(
          //   // color: Colors.,
          //   width: 1.3,
          //   style: BorderStyle.none,
          // ),
        ),
        hintText: widget.hint,
        filled: true,
        fillColor: Colors.grey.shade200,
        prefixIcon: Icon(
          widget.prefix,
          size: 25.0,
          color: Colors.black,
        ),

        suffixIcon: IconButton(
          onPressed: (){
            setState(() {
              widget.isObscure = !widget.isObscure;
            });
          },

          icon: Icon(widget.isObscure&&widget.obscure?
           Icons.visibility_off:widget.suffix,
            size: 25.0,
            color: Colors.blueAccent,
          ),
        ),
        hintStyle: TextStyle(
          color: Colors.grey,
          fontSize: 12.0,
          fontWeight: FontWeight.w900,
          fontStyle: FontStyle.normal,
          fontFamily: "Ubuntu",
        ),
      ),
    );
  }
}
