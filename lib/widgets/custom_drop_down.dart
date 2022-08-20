import 'package:flutter/material.dart';
import 'package:love_in_store/utils/controllers.dart';

// Custom Drop Down Menu Button
class CustomDropDown extends StatefulWidget {
  final String hintText;
  final bool required;
  final List<DropdownMenuItem<String>> list;
  final String? activeState;

  const CustomDropDown(
      {Key? key,
      required this.hintText,
      required this.required,
      required this.list,
      this.activeState})
      : super(key: key);

  @override
  State<CustomDropDown> createState() => _CustomDropDownState();
}

class _CustomDropDownState extends State<CustomDropDown> {
  String? controller;

  @override
  initState(){
    if(widget.activeState!=''){
      controller = widget.activeState;
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.all(12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '${widget.hintText}${widget.required == true ? ' *' : ''}:',
            style: const TextStyle(
                color: Colors.redAccent,
                fontWeight: FontWeight.w500,
                fontSize: 13),
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: Colors.black12,
              border: Border.all(width: 2, color: Colors.black12),
            ),
            width: width,
            height: 60,
            child: DropdownButtonHideUnderline(
              child: DropdownButton(
                alignment: Alignment.bottomCenter,
                isExpanded: true,
                items: widget.list,
                value: controller,
                onChanged: (String? value) {
                  setState(() {
                    controller = value ;
                    stateController.text = value ?? '';
                  });
                },
                elevation: 5,
                hint: Text(widget.hintText),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
