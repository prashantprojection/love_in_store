// To parse this JSON data, do
//
//     final loginModel = loginModelFromMap(jsonString);

import 'dart:convert';

LoginModel loginModelFromMap(String str) =>
    LoginModel.fromMap(json.decode(str));

String loginModelToMap(LoginModel data) => json.encode(data.toMap());

class LoginModel {
  LoginModel({
    this.kycstatus,
    this.userId,
    this.clientId,
    this.loginId,
    this.firstName,
    this.lastName,
    this.emailId,
    this.address1,
    this.address2,
    this.pincode,
    this.mobile,
    this.imei,
    this.designation,
    this.storeGeoFencing,
    this.storeGeoFencingRadius,
    this.geofenceGeoFencing,
    this.locationTracking,
    this.eventTracking,
    this.runAppInBackground,
    this.startAppAutomatically,
    this.trackingInterval,
    this.appMode,
    this.token,
    this.isLogin,
    this.isLoginMessage,
    this.success,
    this.message,
    this.firstTime,
    this.sosLimit,
    this.isStoreVisible,
    this.isSosVisible,
    this.isMeetingGeofenceEnabled,
    this.isAttendanceGeofenceEnabled,
    this.isFacialRecognitionEnabled,
    this.isCheckInCheckOutEnabled,
    this.isGeofenceAttendanceEnabled,
    this.personGroupid,
    this.isFRstatus,
    this.isJoiningKitStatus,
    this.pf,
    this.userType,
    this.isAssociate,
    this.isOperation,
    this.isResetRequired,
    this.name,
    this.email,
    this.mobileNumber,
    this.address,
    this.profilePic,
    this.accountNumber,
    this.bankName,
    this.ifscCode,
    this.aadharNumber,
    this.welcomeMessage,
    this.gstNumber,
    this.isGstNumberApproved,
    this.gstPhoto,
    this.isGstPhotoApproved,
    this.outLetPhoto,
    this.isOutLetPhotoApproved,
    this.chequePhoto,
    this.isChequePhotoApproved,
    this.signaturePhoto,
    this.isSignaturePhotoApproved,
    this.isAadharNumberApproved,
    this.isAadharPhotoApproved,
    this.firmName,
    this.isFirmNameApproved,
    this.aadharCardPath,
    this.eateryVideoPath,
    this.attendanceStatus,
    this.alertType,
    this.subject,
    this.text,
    this.imagePath,
    this.roleId,
    this.roleName,
    this.ispappEnabled,
    this.isIspStoreActionEnabled,
  });

  List<dynamic>? kycstatus;
  int? userId;
  int? clientId;
  dynamic loginId;
  dynamic firstName;
  dynamic lastName;
  dynamic emailId;
  dynamic address1;
  dynamic address2;
  dynamic pincode;
  dynamic mobile;
  dynamic imei;
  dynamic designation;
  bool? storeGeoFencing;
  int? storeGeoFencingRadius;
  bool? geofenceGeoFencing;
  bool? locationTracking;
  bool? eventTracking;
  bool? runAppInBackground;
  bool? startAppAutomatically;
  dynamic trackingInterval;
  dynamic appMode;
  dynamic token;
  bool? isLogin;
  dynamic isLoginMessage;
  String? success;
  String? message;
  dynamic firstTime;
  dynamic sosLimit;
  dynamic isStoreVisible;
  dynamic isSosVisible;
  dynamic isMeetingGeofenceEnabled;
  dynamic isAttendanceGeofenceEnabled;
  dynamic isFacialRecognitionEnabled;
  dynamic isCheckInCheckOutEnabled;
  dynamic isGeofenceAttendanceEnabled;
  dynamic personGroupid;
  dynamic isFRstatus;
  dynamic isJoiningKitStatus;
  dynamic pf;
  dynamic userType;
  dynamic isAssociate;
  dynamic isOperation;
  dynamic isResetRequired;
  dynamic name;
  dynamic email;
  dynamic mobileNumber;
  dynamic address;
  dynamic profilePic;
  dynamic accountNumber;
  dynamic bankName;
  dynamic ifscCode;
  dynamic aadharNumber;
  dynamic welcomeMessage;
  dynamic gstNumber;
  dynamic isGstNumberApproved;
  dynamic gstPhoto;
  dynamic isGstPhotoApproved;
  dynamic outLetPhoto;
  dynamic isOutLetPhotoApproved;
  dynamic chequePhoto;
  dynamic isChequePhotoApproved;
  dynamic signaturePhoto;
  dynamic isSignaturePhotoApproved;
  dynamic isAadharNumberApproved;
  dynamic isAadharPhotoApproved;
  dynamic firmName;
  dynamic isFirmNameApproved;
  dynamic aadharCardPath;
  dynamic eateryVideoPath;
  dynamic attendanceStatus;
  dynamic alertType;
  dynamic subject;
  dynamic text;
  dynamic imagePath;
  dynamic roleId;
  dynamic roleName;
  bool? ispappEnabled;
  bool? isIspStoreActionEnabled;

