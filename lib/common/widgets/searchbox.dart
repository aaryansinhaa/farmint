import 'package:farmint_admin_assignment/common/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomSearchBar extends StatelessWidget {
  final TextEditingController controller;
  final Function(String)? onSubmitted;

  const CustomSearchBar({Key? key, required this.controller, this.onSubmitted})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: ColorConstants.whiteBG,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 6,
              offset: Offset(0, 3),
            )
          ],
        ),
        child: Row(
          children: [
            GestureDetector(
              onTap: () {
                // if ((controller.text).replaceAll(" ", "") != "") {
                //   Navigator.push(
                //     context,
                //     MaterialPageRoute(
                //       builder: (context) => Search(controller.text),
                //     ),
                //   );
                // }
              },
              child: Padding(
                padding: const EdgeInsets.all(8),
                child: Icon(Icons.search_sharp),
              ),
            ),
            Expanded(
              child: TextField(
                controller: controller,
                style: GoogleFonts.montserrat(
                  color: Colors.grey,
                  fontSize: 14,
                ),
                decoration: InputDecoration(
                  hintText: "Search",
                  border: InputBorder.none,
                ),
                textInputAction: TextInputAction.search,
                onSubmitted: onSubmitted,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
