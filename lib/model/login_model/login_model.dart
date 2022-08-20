// To parse this JSON data, do
//
//     final loginModel = loginModelFromJson(jsonString);

import 'dart:convert';

import 'login_kyc_status.dart';

LoginModel loginModelFromJson(String str) =>
    LoginModel.fromJson(jsonDecode(str));

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

  List<Kycstatus>? kycstatus;
  int? userId;
  int? clientId;
  String? loginId;
  String? firstName;
  String? lastName;
  String? emailId;
  String? address1;
  String? address2;
  String? pincode;
  String? mobile;
  String? imei;
  String? designation;
  String? storeGeoFencing;
  String? storeGeoFencingRadius;
  String? geofenceGeoFencing;
  String? locationTracking;
  String? eventTracking;
  String? runAppInBackground;
  String? startAppAutomatically;
  String? trackingInterval;
  String? appMode;
  String? token;
  String? isLogin;
  String? isLoginMessage;
  String? success;
  String? message;
  String? firstTime;
  String? sosLimit;
  String? isStoreVisible;
  String? isSosVisible;
  String? isMeetingGeofenceEnabled;
  String? isAttendanceGeofenceEnabled;
  String? isFacialRecognitionEnabled;
  String? isCheckInCheckOutEnabled;
  String? isGeofenceAttendanceEnabled;
  String? personGroupid;
  String? isFRstatus;
  String? isJoiningKitStatus;
  String? pf;
  String? userType;
  String? isAssociate;
  String? isOperation;
  String? isResetRequired;
  String? name;
  String? email;
  String? mobileNumber;
  String? address;
  String? profilePic;
  String? accountNumber;
  String? bankName;
  String? ifscCode;
  String? aadharNumber;
  String? welcomeMessage;
  String? gstNumber;
  String? isGstNumberApproved;
  String? gstPhoto;
  String? isGstPhotoApproved;
  String? outLetPhoto;
  String? isOutLetPhotoApproved;
  String? chequePhoto;
  String? isChequePhotoApproved;
  String? signaturePhoto;
  String? isSignaturePhotoApproved;
  String? isAadharNumberApproved;
  String? isAadharPhotoApproved;
  String? firmName;
  String? isFirmNameApproved;
  String? aadharCardPath;
  String? eateryVideoPath;
  String? attendanceStatus;
  String? alertType;
  String? subject;
  String? text;
  String? imagePath;
  String? roleId;
  String? roleName;
  String? ispappEnabled;
  String? isIspStoreActionEnabled;

  factory LoginModel.fromJson(Map<String, dynamic> json) => LoginModel(
        kycstatus: List<Kycstatus>.from(
            json["kycstatus"]!.map((x) => Kycstatus.fromJson(x))),
        userId: int.parse(json["UserId"]),
        clientId: int.parse(json["ClientId"]),
        loginId: json["LoginId"].toString(),
        firstName: json["FirstName"].toString(),
        lastName: json["LastName"].toString(),
        emailId: json["EmailId"].toString(),
        address1: json["Address1"].toString(),
        address2: json["Address2"].toString(),
        pincode: json["Pincode"].toString(),
        mobile: json["Mobile"].toString(),
        imei: json["IMEI"].toString(),
        designation: json["Designation"].toString(),
        storeGeoFencing: json["StoreGeoFencing"].toString(),
        storeGeoFencingRadius: json["StoreGeoFencingRadius"].toString(),
        geofenceGeoFencing: json["GeofenceGeoFencing"].toString(),
        locationTracking: json["LocationTracking"].toString(),
        eventTracking: json["EventTracking"].toString(),
        runAppInBackground: json["RunAppInBackground"].toString(),
        startAppAutomatically: json["StartAppAutomatically"].toString(),
        trackingInterval: json["TrackingInterval"].toString(),
        appMode: json["AppMode"].toString(),
        token: json["Token"].toString(),
        isLogin: json["IsLogin"].toString(),
        isLoginMessage: json["IsLoginMessage"].toString(),
        success: json["Success"].toString(),
        message: json["Message"].toString(),
        firstTime: json["FirstTime"].toString(),
        sosLimit: json["SOSLimit"].toString(),
        isStoreVisible: json["IsStoreVisible"].toString(),
        isSosVisible: json["IsSOSVisible"].toString(),
        isMeetingGeofenceEnabled: json["IsMeetingGeofenceEnabled"].toString(),
        isAttendanceGeofenceEnabled:
            json["IsAttendanceGeofenceEnabled"].toString(),
        isFacialRecognitionEnabled:
            json["IsFacialRecognitionEnabled"].toString(),
        isCheckInCheckOutEnabled: json["ISCheckInCheckOutEnabled"].toString(),
        isGeofenceAttendanceEnabled:
            json["IsGeofenceAttendanceEnabled"].toString(),
        personGroupid: json["PersonGroupid"].toString(),
        isFRstatus: json["IsFRstatus"].toString(),
        isJoiningKitStatus: json["IsJoiningKitStatus"].toString(),
        pf: json["PF"].toString(),
        userType: json["UserType"].toString(),
        isAssociate: json["IsAssociate"].toString(),
        isOperation: json["IsOperation"].toString(),
        isResetRequired: json["IsResetRequired"].toString(),
        name: json["Name"].toString(),
        email: json["Email"].toString(),
        mobileNumber: json["MobileNumber"].toString(),
        address: json["Address"].toString(),
        profilePic: json["ProfilePic"].toString(),
        accountNumber: json["AccountNumber"].toString(),
        bankName: json["BankName"].toString(),
        ifscCode: json["IFSCCode"].toString(),
        aadharNumber: json["AadharNumber"].toString(),
        welcomeMessage: json["WelcomeMessage"].toString(),
        gstNumber: json["GSTNumber"].toString(),
        isGstNumberApproved: json["IsGSTNumberApproved"].toString(),
        gstPhoto: json["GSTPhoto"].toString(),
        isGstPhotoApproved: json["IsGSTPhotoApproved"].toString(),
        outLetPhoto: json["OutLetPhoto"].toString(),
        isOutLetPhotoApproved: json["IsOutLetPhotoApproved"].toString(),
        chequePhoto: json["ChequePhoto"].toString(),
        isChequePhotoApproved: json["IsChequePhotoApproved"].toString(),
        signaturePhoto: json["SignaturePhoto"].toString(),
        isSignaturePhotoApproved: json["IsSignaturePhotoApproved"].toString(),
        isAadharNumberApproved: json["IsAadharNumberApproved"].toString(),
        isAadharPhotoApproved: json["IsAadharPhotoApproved"].toString(),
        firmName: json["FirmName"].toString(),
        isFirmNameApproved: json["IsFirmNameApproved"].toString(),
        aadharCardPath: json["AadharCardPath"].toString(),
        eateryVideoPath: json["EateryVideoPath"].toString(),
        attendanceStatus: json["AttendanceStatus"].toString(),
        alertType: json["AlertType"].toString(),
        subject: json["Subject"].toString(),
        text: json["Text"].toString(),
        imagePath: json["ImagePath"].toString(),
        roleId: json["RoleId"].toString(),
        roleName: json["RoleName"].toString(),
        ispappEnabled: json["ISPAPPEnabled"].toString(),
        isIspStoreActionEnabled: json["IsISPStoreActionEnabled"].toString(),
      );
}
