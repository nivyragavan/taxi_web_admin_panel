import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../constants/controllers.dart';
import '../constants/style.dart';
import '../helpers/responsiveness.dart';
import '../widgets/custom_text.dart';

class LocationPage extends StatelessWidget {
  const LocationPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Obx(
            () => Row(
              children: [
                Container(
                    margin: EdgeInsets.only(
                        top: ResponsiveWidget.isSmallScreen(context) ? 56 : 6),
                    child: CustomText(
                      text: menuController.activeItem.value,
                      size: 20,
                      weight: FontWeight.bold,
                      color: green,
                    )),
              ],
            ),
          ),
          Expanded(
              child: ListView(
            children: [
              if (!ResponsiveWidget.isSmallScreen(context))
                buildLocationTextFieldsLarge()
              else
                buildLocationTextFieldsSmall(),
            ],
          )),
        ],
      ),
    );
  }

  buildLocationTextFieldsLarge() {
    return Row(
      children: [
        Expanded(
          child: TextField(
            cursorColor: green,
            decoration: InputDecoration(
                contentPadding: const EdgeInsets.all(10),
                border: const OutlineInputBorder(),
                focusedBorder:
                    OutlineInputBorder(borderSide: BorderSide(color: green)),
                hintText: 'Enter Location'),
          ),
        ),
        const SizedBox(width: 10),
        Expanded(
          child: TextField(
            cursorColor: green,
            decoration: InputDecoration(
                contentPadding: const EdgeInsets.all(10),
                border: const OutlineInputBorder(),
                focusedBorder:
                    OutlineInputBorder(borderSide: BorderSide(color: green)),
                hintText: 'Enter from pincode'),
          ),
        ),
        const SizedBox(width: 10),
        Expanded(
          child: TextField(
            cursorColor: green,
            decoration: InputDecoration(
                contentPadding: const EdgeInsets.all(10),
                border: const OutlineInputBorder(),
                focusedBorder:
                    OutlineInputBorder(borderSide: BorderSide(color: green)),
                hintText: 'Enter to pincode'),
          ),
        ),
        const SizedBox(width: 10),
        Expanded(
          child: TextField(
            cursorColor: green,
            decoration: InputDecoration(
                contentPadding: const EdgeInsets.all(10),
                border: const OutlineInputBorder(),
                focusedBorder:
                    OutlineInputBorder(borderSide: BorderSide(color: green)),
                hintText: 'Select specific place'),
          ),
        ),
      ],
    );
  }

  buildLocationTextFieldsSmall() {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: TextField(
                cursorColor: green,
                decoration: InputDecoration(
                    contentPadding: const EdgeInsets.all(10),
                    border: const OutlineInputBorder(),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: green)),
                    hintText: 'Enter Location'),
              ),
            ),
            const SizedBox(width: 10),
            Expanded(
              child: TextField(
                cursorColor: green,
                decoration: InputDecoration(
                    contentPadding: const EdgeInsets.all(10),
                    border: const OutlineInputBorder(),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: green)),
                    hintText: 'Enter from pincode'),
              ),
            ),
          ],
        ),
        const SizedBox(height: 10),
        Row(
          children: [
            Expanded(
              child: TextField(
                cursorColor: green,
                decoration: InputDecoration(
                    contentPadding: const EdgeInsets.all(10),
                    border: const OutlineInputBorder(),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: green)),
                    hintText: 'Enter to pincode'),
              ),
            ),
            const SizedBox(width: 10),
            Expanded(
              child: TextField(
                cursorColor: green,
                decoration: InputDecoration(
                    contentPadding: const EdgeInsets.all(10),
                    border: const OutlineInputBorder(),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: green)),
                    hintText: 'Select specific place'),
              ),
            ),
          ],
        )
      ],
    );
  }
}
