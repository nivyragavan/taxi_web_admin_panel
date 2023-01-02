import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../constants/controllers.dart';
import '../constants/style.dart';
import '../helpers/responsiveness.dart';
import '../widgets/custom_text.dart';

class ManualBookingHistoryPage extends StatelessWidget {
  ManualBookingHistoryPage({Key key}) : super(key: key);

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
          Expanded(
              child: ListView(
            children: [buildManualBookingHistoryTable()],
          )),
        ],
      ),
    );
  }

  buildManualBookingHistoryTable() {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
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
        child: PaginatedDataTable(
          columns: [
            DataColumn(
                label:
                    Text('S:No', style: TextStyle(fontSize: 15, color: green))),
            DataColumn(
                label: Text('Customer Name',
                    style: TextStyle(fontSize: 15, color: green))),
            DataColumn(
                label: Text('Package',
                    style: TextStyle(fontSize: 15, color: green))),
            DataColumn(
                label:
                    Text('Cab', style: TextStyle(fontSize: 15, color: green))),
            DataColumn(
                label: Text('Pickup Location',
                    style: TextStyle(fontSize: 15, color: green))),
            DataColumn(
                label: Text('Drop Location',
                    style: TextStyle(fontSize: 15, color: green))),
            DataColumn(
                label: Text('Pickup Date',
                    style: TextStyle(fontSize: 15, color: green))),
            DataColumn(
                label: Text('Drop Date',
                    style: TextStyle(fontSize: 15, color: green))),
            DataColumn(
                label:
                    Text('KM', style: TextStyle(fontSize: 15, color: green))),
            DataColumn(
                label: Text('Price',
                    style: TextStyle(fontSize: 15, color: green))),
            DataColumn(
                label: Text('Booked by',
                    style: TextStyle(fontSize: 15, color: green))),
            DataColumn(
                label: Text('Status',
                    style: TextStyle(fontSize: 15, color: green)))
          ],
          source: dataTableSource,
          columnSpacing: 30,
          horizontalMargin: 40,
          arrowHeadColor: green,
        ),
      ),
    );
  }
}

class MyData extends DataTableSource {
  final List<Map<String, dynamic>> data = List.generate(
      20,
      (index) => {
            "S:No": index + 1,
            "customername": "Nivy",
            "package": "Tour",
            "cab": "SUV",
            "pickup": "Coimbatore",
            "drop": "Kodaikanal",
            "pickupdate": "25/05/2023",
            "dropdate": "31/05/2023",
            "km": "1000",
            "price": "20,000",
            "bookedby": "Priyanka",
            "status": "Completed",
          });

  @override
  DataRow getRow(int index) {
    return DataRow(cells: [
      DataCell(Text(data[index]["S:No"].toString())),
      DataCell(Text(data[index]["customername"])),
      DataCell(Text(data[index]["package"])),
      DataCell(Text(data[index]["cab"])),
      DataCell(Text(data[index]["pickup"])),
      DataCell(Text(data[index]["drop"])),
      DataCell(Text(data[index]["pickupdate"])),
      DataCell(Text(data[index]["dropdate"])),
      DataCell(Text(data[index]["km"])),
      DataCell(Text(data[index]["price"])),
      DataCell(Text(data[index]["bookedby"])),
      DataCell(Text(data[index]["status"]))
    ]);
  }

  @override
  bool get isRowCountApproximate => false;

  @override
  int get rowCount => data.length;

  @override
  int get selectedRowCount => 0;
}
