import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../constants/controllers.dart';
import '../constants/style.dart';
import '../helpers/responsiveness.dart';
import '../widgets/custom_text.dart';

class VendorPage extends StatefulWidget {
  const VendorPage({Key key}) : super(key: key);

  @override
  State<VendorPage> createState() => _VendorPageState();
}

class _VendorPageState extends State<VendorPage> {
  final DataTableSource dataTableSource = MyData();

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
          const SizedBox(height: 50),
          Expanded(
              child: ListView(
            children: [
              if (!ResponsiveWidget.isSmallScreen(context))
                buildSearchLarge()
              else
                buildSearchSmall(),
              const SizedBox(height: 20),
              buildVendorsTable()
            ],
          )),
        ],
      ),
    );
  }

  buildSearchLarge() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [buildSearchBar(), buildDownloadButton()],
    );
  }

  buildSearchSmall() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        buildSearchBar(),
        const SizedBox(height: 15),
        buildDownloadButton()
      ],
    );
  }

  buildSearchBar() {
    return Container(
      width: 300,
      height: 40,
      child: TextField(
        cursorColor: green,
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.all(10),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(5)),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5),
              borderSide: BorderSide(color: green)),
          suffixIcon: Icon(Icons.search, color: green),
          hintText: "Search by ID",
        ),
      ),
    );
  }

  buildDownloadButton() {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
            primary: green, fixedSize: const Size(200, 40)),
        onPressed: () {},
        child: const Text(
          'Download',
          style: TextStyle(color: Colors.white, fontSize: 20),
        ));
  }

  buildVendorsTable() {
    return Container(
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
      margin: const EdgeInsets.only(bottom: 30),
      child: PaginatedDataTable(
        columns: [
          DataColumn(
              label: Text('Id', style: TextStyle(fontSize: 15, color: green))),
          DataColumn(
              label:
                  Text('Name', style: TextStyle(fontSize: 15, color: green))),
          DataColumn(
              label: Text('Phone Number',
                  style: TextStyle(fontSize: 15, color: green))),
          DataColumn(
              label:
                  Text('Email', style: TextStyle(fontSize: 15, color: green))),
          DataColumn(
              label: Text('Aadhaar Front',
                  style: TextStyle(fontSize: 15, color: green))),
          DataColumn(
              label: Text('Aadhaar Back',
                  style: TextStyle(fontSize: 15, color: green))),
          DataColumn(
              label: Text('Pan Card',
                  style: TextStyle(fontSize: 15, color: green))),
          DataColumn(
              label: Text('Rental Agreement 1',
                  style: TextStyle(fontSize: 15, color: green))),
          DataColumn(
              label: Text('Rental Agreement 2',
                  style: TextStyle(fontSize: 15, color: green))),
        ],
        source: dataTableSource,
        columnSpacing: 30,
        horizontalMargin: 40,
        arrowHeadColor: green,
      ),
    );
  }
}

class MyData extends DataTableSource {
  final List<Map<String, dynamic>> data = List.generate(
      20,
      (index) => {
            "id": index + 1,
            "name": "Nivy",
            "number": "6382136965",
            "email": "nivy@gmail.com"
          });

  @override
  DataRow getRow(int index) {
    return DataRow(cells: [
      DataCell(Text(data[index]["id"].toString())),
      DataCell(Text(data[index]["name"])),
      DataCell(Text(data[index]["number"])),
      DataCell(Text(data[index]["email"])),
      DataCell(OutlinedButton(
          style: OutlinedButton.styleFrom(side: BorderSide(color: green)),
          onPressed: () {},
          child: Icon(Icons.download_rounded, color: green))),
      DataCell(OutlinedButton(
          style: OutlinedButton.styleFrom(side: BorderSide(color: green)),
          onPressed: () {},
          child: Icon(Icons.download_rounded, color: green))),
      DataCell(OutlinedButton(
          style: OutlinedButton.styleFrom(side: BorderSide(color: green)),
          onPressed: () {},
          child: Icon(Icons.download_rounded, color: green))),
      DataCell(OutlinedButton(
          style: OutlinedButton.styleFrom(side: BorderSide(color: green)),
          onPressed: () {},
          child: Icon(Icons.download_rounded, color: green))),
      DataCell(OutlinedButton(
          style: OutlinedButton.styleFrom(side: BorderSide(color: green)),
          onPressed: () {},
          child: Icon(Icons.download_rounded, color: green))),
    ]);
  }

  @override
  bool get isRowCountApproximate => false;

  @override
  int get rowCount => data.length;

  @override
  int get selectedRowCount => 0;
}
