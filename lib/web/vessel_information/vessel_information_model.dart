
import 'dart:convert';

VesselInformationModel vesselInformationModelFromJson(String str) => VesselInformationModel.fromJson(json.decode(str));

String vesselInformationModelToJson(VesselInformationModel data) => json.encode(data.toJson());

class VesselInformationModel {
  VesselInformationModel({
    this.id,
    this.organizationId,
    this.createdDate,
    this.lastModifiedDate,
    this.createdUser,
    this.lastModifiedUser,
    this.version,
    this.system,
    this.vesselName,
    this.vesselDwt,
    this.vesselDraftS,
    this.vesselTpc,
    this.vesselGrainCap,
    this.vesselBalSpd1,
    this.vesselBalConsmHs1,
    this.vesselBalConsmLs1,
    this.vesselBalConsmMgo1,
    this.vesselBalSpd2,
    this.vesselBalConsmHs2,
    this.vesselBalConsmLs2,
    this.vesselBalConsmMgo2,
    this.vesselBalSpd3,
    this.vesselBalConsmHs3,
    this.vesselBalConsmLs3,
    this.vesselBalConsmMgo3,
    this.vesselBalSpd4,
    this.vesselBalConsmHs4,
    this.vesselBalConsmLs4,
    this.vesselBalConsmMgo4,
    this.vesselLdnSpd1,
    this.vesselLdnConsmHs1,
    this.vesselLdnConsmLs1,
    this.vesselLdnConsmMgo1,
    this.vesselLdnSpd2,
    this.vesselLdnConsmHs2,
    this.vesselLdnConsmLs2,
    this.vesselLdnConsmMgo2,
    this.vesselLdnSpd3,
    this.vesselLdnConsmHs3,
    this.vesselLdnConsmLs3,
    this.vesselLdnConsmMgo3,
    this.vesselLdnSpd4,
    this.vesselLdnConsmHs4,
    this.vesselLdnConsmLs4,
    this.vesselLdnConsmMgo4,
    this.vesselPIdleConsmHs,
    this.vesselPIdleConsmLs,
    this.vesselPIdleConsmMgo,
    this.vesselPLdgConsmHs,
    this.vesselPLdgConsmLs,
    this.vesselPLdgConsmMgo,
    this.vesselPDischConsmHs,
    this.vesselPDischConsmLs,
    this.vesselPDischConsmMgo,
    this.vesselVExtraConsmHs,
    this.vesselVExtraConsmLs,
    this.vesselVExtraConsmMgo,
    this.vesselLightShip,
    this.vesselBuilt,
    this.vesselFlag,
    this.vesselLoa,
    this.vesselBeam,
    this.vesselGrt,
    this.vesselNrt,
    this.vesselImo,
    this.vesselClass,
    this.vesselBaleCap,
    this.vesselGears,
    this.vesselGrabs,
    this.vesselHolds,
    this.vesselHatches,
    this.vesselCo2,
    this.vesselAhl,
    this.vesselIceClass,
    this.vesselShipyard,
    this.vesselShipowner,
    this.vesselScrubber,
    this.vesselMmsi,
    this.vesselType,
    this.vesselSource,
    this.vesselCountry,
  });

