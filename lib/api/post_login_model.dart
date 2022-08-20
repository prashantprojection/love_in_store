// ignore_for_file: non_constant_identifier_names

import 'package:love_in_store/utils/constants.dart';

class UserLoginModel {
  String? username;
  String? passwordValue;
  String? latValue;
  String? lonValue;
  String? version;
  String? osVersion;
  String? deviceID;
  String? deviceIMEI;
  String? simNumber;
  String? batteryLevel;
  String? deviceConnectivity;
  String? deviceBootTime;
  String? wifiName;
  String? carrierName;
  String? AppId;

  UserLoginModel({
    this.AppId,
    this.batteryLevel,
    this.carrierName,
    this.deviceBootTime,
    this.deviceConnectivity,
    this.deviceID,
    this.deviceIMEI,
    this.latValue,
    this.lonValue,
    this.osVersion,
    this.passwordValue,
    this.simNumber,
    this.username,
    this.version,
    this.wifiName,
  });

  Map<String, String> toMap() => {
        kUserName: username ?? '',
        kPassword: passwordValue ?? '',
        kLatitude: latValue ?? '',
        kLongitude: lonValue ?? '',
        kAppVersion: version ?? '',
        kOSVersion: osVersion ?? '',
        kDeviceID: deviceID ?? '',
        kIMEINo: deviceIMEI ?? '',
        kSimNo: simNumber ?? '',
        kBatteryValue: batteryLevel ?? '',
        kInternetConnectionType: deviceConnectivity ?? '',
        kLastPhoneRestart: deviceBootTime ?? '',
        kLastWifiNetworkName: wifiName ?? '',
        kNetworkCarrierName: carrierName ?? '',
        kAppId: AppId ?? ''
      };
}
