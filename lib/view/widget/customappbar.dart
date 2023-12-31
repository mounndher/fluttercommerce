import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  final String titleappbar;
  final void Function()? onPressedIcon;
  final void Function()? onPressedSearch;
  const CustomAppBar({
    super.key, required this.titleappbar,
     this.onPressedIcon, this.onPressedSearch});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10),
      padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 10),
      child: Row(children: [
        Expanded(
          child: TextFormField(
            decoration: InputDecoration(
              prefixIcon: IconButton(onPressed: onPressedSearch, 
              icon: const Icon(Icons.search)) ,
              hintText: titleappbar,
              helperStyle: const TextStyle(fontSize: 19),
              border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(10)),
              filled: true,
              fillColor: Colors.grey[200],
            ),
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        Container(
            decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(10)),
            width: 60,
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: IconButton(
              icon: Icon(
                Icons.notifications_active_outlined,
                size: 33,
                color: Colors.grey[600],
              ),
              onPressed: onPressedIcon,
            ))
      ]),
    );
  }
}
