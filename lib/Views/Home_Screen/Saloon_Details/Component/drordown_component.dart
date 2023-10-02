import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DropdownMenuExample extends StatefulWidget {

   DropdownMenuExample({super.key});

  @override
  State<DropdownMenuExample> createState() => _DropdownMenuExampleState();
}

class _DropdownMenuExampleState extends State<DropdownMenuExample> {
  String dropdownValue = "Hair Cut";
  List<String> list = <String>['Hair Cut', 'Short', 'Medium', 'Tuner','Special'];



  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.only(top: 10.h),
      child: Column(
        children: [
          DropdownMenu<String>(
            width: 300,

            initialSelection: dropdownValue,
            onSelected: (String? value) {

              setState(() {
                dropdownValue = value!;
              });
            },
            dropdownMenuEntries: list.map<DropdownMenuEntry<String>>((String value) {
              return DropdownMenuEntry<String>(

                  trailingIcon: const Row(children: [
                    Text("20 min",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400,color: Colors.grey),),
                    SizedBox(width: 5,),
                    Text("30",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400,color: Colors.black),),
                    SizedBox(width: 2,),
                    Icon(Icons.circle,color: Colors.grey,)

                  ]),
                  value: value, label: value);
            }).toList(),
          ),
          SizedBox(height: 5.h,),
          DropdownMenu(
              width: 300.w,
              hintText: "Beard",
              trailingIcon: Icon(Icons.arrow_drop_down),
              dropdownMenuEntries: List.empty()),
          SizedBox(height: 5.h,),
          DropdownMenu(
              width: 300.w,
              hintText: "Facials",
              trailingIcon: Icon(Icons.arrow_drop_down),
              dropdownMenuEntries: List.empty()),
          SizedBox(height: 5.h,),
          DropdownMenu(
              width: 300.w,
              hintText: "Hair Color",
              trailingIcon: Icon(Icons.arrow_drop_down),
              dropdownMenuEntries: List.empty()),
          SizedBox(height: 5.h,),
          DropdownMenu(
              width: 300.w,
              hintText: "Manicure",
              trailingIcon: Icon(Icons.arrow_drop_down),
              dropdownMenuEntries: List.empty()),
          SizedBox(height: 5.h,),
          DropdownMenu(
              width: 300.w,
              hintText: "Pedicure",
              trailingIcon: Icon(Icons.arrow_drop_down),
              dropdownMenuEntries: List.empty()),
          SizedBox(height: 5.h,),
          DropdownMenu(
              width: 300.w,
              hintText: "Waxing",
              trailingIcon: Icon(Icons.arrow_drop_down),
              dropdownMenuEntries: List.empty()),
          SizedBox(height: 5.h,),
          DropdownMenu(
              width: 300.w,
              hintText: "Massage",
              trailingIcon: Icon(Icons.arrow_drop_down),
              dropdownMenuEntries: List.empty()),
          SizedBox(height: 5.h,),
          DropdownMenu(
              width: 300,
              hintText: "Mackup",
              trailingIcon: Icon(Icons.arrow_drop_down),
              dropdownMenuEntries: List.empty()),
        ],
      ),
    );
  }
}