  factory LoginModel.fromMap(Map<String, dynamic> json) => LoginModel(
        kycstatus: List<dynamic>.from(json["kycstatus"].map((x) => x)),
        userId: json["UserId"],
        clientId: json["ClientId"],
        loginId: json["LoginId"],
        firstName: json["FirstName"],
        lastName: json["LastName"],
        emailId: json["EmailId"],
        address1: json["Address1"],
        address2: json["Address2"],
        pincode: json["Pincode"],
        mobile: json["Mobile"],
        imei: json["IMEI"],
        designation: json["Designation"],
        storeGeoFencing: json["StoreGeoFencing"],
        storeGeoFencingRadius: json["StoreGeoFencingRadius"],
        geofenceGeoFencing: json["GeofenceGeoFencing"],
        locationTracking: json["LocationTracking"],
        eventTracking: json["EventTracking"],
        runAppInBackground: json["RunAppInBackground"],
        startAppAutomatically: json["StartAppAutomatically"],
        trackingInterval: json["TrackingInterval"],
        appMode: json["AppMode"],
        token: json["Token"],
        isLogin: json["IsLogin"],
        isLoginMessage: json["IsLoginMessage"],
        success: json["Success"],
        message: json["Message"],
        firstTime: json["FirstTime"],
        sosLimit: json["SOSLimit"],
        isStoreVisible: json["IsStoreVisible"],
        isSosVisible: json["IsSOSVisible"],
        isMeetingGeofenceEnabled: json["IsMeetingGeofenceEnabled"],
        isAttendanceGeofenceEnabled: json["IsAttendanceGeofenceEnabled"],
        isFacialRecognitionEnabled: json["IsFacialRecognitionEnabled"],
        isCheckInCheckOutEnabled: json["ISCheckInCheckOutEnabled"],
        isGeofenceAttendanceEnabled: json["IsGeofenceAttendanceEnabled"],
        personGroupid: json["PersonGroupid"],
        isFRstatus: json["IsFRstatus"],
        isJoiningKitStatus: json["IsJoiningKitStatus"],
        pf: json["PF"],
        userType: json["UserType"],
        isAssociate: json["IsAssociate"],
        isOperation: json["IsOperation"],
        isResetRequired: json["IsResetRequired"],
        name: json["Name"],
        email: json["Email"],
        mobileNumber: json["MobileNumber"],
        address: json["Address"],
        profilePic: json["ProfilePic"],
        accountNumber: json["AccountNumber"],
        bankName: json["BankName"],
        ifscCode: json["IFSCCode"],
        aadharNumber: json["AadharNumber"],
        welcomeMessage: json["WelcomeMessage"],
        gstNumber: json["GSTNumber"],
        isGstNumberApproved: json["IsGSTNumberApproved"],
        gstPhoto: json["GSTPhoto"],
        isGstPhotoApproved: json["IsGSTPhotoApproved"],
        outLetPhoto: json["OutLetPhoto"],
        isOutLetPhotoApproved: json["IsOutLetPhotoApproved"],
        chequePhoto: json["ChequePhoto"],
        isChequePhotoApproved: json["IsChequePhotoApproved"],
        signaturePhoto: json["SignaturePhoto"],
        isSignaturePhotoApproved: json["IsSignaturePhotoApproved"],
        isAadharNumberApproved: json["IsAadharNumberApproved"],
        isAadharPhotoApproved: json["IsAadharPhotoApproved"],
        firmName: json["FirmName"],
        isFirmNameApproved: json["IsFirmNameApproved"],
        aadharCardPath: json["AadharCardPath"],
        eateryVideoPath: json["EateryVideoPath"],
        attendanceStatus: json["AttendanceStatus"],
        alertType: json["AlertType"],
        subject: json["Subject"],
        text: json["Text"],
        imagePath: json["ImagePath"],
        roleId: json["RoleId"],
        roleName: json["RoleName"],
        ispappEnabled: json["ISPAPPEnabled"],
        isIspStoreActionEnabled: json["IsISPStoreActionEnabled"],
      );

