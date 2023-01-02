import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../constants/controllers.dart';
import '../constants/style.dart';
import '../helpers/responsiveness.dart';
import '../widgets/custom_text.dart';

class AddVendorPage extends StatelessWidget {
  const AddVendorPage({Key key}) : super(key: key);

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
                buildAddVendorLarge()
              else
                buildAddVendorSmall(),
            ],
          )),
        ],
      ),
    );
  }

  buildAddVendorLarge() {
    return ListView.separated(
      padding: const EdgeInsets.all(10),
      itemCount: 10,
      shrinkWrap: true,
      itemBuilder: (context, index) {
        return Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Card(
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Row(
                      children: const [
                        CustomText(
                          text: 'Name :',
                          weight: FontWeight.bold,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        CustomText(
                          text: 'Bremi Nivedhaa',
                        )
                      ],
                    ),
                  ),
                ),
                Card(
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Row(
                      children: const [
                        CustomText(
                          text: 'Phone Number :',
                          weight: FontWeight.bold,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        CustomText(
                          text: '6382136965',
                        )
                      ],
                    ),
                  ),
                ),
                Card(
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Row(
                      children: [
                        const CustomText(
                          text: 'Aadhaar Front :',
                          weight: FontWeight.bold,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        OutlinedButton(
                          style: OutlinedButton.styleFrom(
                              side: BorderSide(color: green)),
                          onPressed: () {},
                          child: const CustomText(text: 'View'),
                        )
                      ],
                    ),
                  ),
                ),
                Card(
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Row(
                      children: [
                        const CustomText(
                          text: 'Aadhaar Back :',
                          weight: FontWeight.bold,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        OutlinedButton(
                          style: OutlinedButton.styleFrom(
                              side: BorderSide(color: green)),
                          onPressed: () {},
                          child: const CustomText(text: 'View'),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Card(
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Row(
                      children: [
                        const CustomText(
                          text: 'Pan Card :',
                          weight: FontWeight.bold,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        OutlinedButton(
                          style: OutlinedButton.styleFrom(
                              side: BorderSide(color: green)),
                          onPressed: () {},
                          child: const CustomText(text: 'View'),
                        )
                      ],
                    ),
                  ),
                ),
                Card(
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Row(
                      children: [
                        const CustomText(
                          text: 'Passbook :',
                          weight: FontWeight.bold,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        OutlinedButton(
                          style: OutlinedButton.styleFrom(
                              side: BorderSide(color: green)),
                          onPressed: () {},
                          child: const CustomText(text: 'View'),
                        )
                      ],
                    ),
                  ),
                ),
                Card(
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Row(
                      children: [
                        const CustomText(
                          text: 'Rental agreement 1st page :',
                          weight: FontWeight.bold,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        OutlinedButton(
                          style: OutlinedButton.styleFrom(
                              side: BorderSide(color: green)),
                          onPressed: () {},
                          child: const CustomText(text: 'View'),
                        )
                      ],
                    ),
                  ),
                ),
                Card(
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Row(
                      children: [
                        const CustomText(
                          text: 'Rental agreement 2nd page :',
                          weight: FontWeight.bold,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        OutlinedButton(
                          style: OutlinedButton.styleFrom(
                              side: BorderSide(color: green)),
                          onPressed: () {},
                          child: const CustomText(text: 'View'),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.green,
                        fixedSize: const Size(250, 40)),
                    onPressed: () {},
                    child: const CustomText(
                      text: 'Accept',
                      color: Colors.white,
                    )),
                SizedBox(
                  width: 250,
                  height: 40,
                  child: TextFormField(
                    decoration: InputDecoration(
                        border: const OutlineInputBorder(),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: green)),
                        hintText: 'Reason of Rejection'),
                  ),
                ),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.red,
                        fixedSize: const Size(250, 40)),
                    onPressed: () {},
                    child: const CustomText(
                      text: 'Reject',
                      color: Colors.white,
                    ))
              ],
            ),
            const SizedBox(height: 10)
          ],
        );
      },
      separatorBuilder: (context, index) {
        return const Divider(thickness: 2);
      },
    );
  }

  buildAddVendorSmall() {
    return ListView.separated(
        itemCount: 2,
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return Column(
            children: [
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      CustomText(
                        text: 'Name :',
                        weight: FontWeight.bold,
                      ),
                      CustomText(
                        text: 'Bremi Nivedhaa',
                      )
                    ],
                  ),
                ),
              ),
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      CustomText(
                        text: 'Phone Number :',
                        weight: FontWeight.bold,
                      ),
                      CustomText(
                        text: '6382136965',
                      )
                    ],
                  ),
                ),
              ),
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const CustomText(
                        text: 'Aadhaar Front :',
                        weight: FontWeight.bold,
                      ),
                      OutlinedButton(
                        style: OutlinedButton.styleFrom(
                            side: BorderSide(color: green)),
                        onPressed: () {},
                        child: const CustomText(text: 'View'),
                      )
                    ],
                  ),
                ),
              ),
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const CustomText(
                        text: 'Aadhaar Back :',
                        weight: FontWeight.bold,
                      ),
                      OutlinedButton(
                        style: OutlinedButton.styleFrom(
                            side: BorderSide(color: green)),
                        onPressed: () {},
                        child: const CustomText(text: 'View'),
                      )
                    ],
                  ),
                ),
              ),
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const CustomText(
                        text: 'Pan Card :',
                        weight: FontWeight.bold,
                      ),
                      OutlinedButton(
                        style: OutlinedButton.styleFrom(
                            side: BorderSide(color: green)),
                        onPressed: () {},
                        child: const CustomText(text: 'View'),
                      )
                    ],
                  ),
                ),
              ),
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const CustomText(
                        text: 'Passbook :',
                        weight: FontWeight.bold,
                      ),
                      OutlinedButton(
                        style: OutlinedButton.styleFrom(
                            side: BorderSide(color: green)),
                        onPressed: () {},
                        child: const CustomText(text: 'View'),
                      )
                    ],
                  ),
                ),
              ),
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const CustomText(
                        text: 'Rental agreement 1st page :',
                        weight: FontWeight.bold,
                      ),
                      OutlinedButton(
                        style: OutlinedButton.styleFrom(
                            side: BorderSide(color: green)),
                        onPressed: () {},
                        child: const CustomText(text: 'View'),
                      )
                    ],
                  ),
                ),
              ),
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const CustomText(
                        text: 'Rental agreement 2nd page :',
                        weight: FontWeight.bold,
                      ),
                      OutlinedButton(
                        style: OutlinedButton.styleFrom(
                            side: BorderSide(color: green)),
                        onPressed: () {},
                        child: const CustomText(text: 'View'),
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 10),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green,
                      fixedSize: const Size(250, 40)),
                  onPressed: () {},
                  child: const CustomText(
                    text: 'Accept',
                    color: Colors.white,
                  )),
              const SizedBox(height: 10),
              SizedBox(
                height: 40,
                child: TextFormField(
                  decoration: InputDecoration(
                      border: const OutlineInputBorder(),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: green)),
                      hintText: 'Reason of Rejection'),
                ),
              ),
              const SizedBox(height: 10),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red,
                      fixedSize: const Size(250, 40)),
                  onPressed: () {},
                  child: const CustomText(
                    text: 'Reject',
                    color: Colors.white,
                  )),
              const SizedBox(height: 10),
            ],
          );
        },
        separatorBuilder: (context, index) {
          return const Divider(thickness: 2);
        });
  }
}
