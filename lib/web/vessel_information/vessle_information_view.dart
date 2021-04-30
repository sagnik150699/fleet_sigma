import 'package:fleet_sigma/services/variable.dart';
import 'package:fleet_sigma/web/vessel_information/vessle_information_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class VesselInformationView extends HookWidget {
  @override
  Widget build(BuildContext context) {
    Variable _variable = new Variable();
    VesselInformationRepository _repo= new VesselInformationRepository();
    _repo.getFleetList();
    final Size size = MediaQuery.of(context).size;
    final double categoryHeight = size.height;
    final double categoryWidth = size.width;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.black,
        title: _variable.textPoppins(
            "Welcome to FleetSigma!", 30.0, Colors.white, FontWeight.bold),
      ),
      body: Container(
        height: categoryHeight / 4,
        width: categoryWidth,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20.0),
            Row(
              children: [
                MaterialButton(
                  height: 50.0,
                  color: Colors.black,
                  onPressed: () {},
                  child: _variable.textPoppins(
                      "Create Vessel", 24.0, Colors.white, FontWeight.w500),
                ),
              ],
            ),
            SizedBox(height: 30.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: categoryHeight / 15,
                  child: MaterialButton(
                    child: _variable.textPoppins(
                        "Vessel List", 20.0, Colors.white, FontWeight.w500),
                    shape: RoundedRectangleBorder(
                        side: BorderSide.none,
                        borderRadius: BorderRadius.circular(10.0)),
                    color: Colors.black,
                    onPressed: () {},
                  ),
                ),
                Container(
                  height: categoryHeight / 15,
                  child: MaterialButton(
                    child: _variable.textPoppins(
                        "Fleet List", 20.0, Colors.white, FontWeight.w500),
                    shape: RoundedRectangleBorder(
                        side: BorderSide.none,
                        borderRadius: BorderRadius.circular(10.0)),
                    color: Colors.black,
                    onPressed: () {},
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
