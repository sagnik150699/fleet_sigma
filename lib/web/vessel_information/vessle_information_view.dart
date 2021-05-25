import 'package:fleet_sigma/services/userInformation.dart';
import 'package:fleet_sigma/services/variable.dart';
import 'package:fleet_sigma/web/vessel_information/vessel_information_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:provider/provider.dart';

class VesselInformationView extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final UserInformation _userInformation =
        Provider.of<UserInformation>(context);
    Variable _variable = new Variable();
    // int start = _userInformation.vesselListStart;
    // int end = _userInformation.vesselListEnd;
    int start = 0;
    int end = 10;
    _userInformation.vesselInformation(start.toString(), end.toString());
    List<DataRow> dataRowList = [];
    for (int i = 0; i < _userInformation.vesselInformationModel.length; i++) {
      dataRowList.add(DataRow(
        cells: [
          DataCell(
            _variable.textPoppins(
                _userInformation.vesselInformationModel[i].vesselName
                    .toString(),
                18.0,
                Colors.black,
                FontWeight.normal),
          ),
          DataCell(
            _variable.textPoppins(
                _userInformation.vesselInformationModel[i].vesselDwt.toString(),
                18.0,
                Colors.black,
                FontWeight.normal),
          ),
          DataCell(
            _variable.textPoppins(
                _userInformation.vesselInformationModel[i].vesselDraftS
                    .toString(),
                18.0,
                Colors.black,
                FontWeight.normal),
          ),
          DataCell(
            _variable.textPoppins(
                _userInformation.vesselInformationModel[i].vesselShipowner
                    .toString(),
                18.0,
                Colors.black,
                FontWeight.normal),
          ),
          DataCell(
            _variable.textPoppins(
                _userInformation.vesselInformationModel[i].vesselCountry
                    .toString(),
                18.0,
                Colors.black,
                FontWeight.normal),
          ),
          DataCell(
            IconButton(
              icon: Icon(Icons.edit_outlined, size: 30.0, color: Colors.black),
            ),
          ),
        ],
      ));
    }

    return _userInformation.isLoading == false
        ? Scaffold(
            appBar: AppBar(
              centerTitle: true,
              backgroundColor: Colors.black,
              title: _variable.textPoppins("Welcome to FleetSigma!", 30.0,
                  Colors.white, FontWeight.bold),
            ),
            body: ListView(
              children: [
                SizedBox(height: 20.0),
                //Vessel List
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    MaterialButton(
                      height: 50.0,
                      color: Colors.black,
                      onPressed: () {},
                      shape: RoundedRectangleBorder(
                          side: BorderSide.none,
                          borderRadius: BorderRadius.circular(10.0)),
                      child: _variable.textPoppins(
                          "Create Vessel", 24.0, Colors.white, FontWeight.w500),
                    ),
                    MaterialButton(
                      height: 50.0,
                      child: _variable.textPoppins(
                          "Vessel List", 20.0, Colors.white, FontWeight.w500),
                      shape: RoundedRectangleBorder(
                          side: BorderSide.none,
                          borderRadius: BorderRadius.circular(10.0)),
                      color: Colors.black,
                      onPressed: () {},
                    ),
                    MaterialButton(
                      height: 50.0,
                      child: _variable.textPoppins(
                          "Fleet List", 20.0, Colors.white, FontWeight.w500),
                      shape: RoundedRectangleBorder(
                          side: BorderSide.none,
                          borderRadius: BorderRadius.circular(10.0)),
                      color: Colors.black,
                      onPressed: () {},
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    IconButton(
                        icon: Icon(Icons.chevron_left, size: 40.0),
                        onPressed: () {
                          // if (start != 0) {
                          //   start = start - 10;
                          // }
                        }),
                    IconButton(
                        icon: Icon(Icons.chevron_right, size: 40.0),
                        onPressed: () {
                          // end = end - 10;
                        }),
                    _variable.textPoppins("  ${start.toString()}", 16.0,
                        Colors.black, FontWeight.normal),
                    SizedBox(width: 20.0),
                    SizedBox(
                        child: _variable.textPoppins(
                            "  to  ", 16.0, Colors.black, FontWeight.normal)),
                    _variable.textPoppins("${end.toString()}   ", 16.0,
                        Colors.black, FontWeight.normal)
                  ],
                ),
                SizedBox(height: 30),
                Center(
                  child: SingleChildScrollView(
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: DataTable(
                        showBottomBorder: true,
                        columns: [
                          DataColumn(
                              label: _variable.textPoppins("Vessel Name", 18.0,
                                  Colors.black, FontWeight.w500)),
                          DataColumn(
                              label: _variable.textPoppins(
                                  "DWT", 18.0, Colors.black, FontWeight.w500)),
                          DataColumn(
                              label: _variable.textPoppins("Draft", 18.0,
                                  Colors.black, FontWeight.w500)),
                          DataColumn(
                              label: _variable.textPoppins("Owner", 18.0,
                                  Colors.black, FontWeight.w500)),
                          DataColumn(
                              label: _variable.textPoppins("Ship Country", 18.0,
                                  Colors.black, FontWeight.w500)),
                          DataColumn(
                              label: _variable.textPoppins(
                                  "Edit", 18.0, Colors.black, FontWeight.w500))
                        ],
                        rows: dataRowList,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        : Center(child: CircularProgressIndicator());
  }
}