  final String id;
  final dynamic organizationId;
  final dynamic createdDate;
  final dynamic lastModifiedDate;
  final dynamic createdUser;
  final dynamic lastModifiedUser;
  final dynamic version;
  final dynamic system;
  final String vesselName;
  final dynamic vesselDwt;
  final double vesselDraftS;
  final dynamic vesselTpc;
  final dynamic vesselGrainCap;
  final dynamic vesselBalSpd1;
  final dynamic vesselBalConsmHs1;
  final dynamic vesselBalConsmLs1;
  final dynamic vesselBalConsmMgo1;
  final dynamic vesselBalSpd2;
  final dynamic vesselBalConsmHs2;
  final dynamic vesselBalConsmLs2;
  final dynamic vesselBalConsmMgo2;
  final dynamic vesselBalSpd3;
  final dynamic vesselBalConsmHs3;
  final dynamic vesselBalConsmLs3;
  final dynamic vesselBalConsmMgo3;
  final dynamic vesselBalSpd4;
  final dynamic vesselBalConsmHs4;
  final dynamic vesselBalConsmLs4;
  final dynamic vesselBalConsmMgo4;
  final dynamic vesselLdnSpd1;
  final dynamic vesselLdnConsmHs1;
  final dynamic vesselLdnConsmLs1;
  final dynamic vesselLdnConsmMgo1;
  final dynamic vesselLdnSpd2;
  final dynamic vesselLdnConsmHs2;
  final dynamic vesselLdnConsmLs2;
  final dynamic vesselLdnConsmMgo2;
  final dynamic vesselLdnSpd3;
  final dynamic vesselLdnConsmHs3;
  final dynamic vesselLdnConsmLs3;
  final dynamic vesselLdnConsmMgo3;
  final dynamic vesselLdnSpd4;
  final dynamic vesselLdnConsmHs4;
  final dynamic vesselLdnConsmLs4;
  final dynamic vesselLdnConsmMgo4;
  final dynamic vesselPIdleConsmHs;
  final dynamic vesselPIdleConsmLs;
  final dynamic vesselPIdleConsmMgo;
  final dynamic vesselPLdgConsmHs;
  final dynamic vesselPLdgConsmLs;
  final dynamic vesselPLdgConsmMgo;
  final dynamic vesselPDischConsmHs;
  final dynamic vesselPDischConsmLs;
  final dynamic vesselPDischConsmMgo;
  final dynamic vesselVExtraConsmHs;
  final dynamic vesselVExtraConsmLs;
  final dynamic vesselVExtraConsmMgo;
  final dynamic vesselLightShip;
  final dynamic vesselBuilt;
  final String vesselFlag;
  final double vesselLoa;
  final double vesselBeam;
  final dynamic vesselGrt;
  final dynamic vesselNrt;
  final dynamic vesselImo;
  final String vesselClass;
  final dynamic vesselBaleCap;
  final String vesselGears;
  final dynamic vesselGrabs;
  final dynamic vesselHolds;
  final dynamic vesselHatches;
  final dynamic vesselCo2;
  final dynamic vesselAhl;
  final dynamic vesselIceClass;
  final String vesselShipyard;
  final String vesselShipowner;
  final dynamic vesselScrubber;
  final dynamic vesselMmsi;
  final dynamic vesselType;
  final dynamic vesselSource;
  final dynamic vesselCountry;