  Map<String, dynamic> toMap() => {
        "kycstatus": List<dynamic>.from(kycstatus!.map((x) => x)),
        "UserId": userId,
        "ClientId": clientId,
        "LoginId": loginId,
        "FirstName": firstName,
        "LastName": lastName,
        "EmailId": emailId,
        "Address1": address1,
        "Address2": address2,
        "Pincode": pincode,
        "Mobile": mobile,
        "IMEI": imei,
        "Designation": designation,
        "StoreGeoFencing": storeGeoFencing,
        "StoreGeoFencingRadius": storeGeoFencingRadius,
        "GeofenceGeoFencing": geofenceGeoFencing,
        "LocationTracking": locationTracking,
        "EventTracking": eventTracking,
        "RunAppInBackground": runAppInBackground,
        "StartAppAutomatically": startAppAutomatically,
        "TrackingInterval": trackingInterval,
        "AppMode": appMode,
        "Token": token,
        "IsLogin": isLogin,
        "IsLoginMessage": isLoginMessage,
        "Success": success,
        "Message": message,
        "FirstTime": firstTime,
        "SOSLimit": sosLimit,
        "IsStoreVisible": isStoreVisible,
        "IsSOSVisible": isSosVisible,
        "IsMeetingGeofenceEnabled": isMeetingGeofenceEnabled,
        "IsAttendanceGeofenceEnabled": isAttendanceGeofenceEnabled,
        "IsFacialRecognitionEnabled": isFacialRecognitionEnabled,
        "ISCheckInCheckOutEnabled": isCheckInCheckOutEnabled,
        "IsGeofenceAttendanceEnabled": isGeofenceAttendanceEnabled,
        "PersonGroupid": personGroupid,
        "IsFRstatus": isFRstatus,
        "IsJoiningKitStatus": isJoiningKitStatus,
        "PF": pf,
        "UserType": userType,
        "IsAssociate": isAssociate,
        "IsOperation": isOperation,
        "IsResetRequired": isResetRequired,
        "Name": name,
        "Email": email,
        "MobileNumber": mobileNumber,
        "Address": address,
        "ProfilePic": profilePic,
        "AccountNumber": accountNumber,
        "BankName": bankName,
        "IFSCCode": ifscCode,
        "AadharNumber": aadharNumber,
        "WelcomeMessage": welcomeMessage,
        "GSTNumber": gstNumber,
        "IsGSTNumberApproved": isGstNumberApproved,
        "GSTPhoto": gstPhoto,
        "IsGSTPhotoApproved": isGstPhotoApproved,
        "OutLetPhoto": outLetPhoto,
        "IsOutLetPhotoApproved": isOutLetPhotoApproved,
        "ChequePhoto": chequePhoto,
        "IsChequePhotoApproved": isChequePhotoApproved,
        "SignaturePhoto": signaturePhoto,
        "IsSignaturePhotoApproved": isSignaturePhotoApproved,
        "IsAadharNumberApproved": isAadharNumberApproved,
        "IsAadharPhotoApproved": isAadharPhotoApproved,
        "FirmName": firmName,
        "IsFirmNameApproved": isFirmNameApproved,
        "AadharCardPath": aadharCardPath,
        "EateryVideoPath": eateryVideoPath,
        "AttendanceStatus": attendanceStatus,
        "AlertType": alertType,
        "Subject": subject,
        "Text": text,
        "ImagePath": imagePath,
        "RoleId": roleId,
        "RoleName": roleName,
        "ISPAPPEnabled": ispappEnabled,
        "IsISPStoreActionEnabled": isIspStoreActionEnabled,
      };
}
