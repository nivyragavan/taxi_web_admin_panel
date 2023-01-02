import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import '../constants/controllers.dart';
import '../constants/style.dart';
import '../helpers/responsiveness.dart';
import '../widgets/custom_text.dart';

class SubAdminPage extends StatefulWidget {
  SubAdminPage({Key key}) : super(key: key);

  @override
  State<SubAdminPage> createState() => _SubAdminPageState();
}

class _SubAdminPageState extends State<SubAdminPage> {
  // final name = TextEditingController();
  // final phonenumber = TextEditingController();
  // final designation = TextEditingController();
  // final email = TextEditingController();
  // final password = TextEditingController();
  // final box = GetStorage();
  //
  // //Uint8List filePath;
  // //File imageFile;
  // PlatformFile imageFile;
  //
  // SubAdminListModel subAdminList;
  // var isLoading = false;
  //
  // @override
  // void initState() {
  //   super.initState();
  //   getData();
  // }
  //
  // getData() async {
  //   subAdminList = (await APIService().subAdminList());
  //   if (subAdminList != null) {
  //     setState(() {
  //       isLoading = true;
  //     });
  //   }
  // }

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
            children: [
              if (ResponsiveWidget.isLargeScreen(context) ||
                  ResponsiveWidget.isMediumScreen(context))
                if (ResponsiveWidget.isCustomSize(context))
                  buildAddSubAdminLarge(context)
                else
                  buildAddSubAdminLarge(context)
              else
                buildAddSubAdminSmall(context),
              const SizedBox(height: 50),
              const Divider(thickness: 2),
              const SizedBox(height: 50),
              Text(
                'Sub-Admin List',
                style: TextStyle(
                    fontSize: 20, color: green, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 10,
              ),
              buildSubAdminTable()
            ],
          ))
        ],
      ),
    );
  }

  buildAddSubAdminLarge(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Add Sub-Admin',
          style: TextStyle(
              fontSize: 20, color: green, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 20),
        Row(
          children: [
            Expanded(
              child: TextFormField(
                // controller: name,
                cursorColor: green,
                decoration: InputDecoration(
                    contentPadding: const EdgeInsets.all(10),
                    hintText: "Enter Name",
                    border: const OutlineInputBorder(),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: green))),
              ),
            ),
            const SizedBox(width: 10),
            Expanded(
              child: TextFormField(
                // controller: phonenumber,
                cursorColor: green,
                decoration: InputDecoration(
                    contentPadding: const EdgeInsets.all(10),
                    hintText: "Enter Phone Number",
                    border: const OutlineInputBorder(),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: green))),
              ),
            ),
            const SizedBox(width: 10),
            Expanded(
              child: TextFormField(
                // controller: designation,
                cursorColor: green,
                decoration: InputDecoration(
                    contentPadding: const EdgeInsets.all(10),
                    hintText: "Enter Designation",
                    border: const OutlineInputBorder(),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: green))),
              ),
            ),
          ],
        ),
        const SizedBox(height: 20),
        Row(
          children: [
            Expanded(
              child: TextFormField(
                // controller: email,
                cursorColor: green,
                decoration: InputDecoration(
                    contentPadding: const EdgeInsets.all(10),
                    hintText: "Enter Email Address",
                    border: const OutlineInputBorder(),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: green))),
              ),
            ),
            const SizedBox(width: 10),
            Expanded(
              child: TextFormField(
                // controller: password,
                cursorColor: green,
                decoration: InputDecoration(
                    contentPadding: const EdgeInsets.all(10),
                    hintText: "Enter Password",
                    border: const OutlineInputBorder(),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: green))),
              ),
            ),
            const SizedBox(width: 10),
            Expanded(
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(primary: green),
                    // onPressed: () async {
                    //   // if (imageFile == null) {
                    //   var data = await APIService().createSubAdmin(
                    //     name.text,
                    //     phonenumber.text,
                    //     designation.text,
                    //     email.text,
                    //     password.text,
                    //     // ''
                    //   );
                    //   if (data['success'] == true) {
                    //     box.write("token", data["token"]);
                    //     print('success');
                    //     print(data);
                    //   } else {
                    //     print('failed');
                    //   }
                    //   // } else {
                    //   //   var data = await APIService().uploadImage(
                    //   //       imageFile.readStream,
                    //   //       imageFile.size,
                    //   //       "imagefile",
                    //   //       'http://3.110.225.148:8800/admin/uploadfile');
                    //   //   if (data['success'] == true) {
                    //   //     print('success');
                    //   //     print(data);
                    //   //   } else {
                    //   //     print('failed');
                    //   //     return null;
                    //   //   }
                    //   // }
                    // },
                    onPressed: () {},
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.30,
                      height: 45,
                      padding: const EdgeInsets.all(10),
                      child: const Center(
                        child: Text(
                          'Submit',
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                      ),
                    )))
          ],
        )
      ],
    );
  }

  buildAddSubAdminSmall(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Add Sub-Admin',
          style: TextStyle(
              fontSize: 20, color: green, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 20),
        Row(
          children: [
            Expanded(
              child: TextFormField(
                // controller: name,
                cursorColor: green,
                decoration: InputDecoration(
                    contentPadding: const EdgeInsets.all(10),
                    hintText: "Enter Name",
                    border: const OutlineInputBorder(),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: green))),
              ),
            ),
            const SizedBox(width: 10),
            Expanded(
              child: TextFormField(
                // controller: phonenumber,
                cursorColor: green,
                decoration: InputDecoration(
                    contentPadding: const EdgeInsets.all(10),
                    hintText: "Enter Phone Number",
                    border: const OutlineInputBorder(),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: green))),
              ),
            ),
          ],
        ),
        const SizedBox(height: 20),
        Row(
          children: [
            Expanded(
              child: TextFormField(
                // controller: designation,
                cursorColor: green,
                decoration: InputDecoration(
                    contentPadding: const EdgeInsets.all(10),
                    hintText: "Enter Designation",
                    border: const OutlineInputBorder(),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: green))),
              ),
            ),
            const SizedBox(width: 10),
            Expanded(
              child: TextFormField(
                // controller: email,
                cursorColor: green,
                decoration: InputDecoration(
                    contentPadding: const EdgeInsets.all(10),
                    hintText: "Enter Email Address",
                    border: const OutlineInputBorder(),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: green))),
              ),
            ),
          ],
        ),
        const SizedBox(height: 20),
        Row(
          children: [
            Expanded(
              child: TextFormField(
                // controller: password,
                cursorColor: green,
                decoration: InputDecoration(
                    contentPadding: const EdgeInsets.all(10),
                    hintText: "Enter Password",
                    border: const OutlineInputBorder(),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: green))),
              ),
            ),
            const SizedBox(width: 10),
            Expanded(
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(primary: green),
                    // onPressed: () async {
                    //   // if (imageFile == null) {
                    //   var data = await APIService().createSubAdmin(
                    //     name.text,
                    //     phonenumber.text,
                    //     designation.text,
                    //     email.text,
                    //     password.text,
                    //     // ''
                    //   );
                    //   if (data['success'] == true) {
                    //     box.write("token", data["token"]);
                    //     print('success');
                    //     print(data);
                    //   } else {
                    //     print('failed');
                    //   }
                    //   // } else {
                    //   //   var data = await APIService().uploadImage(
                    //   //       imageFile.readStream,
                    //   //       imageFile.size,
                    //   //       "imagefile",
                    //   //       'http://3.110.225.148:8800/admin/uploadfile');
                    //   //   if (data['success'] == true) {
                    //   //     print('success');
                    //   //     print(data);
                    //   //   } else {
                    //   //     print('failed');
                    //   //     return null;
                    //   //   }
                    //   // }
                    // },
                    onPressed: () {},
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.30,
                      height: 45,
                      padding: const EdgeInsets.all(10),
                      child: const Center(
                        child: Text(
                          'Submit',
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                      ),
                    )))
          ],
        )
      ],
    );
  }

  buildSubAdminTable() {
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
              label: Text('Designation',
                  style: TextStyle(fontSize: 15, color: green))),
          DataColumn(
              label:
                  Text('Email', style: TextStyle(fontSize: 15, color: green))),
          DataColumn(
              label: Text('Password',
                  style: TextStyle(fontSize: 15, color: green))),
        ],
        source: dataTableSource,
        // columnSpacing: 30,
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
            "designation": "App Developer",
            "email": "nivy@gmail.com",
            "password": "nivy123"
          });

  @override
  DataRow getRow(int index) {
    return DataRow(cells: [
      DataCell(Text(data[index]["id"].toString())),
      DataCell(Text(data[index]["name"])),
      DataCell(Text(data[index]["number"])),
      DataCell(Text(data[index]["designation"])),
      DataCell(Text(data[index]["email"])),
      DataCell(
        Text(data[index]["password"]),
      )
    ]);
  }

  @override
  bool get isRowCountApproximate => false;

  @override
  int get rowCount => data.length;

  @override
  int get selectedRowCount => 0;
}