  factory VesselInformationModel.fromJson(Map<String, dynamic> json) => VesselInformationModel(
    id: json["id"],
    organizationId: json["organizationId"],
    createdDate: json["createdDate"],
    lastModifiedDate: json["lastModifiedDate"],
    createdUser: json["createdUser"],
    lastModifiedUser: json["lastModifiedUser"],
    version: json["version"],
    system: json["system"],
    vesselName: json["vesselName"],
    vesselDwt: json["vesselDwt"],
    vesselDraftS: json["vesselDraftS"].toDouble(),
    vesselTpc: json["vesselTPC"],
    vesselGrainCap: json["vesselGrainCap"],
    vesselBalSpd1: json["vesselBalSpd1"],
    vesselBalConsmHs1: json["vesselBalConsmHS1"],
    vesselBalConsmLs1: json["vesselBalConsmLS1"],
    vesselBalConsmMgo1: json["vesselBalConsmMGO1"],
    vesselBalSpd2: json["vesselBalSpd2"],
    vesselBalConsmHs2: json["vesselBalConsmHS2"],
    vesselBalConsmLs2: json["vesselBalConsmLS2"],
    vesselBalConsmMgo2: json["vesselBalConsmMGO2"],
    vesselBalSpd3: json["vesselBalSpd3"],
    vesselBalConsmHs3: json["vesselBalConsmHS3"],
    vesselBalConsmLs3: json["vesselBalConsmLS3"],
    vesselBalConsmMgo3: json["vesselBalConsmMGO3"],
    vesselBalSpd4: json["vesselBalSpd4"],
    vesselBalConsmHs4: json["vesselBalConsmHS4"],
    vesselBalConsmLs4: json["vesselBalConsmLS4"],
    vesselBalConsmMgo4: json["vesselBalConsmMGO4"],
    vesselLdnSpd1: json["vesselLdnSpd1"],
    vesselLdnConsmHs1: json["vesselLdnConsmHS1"],
    vesselLdnConsmLs1: json["vesselLdnConsmLS1"],
    vesselLdnConsmMgo1: json["vesselLdnConsmMGO1"],
    vesselLdnSpd2: json["vesselLdnSpd2"],
    vesselLdnConsmHs2: json["vesselLdnConsmHS2"],
    vesselLdnConsmLs2: json["vesselLdnConsmLS2"],
    vesselLdnConsmMgo2: json["vesselLdnConsmMGO2"],
    vesselLdnSpd3: json["vesselLdnSpd3"],
    vesselLdnConsmHs3: json["vesselLdnConsmHS3"],
    vesselLdnConsmLs3: json["vesselLdnConsmLS3"],
    vesselLdnConsmMgo3: json["vesselLdnConsmMGO3"],
    vesselLdnSpd4: json["vesselLdnSpd4"],
    vesselLdnConsmHs4: json["vesselLdnConsmHS4"],
    vesselLdnConsmLs4: json["vesselLdnConsmLS4"],
    vesselLdnConsmMgo4: json["vesselLdnConsmMGO4"],
    vesselPIdleConsmHs: json["vesselPIdleConsmHS"],
    vesselPIdleConsmLs: json["vesselPIdleConsmLS"],
    vesselPIdleConsmMgo: json["vesselPIdleConsmMGO"],
    vesselPLdgConsmHs: json["vesselPLdgConsmHS"],
    vesselPLdgConsmLs: json["vesselPLdgConsmLS"],
    vesselPLdgConsmMgo: json["vesselPLdgConsmMGO"],
    vesselPDischConsmHs: json["vesselPDischConsmHS"],
    vesselPDischConsmLs: json["vesselPDischConsmLS"],
    vesselPDischConsmMgo: json["vesselPDischConsmMGO"],
    vesselVExtraConsmHs: json["vesselVExtraConsmHS"],
    vesselVExtraConsmLs: json["vesselVExtraConsmLS"],
    vesselVExtraConsmMgo: json["vesselVExtraConsmMGO"],
    vesselLightShip: json["vesselLightShip"],
    vesselBuilt: json["vesselBuilt"],
    vesselFlag: json["vesselFlag"],
    vesselLoa: json["vesselLOA"].toDouble(),
    vesselBeam: json["vesselBeam"].toDouble(),
    vesselGrt: json["vesselGRT"],
    vesselNrt: json["vesselNRT"],
    vesselImo: json["vesselIMO"],
    vesselClass: json["vesselClass"],
    vesselBaleCap: json["vesselBaleCap"],
    vesselGears: json["vesselGears"],
    vesselGrabs: json["vesselGrabs"],
    vesselHolds: json["vesselHolds"],
    vesselHatches: json["vesselHatches"],
    vesselCo2: json["vesselCO2"],
    vesselAhl: json["vesselAHL"],
    vesselIceClass: json["vesselIceClass"],
    vesselShipyard: json["vesselShipyard"],
    vesselShipowner: json["vesselShipowner"],
    vesselScrubber: json["vesselScrubber"],
    vesselMmsi: json["vesselMMSI"],
    vesselType: json["vesselType"],
    vesselSource: json["vesselSource"],
    vesselCountry: json["vesselCountry"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "organizationId": organizationId,
    "createdDate": createdDate,
    "lastModifiedDate": lastModifiedDate,
    "createdUser": createdUser,
    "lastModifiedUser": lastModifiedUser,
    "version": version,
    "system": system,
    "vesselName": vesselName,
    "vesselDwt": vesselDwt,
    "vesselDraftS": vesselDraftS,
    "vesselTPC": vesselTpc,
    "vesselGrainCap": vesselGrainCap,
    "vesselBalSpd1": vesselBalSpd1,
    "vesselBalConsmHS1": vesselBalConsmHs1,
    "vesselBalConsmLS1": vesselBalConsmLs1,
    "vesselBalConsmMGO1": vesselBalConsmMgo1,
    "vesselBalSpd2": vesselBalSpd2,
    "vesselBalConsmHS2": vesselBalConsmHs2,
    "vesselBalConsmLS2": vesselBalConsmLs2,
    "vesselBalConsmMGO2": vesselBalConsmMgo2,
    "vesselBalSpd3": vesselBalSpd3,
    "vesselBalConsmHS3": vesselBalConsmHs3,
    "vesselBalConsmLS3": vesselBalConsmLs3,
    "vesselBalConsmMGO3": vesselBalConsmMgo3,
    "vesselBalSpd4": vesselBalSpd4,
    "vesselBalConsmHS4": vesselBalConsmHs4,
    "vesselBalConsmLS4": vesselBalConsmLs4,
    "vesselBalConsmMGO4": vesselBalConsmMgo4,
    "vesselLdnSpd1": vesselLdnSpd1,
    "vesselLdnConsmHS1": vesselLdnConsmHs1,
    "vesselLdnConsmLS1": vesselLdnConsmLs1,
    "vesselLdnConsmMGO1": vesselLdnConsmMgo1,
    "vesselLdnSpd2": vesselLdnSpd2,
    "vesselLdnConsmHS2": vesselLdnConsmHs2,
    "vesselLdnConsmLS2": vesselLdnConsmLs2,
    "vesselLdnConsmMGO2": vesselLdnConsmMgo2,
    "vesselLdnSpd3": vesselLdnSpd3,
    "vesselLdnConsmHS3": vesselLdnConsmHs3,
    "vesselLdnConsmLS3": vesselLdnConsmLs3,
    "vesselLdnConsmMGO3": vesselLdnConsmMgo3,
    "vesselLdnSpd4": vesselLdnSpd4,
    "vesselLdnConsmHS4": vesselLdnConsmHs4,
    "vesselLdnConsmLS4": vesselLdnConsmLs4,
    "vesselLdnConsmMGO4": vesselLdnConsmMgo4,
    "vesselPIdleConsmHS": vesselPIdleConsmHs,
    "vesselPIdleConsmLS": vesselPIdleConsmLs,
    "vesselPIdleConsmMGO": vesselPIdleConsmMgo,
    "vesselPLdgConsmHS": vesselPLdgConsmHs,
    "vesselPLdgConsmLS": vesselPLdgConsmLs,
    "vesselPLdgConsmMGO": vesselPLdgConsmMgo,
    "vesselPDischConsmHS": vesselPDischConsmHs,
    "vesselPDischConsmLS": vesselPDischConsmLs,
    "vesselPDischConsmMGO": vesselPDischConsmMgo,
    "vesselVExtraConsmHS": vesselVExtraConsmHs,
    "vesselVExtraConsmLS": vesselVExtraConsmLs,
    "vesselVExtraConsmMGO": vesselVExtraConsmMgo,
    "vesselLightShip": vesselLightShip,
    "vesselBuilt": vesselBuilt,
    "vesselFlag": vesselFlag,
    "vesselLOA": vesselLoa,
    "vesselBeam": vesselBeam,
    "vesselGRT": vesselGrt,
    "vesselNRT": vesselNrt,
    "vesselIMO": vesselImo,
    "vesselClass": vesselClass,
    "vesselBaleCap": vesselBaleCap,
    "vesselGears": vesselGears,
    "vesselGrabs": vesselGrabs,
    "vesselHolds": vesselHolds,
    "vesselHatches": vesselHatches,
    "vesselCO2": vesselCo2,
    "vesselAHL": vesselAhl,
    "vesselIceClass": vesselIceClass,
    "vesselShipyard": vesselShipyard,
    "vesselShipowner": vesselShipowner,
    "vesselScrubber": vesselScrubber,
    "vesselMMSI": vesselMmsi,
    "vesselType": vesselType,
    "vesselSource": vesselSource,
    "vesselCountry": vesselCountry,
  };
}
