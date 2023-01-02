import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../constants/controllers.dart';
import '../constants/style.dart';
import '../helpers/responsiveness.dart';
import '../widgets/custom_text.dart';

class PackageAndCabPage extends StatelessWidget {
  const PackageAndCabPage({Key key}) : super(key: key);

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
                buildPackageCabLarge()
              else
                buildPackageCabSmall()
            ],
          ))
        ],
      ),
    );
  }

  buildPackageCabLarge() {
    return Row(
      children: [
        buildPackageLarge(),
        Container(width: 2, height: 200, color: lightGrey),
        buildCabLarge(),
        Container(width: 2, height: 200, color: lightGrey),
        buildRentalHoursLarge()
      ],
    );
  }

  buildPackageCabSmall() {
    return Column(
      children: [
        buildPackageSmall(),
        const SizedBox(height: 10),
        const Divider(thickness: 2),
        const SizedBox(height: 10),
        buildCabSmall(),
        const SizedBox(height: 10),
        const Divider(thickness: 2),
        const SizedBox(height: 10),
        buildRentalHoursSmall()
      ],
    );
  }

  buildPackageLarge() {
    return Expanded(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 200,
                child: TextField(
                    cursorColor: green,
                    decoration: InputDecoration(
                        contentPadding: const EdgeInsets.all(10),
                        border: const OutlineInputBorder(),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: green)),
                        hintText: 'Enter Package')),
              ),
              const SizedBox(width: 20),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: green, fixedSize: const Size(70, 30)),
                  onPressed: () {},
                  child: const Text(
                    'Add',
                    style: TextStyle(color: Colors.white),
                  ))
            ],
          ),
          const SizedBox(height: 20),
          Container(
            width: 300,
            height: 200,
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: active.withOpacity(.4), width: .5),
              boxShadow: [
                BoxShadow(
                    offset: const Offset(0, 6),
                    color: lightGrey.withOpacity(.1),
                    blurRadius: 12)
              ],
              borderRadius: BorderRadius.circular(8),
            ),
            child: DataTable2(
                columnSpacing: 12,
                horizontalMargin: 12,
                minWidth: 200,
                columns: const [
                  DataColumn(label: Text("S:No")),
                  DataColumn(
                    label: Text("Package"),
                  )
                ],
                rows: List<DataRow>.generate(
                    4,
                    (index) => const DataRow(cells: [
                          DataCell(CustomText(
                            text: ('1'),
                            size: 12,
                            weight: FontWeight.normal,
                            color: Colors.black,
                          )),
                          DataCell(CustomText(
                            text: ('Outstation'),
                            weight: FontWeight.normal,
                            size: 12,
                            color: Colors.black,
                          ))
                        ])).toList()),
          )
        ],
      ),
    );
  }

  buildPackageSmall() {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 200,
              child: TextField(
                  cursorColor: green,
                  decoration: InputDecoration(
                      contentPadding: const EdgeInsets.all(10),
                      border: const OutlineInputBorder(),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: green)),
                      hintText: 'Enter Package')),
            ),
            const SizedBox(width: 20),
            CircleAvatar(
              radius: 20,
              backgroundColor: green,
              child: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.add,
                    color: black,
                  )),
            )
          ],
        ),
        const SizedBox(height: 20),
        Container(
          width: 300,
          height: 200,
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: active.withOpacity(.4), width: .5),
            boxShadow: [
              BoxShadow(
                  offset: const Offset(0, 6),
                  color: lightGrey.withOpacity(.1),
                  blurRadius: 12)
            ],
            borderRadius: BorderRadius.circular(8),
          ),
          child: DataTable2(
              columnSpacing: 12,
              horizontalMargin: 12,
              minWidth: 200,
              columns: const [
                DataColumn(label: Text("S:No")),
                DataColumn(
                  label: Text("Package"),
                )
              ],
              rows: List<DataRow>.generate(
                  4,
                  (index) => const DataRow(cells: [
                        DataCell(CustomText(
                          text: ('1'),
                          size: 12,
                          weight: FontWeight.normal,
                          color: Colors.black,
                        )),
                        DataCell(CustomText(
                          text: ('Outstation'),
                          weight: FontWeight.normal,
                          size: 12,
                          color: Colors.black,
                        ))
                      ])).toList()),
        )
      ],
    );
  }

  buildCabLarge() {
    return Expanded(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 200,
                child: TextField(
                    cursorColor: green,
                    decoration: InputDecoration(
                        contentPadding: const EdgeInsets.all(10),
                        border: const OutlineInputBorder(),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: green)),
                        hintText: 'Enter Cab')),
              ),
              const SizedBox(width: 20),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: green, fixedSize: const Size(70, 30)),
                  onPressed: () {},
                  child: const Text(
                    'Add',
                    style: TextStyle(color: Colors.white),
                  ))
            ],
          ),
          const SizedBox(height: 20),
          Container(
            width: 300,
            height: 200,
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: active.withOpacity(.4), width: .5),
              boxShadow: [
                BoxShadow(
                    offset: const Offset(0, 6),
                    color: lightGrey.withOpacity(.1),
                    blurRadius: 12)
              ],
              borderRadius: BorderRadius.circular(8),
            ),
            child: DataTable2(
                columnSpacing: 12,
                horizontalMargin: 12,
                minWidth: 200,
                columns: const [
                  DataColumn(label: Text("S:No")),
                  DataColumn(
                    label: Text("Cab Type"),
                  )
                ],
                rows: List<DataRow>.generate(
                    4,
                    (index) => const DataRow(cells: [
                          DataCell(CustomText(
                            text: ('1'),
                            size: 12,
                            weight: FontWeight.normal,
                            color: Colors.black,
                          )),
                          DataCell(CustomText(
                            text: ('Sedan'),
                            weight: FontWeight.normal,
                            size: 12,
                            color: Colors.black,
                          ))
                        ])).toList()),
          )
        ],
      ),
    );
  }

  buildCabSmall() {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 200,
              child: TextField(
                  cursorColor: green,
                  decoration: InputDecoration(
                      contentPadding: const EdgeInsets.all(10),
                      border: const OutlineInputBorder(),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: green)),
                      hintText: 'Enter Cab')),
            ),
            const SizedBox(width: 20),
            CircleAvatar(
              radius: 20,
              backgroundColor: green,
              child: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.add,
                    color: black,
                  )),
            )
          ],
        ),
        const SizedBox(height: 20),
        Container(
          width: 300,
          height: 200,
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: active.withOpacity(.4), width: .5),
            boxShadow: [
              BoxShadow(
                  offset: const Offset(0, 6),
                  color: lightGrey.withOpacity(.1),
                  blurRadius: 12)
            ],
            borderRadius: BorderRadius.circular(8),
          ),
          child: DataTable2(
              columnSpacing: 12,
              horizontalMargin: 12,
              minWidth: 200,
              columns: const [
                DataColumn(label: Text("S:No")),
                DataColumn(
                  label: Text("Cab Type"),
                )
              ],
              rows: List<DataRow>.generate(
                  4,
                  (index) => const DataRow(cells: [
                        DataCell(CustomText(
                          text: ('1'),
                          size: 12,
                          weight: FontWeight.normal,
                          color: Colors.black,
                        )),
                        DataCell(CustomText(
                          text: ('Sedan'),
                          weight: FontWeight.normal,
                          size: 12,
                          color: Colors.black,
                        ))
                      ])).toList()),
        )
      ],
    );
  }

  buildRentalHoursLarge() {
    return Expanded(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 200,
                child: TextField(
                    cursorColor: green,
                    decoration: InputDecoration(
                        contentPadding: const EdgeInsets.all(10),
                        border: const OutlineInputBorder(),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: green)),
                        hintText: 'Enter Rental Hours')),
              ),
              const SizedBox(width: 20),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: green, fixedSize: const Size(70, 30)),
                  onPressed: () {},
                  child: const Text(
                    'Add',
                    style: TextStyle(color: Colors.white),
                  ))
            ],
          ),
          const SizedBox(height: 20),
          Container(
            width: 300,
            height: 200,
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: active.withOpacity(.4), width: .5),
              boxShadow: [
                BoxShadow(
                    offset: const Offset(0, 6),
                    color: lightGrey.withOpacity(.1),
                    blurRadius: 12)
              ],
              borderRadius: BorderRadius.circular(8),
            ),
            child: DataTable2(
                columnSpacing: 12,
                horizontalMargin: 12,
                minWidth: 200,
                columns: const [
                  DataColumn(label: Text("S:No")),
                  DataColumn(
                    label: Text("Rental Hours"),
                  )
                ],
                rows: List<DataRow>.generate(
                    4,
                    (index) => const DataRow(cells: [
                          DataCell(CustomText(
                            text: ('1'),
                            size: 12,
                            weight: FontWeight.normal,
                            color: Colors.black,
                          )),
                          DataCell(CustomText(
                            text: ('1 Hour'),
                            weight: FontWeight.normal,
                            size: 12,
                            color: Colors.black,
                          ))
                        ])).toList()),
          )
        ],
      ),
    );
  }

  buildRentalHoursSmall() {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 200,
              child: TextField(
                  cursorColor: green,
                  decoration: InputDecoration(
                      contentPadding: const EdgeInsets.all(10),
                      border: const OutlineInputBorder(),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: green)),
                      hintText: 'Enter Rental Hours')),
            ),
            const SizedBox(width: 20),
            CircleAvatar(
              radius: 20,
              backgroundColor: green,
              child: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.add,
                    color: black,
                  )),
            )
          ],
        ),
        const SizedBox(height: 20),
        Container(
          width: 300,
          height: 200,
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: active.withOpacity(.4), width: .5),
            boxShadow: [
              BoxShadow(
                  offset: const Offset(0, 6),
                  color: lightGrey.withOpacity(.1),
                  blurRadius: 12)
            ],
            borderRadius: BorderRadius.circular(8),
          ),
          child: DataTable2(
              columnSpacing: 12,
              horizontalMargin: 12,
              minWidth: 200,
              columns: const [
                DataColumn(label: Text("S:No")),
                DataColumn(
                  label: Text("Rental Hours"),
                )
              ],
              rows: List<DataRow>.generate(
                  4,
                  (index) => const DataRow(cells: [
                        DataCell(CustomText(
                          text: ('1'),
                          size: 12,
                          weight: FontWeight.normal,
                          color: Colors.black,
                        )),
                        DataCell(CustomText(
                          text: ('1 Hour'),
                          weight: FontWeight.normal,
                          size: 12,
                          color: Colors.black,
                        ))
                      ])).toList()),
        )
      ],
    );
  }
}
