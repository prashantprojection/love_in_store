import 'dart:convert';

import 'associate_kyc_status.dart';
import 'custom_parent_child_category_list.dart';
import 'dabur_reason_list.dart';
import 'existing_dsr_data_list.dart';
import 'geofence_category_list.dart';
import 'kyc_status.dart';
import 'master_city_list.dart';
import 'master_state_list.dart';
import 'menu_list.dart';
import 'product_category_list.dart';
import 'product_list.dart';
import 'store_category_list.dart';
import 'ticket_subject_list.dart';
import 'top_selling_product.dart';

MasterDataModel masterDataModelFromMap(String str) =>
    MasterDataModel.fromMap(json.decode(str));

String masterDataModelToMap(MasterDataModel data) => json.encode(data.toMap());

class MasterDataModel {
  MasterDataModel({
    this.storeList,
    this.productList,
    this.productCategoryList,
    this.geofenceCategoryList,
    this.geofenceList,
    this.surveyList,
    this.questionList,
    this.menuList,
    this.notificationList,
    this.ticketSubjectList,
    this.storeSurveyList,
    this.userNotificationList,
    this.notificationCategoryList,
    this.customParentChildCategoryList,
    this.topSellingProducts,
    this.visibilityDashboardList,
    this.kycstatus,
    this.storeCategoryList,
    this.distributorList,
    this.masterStoreClassList,
    this.masterCuisineList,
    this.masterTopDishList,
    this.masterLookList,
    this.masterCollateralList,
    this.ahjchList,
    this.associatekycstatus,
    this.associatekycstatusv2,
    this.masterStateList,
    this.masterCityList,
    this.distributorWithoutStoreList,
    this.masterSodsrData,
    this.existingDsrDataList,
    this.daburExistingDsrDataList,
    this.zydusFeedbackTypeList,
    this.zydusBrandList,
    this.daburV2OfferTypeList,
    this.competitionBenchmarkingOfferTypeList,
    this.brittaniaV2StoreReverificationList,
    this.ublSalesPunchBrandList,
    this.itcdsrList,
    this.dbClassMappingList,
    this.userDistrictMappingList,
    this.userDistrictMappingV2List,
    this.daburReasonList,
    this.targetAssigned,
    this.totalSales,
    this.storeCount,
    this.productCount,
    this.geofenceCount,
    this.counter,
    this.pageSize,
    this.success,
    this.message,
    this.pushLogout,
    this.lastUpdated,
    this.showVisibilityDashboard,
    this.isJoiningKitStatus,
    this.existingDsrCount,
    this.daburExistingDsrCount,
    this.britanniaOutletLowerLimit,
    this.britanniaOutletUpperLimit,
  });

  List<dynamic>? storeList;
  List<ProductList>? productList;
  List<ProductCategoryList>? productCategoryList;
  List<GeofenceCategoryList>? geofenceCategoryList;
  List<dynamic>? geofenceList;
  List<dynamic>? surveyList;
  List<dynamic>? questionList;
  List<MenuList>? menuList;
  List<dynamic>? notificationList;
  List<TicketSubjectList>? ticketSubjectList;
  List<dynamic>? storeSurveyList;
  List<dynamic>? userNotificationList;
  List<dynamic>? notificationCategoryList;
  List<CustomParentChildCategoryList>? customParentChildCategoryList;
  List<TopSellingProduct>? topSellingProducts;
  List<dynamic>? visibilityDashboardList;
  List<Kycstatus>? kycstatus;
  List<StoreCategoryList>? storeCategoryList;
  List<dynamic>? distributorList;
  List<dynamic>? masterStoreClassList;
  List<dynamic>? masterCuisineList;
  List<dynamic>? masterTopDishList;
  List<dynamic>? masterLookList;
  List<dynamic>? masterCollateralList;
  List<dynamic>? ahjchList;
  List<Associatekycstatus>? associatekycstatus;
  List<Associatekycstatus>? associatekycstatusv2;
  List<MasterStateList>? masterStateList;
  List<MasterCityList>? masterCityList;
  List<dynamic>? distributorWithoutStoreList;
  List<dynamic>? masterSodsrData;
  List<ExistingDsrDataList>? existingDsrDataList;
  List<ExistingDsrDataList>? daburExistingDsrDataList;
  List<dynamic>? zydusFeedbackTypeList;
  List<dynamic>? zydusBrandList;
  List<dynamic>? daburV2OfferTypeList;
  List<dynamic>? competitionBenchmarkingOfferTypeList;
  List<dynamic>? brittaniaV2StoreReverificationList;
  List<dynamic>? ublSalesPunchBrandList;
  List<dynamic>? itcdsrList;
  List<dynamic>? dbClassMappingList;
  List<dynamic>? userDistrictMappingList;
  List<dynamic>? userDistrictMappingV2List;
  List<DaburReasonList>? daburReasonList;
  String? targetAssigned;
  String? totalSales;
  int? storeCount;
  int? productCount;
  int? geofenceCount;
  int? counter;
  int? pageSize;
  String? success;
  String? message;
  String? pushLogout;
  String? lastUpdated;
  String? showVisibilityDashboard;
  String? isJoiningKitStatus;
  String? existingDsrCount;
  String? daburExistingDsrCount;
  String? britanniaOutletLowerLimit;
  String? britanniaOutletUpperLimit;

  factory MasterDataModel.fromMap(Map<String, dynamic> json) => MasterDataModel(
        storeList: List<dynamic>.from(json["StoreList"].map((x) => x)),
        productList: List<ProductList>.from(
            json["ProductList"].map((x) => ProductList.fromMap(x))),
        productCategoryList: List<ProductCategoryList>.from(
            json["ProductCategoryList"]
                .map((x) => ProductCategoryList.fromMap(x))),
        geofenceCategoryList: List<GeofenceCategoryList>.from(
            json["GeofenceCategoryList"]
                .map((x) => GeofenceCategoryList.fromMap(x))),
        geofenceList: List<dynamic>.from(json["GeofenceList"].map((x) => x)),
        surveyList: List<dynamic>.from(json["SurveyList"].map((x) => x)),
        questionList: List<dynamic>.from(json["QuestionList"].map((x) => x)),
        menuList: List<MenuList>.from(
            json["MenuList"].map((x) => MenuList.fromMap(x))),
        notificationList:
            List<dynamic>.from(json["NotificationList"].map((x) => x)),
        ticketSubjectList: List<TicketSubjectList>.from(
            json["TicketSubjectList"].map((x) => TicketSubjectList.fromMap(x))),
        storeSurveyList:
            List<dynamic>.from(json["StoreSurveyList"].map((x) => x)),
        userNotificationList:
            List<dynamic>.from(json["UserNotificationList"].map((x) => x)),
        notificationCategoryList:
            List<dynamic>.from(json["NotificationCategoryList"].map((x) => x)),
        customParentChildCategoryList: List<CustomParentChildCategoryList>.from(
            json["CustomParentChildCategoryList"]
                .map((x) => CustomParentChildCategoryList.fromMap(x))),
        topSellingProducts: List<TopSellingProduct>.from(
            json["TopSellingProducts"]
                .map((x) => TopSellingProduct.fromMap(x))),
        visibilityDashboardList:
            List<dynamic>.from(json["VisibilityDashboardList"].map((x) => x)),
        kycstatus: List<Kycstatus>.from(
            json["kycstatus"].map((x) => Kycstatus.fromMap(x))),
        storeCategoryList: List<StoreCategoryList>.from(
            json["StoreCategoryList"].map((x) => StoreCategoryList.fromMap(x))),
        distributorList:
            List<dynamic>.from(json["DistributorList"].map((x) => x)),
        masterStoreClassList:
            List<dynamic>.from(json["MasterStoreClassList"].map((x) => x)),
        masterCuisineList:
            List<dynamic>.from(json["MasterCuisineList"].map((x) => x)),
        masterTopDishList:
            List<dynamic>.from(json["MasterTopDishList"].map((x) => x)),
        masterLookList:
            List<dynamic>.from(json["MasterLookList"].map((x) => x)),
        masterCollateralList:
            List<dynamic>.from(json["MasterCollateralList"].map((x) => x)),
        ahjchList: List<dynamic>.from(json["AHJCHList"].map((x) => x)),
        associatekycstatus: List<Associatekycstatus>.from(
            json["associatekycstatus"]
                .map((x) => Associatekycstatus.fromMap(x))),
        associatekycstatusv2: List<Associatekycstatus>.from(
            json["associatekycstatusv2"]
                .map((x) => Associatekycstatus.fromMap(x))),
        masterStateList: List<MasterStateList>.from(
            json["MasterStateList"].map((x) => MasterStateList.fromMap(x))),
        masterCityList: List<MasterCityList>.from(
            json["MasterCityList"].map((x) => MasterCityList.fromMap(x))),
        distributorWithoutStoreList: List<dynamic>.from(
            json["DistributorWithoutStoreList"].map((x) => x)),
        masterSodsrData:
            List<dynamic>.from(json["MasterSODSRData"].map((x) => x)),
        existingDsrDataList: List<ExistingDsrDataList>.from(
            json["ExistingDSRDataList"]
                .map((x) => ExistingDsrDataList.fromMap(x))),
        daburExistingDsrDataList: List<ExistingDsrDataList>.from(
            json["DaburExistingDSRDataList"]
                .map((x) => ExistingDsrDataList.fromMap(x))),
        zydusFeedbackTypeList:
            List<dynamic>.from(json["ZydusFeedbackTypeList"].map((x) => x)),
        zydusBrandList:
            List<dynamic>.from(json["ZydusBrandList"].map((x) => x)),
        daburV2OfferTypeList:
            List<dynamic>.from(json["DaburV2OfferTypeList"].map((x) => x)),
        competitionBenchmarkingOfferTypeList: List<dynamic>.from(
            json["CompetitionBenchmarkingOfferTypeList"].map((x) => x)),
        brittaniaV2StoreReverificationList: List<dynamic>.from(
            json["BrittaniaV2StoreReverificationList"].map((x) => x)),
        ublSalesPunchBrandList:
            List<dynamic>.from(json["UBLSalesPunchBrandList"].map((x) => x)),
        itcdsrList: List<dynamic>.from(json["ITCDSRList"].map((x) => x)),
        dbClassMappingList:
            List<dynamic>.from(json["DBClassMappingList"].map((x) => x)),
        userDistrictMappingList:
            List<dynamic>.from(json["UserDistrictMappingList"].map((x) => x)),
        userDistrictMappingV2List:
            List<dynamic>.from(json["UserDistrictMappingV2List"].map((x) => x)),
        daburReasonList: List<DaburReasonList>.from(
            json["DaburReasonList"].map((x) => DaburReasonList.fromMap(x))),
        targetAssigned: json["TargetAssigned"],
        totalSales: json["TotalSales"],
        storeCount: json["StoreCount"],
        productCount: json["ProductCount"],
        geofenceCount: json["GeofenceCount"],
        counter: json["Counter"],
        pageSize: json["PageSize"],
        success: json["Success"],
        message: json["Message"],
        pushLogout: json["PushLogout"],
        lastUpdated: json["LastUpdated"],
        showVisibilityDashboard: json["ShowVisibilityDashboard"],
        isJoiningKitStatus: json["IsJoiningKitStatus"],
        existingDsrCount: json["ExistingDSRCount"],
        daburExistingDsrCount: json["DaburExistingDSRCount"],
        britanniaOutletLowerLimit: json["BritanniaOutletLowerLimit"],
        britanniaOutletUpperLimit: json["BritanniaOutletUpperLimit"],
      );

  Map<String, dynamic> toMap() => {
        "StoreList": List<dynamic>.from(storeList!.map((x) => x)),
        "ProductList": List<dynamic>.from(productList!.map((x) => x.toMap())),
        "ProductCategoryList":
            List<dynamic>.from(productCategoryList!.map((x) => x.toMap())),
        "GeofenceCategoryList":
            List<dynamic>.from(geofenceCategoryList!.map((x) => x.toMap())),
        "GeofenceList": List<dynamic>.from(geofenceList!.map((x) => x)),
        "SurveyList": List<dynamic>.from(surveyList!.map((x) => x)),
        "QuestionList": List<dynamic>.from(questionList!.map((x) => x)),
        "MenuList": List<dynamic>.from(menuList!.map((x) => x.toMap())),
        "NotificationList": List<dynamic>.from(notificationList!.map((x) => x)),
        "TicketSubjectList":
            List<dynamic>.from(ticketSubjectList!.map((x) => x.toMap())),
        "StoreSurveyList": List<dynamic>.from(storeSurveyList!.map((x) => x)),
        "UserNotificationList":
            List<dynamic>.from(userNotificationList!.map((x) => x)),
        "NotificationCategoryList":
            List<dynamic>.from(notificationCategoryList!.map((x) => x)),
        "CustomParentChildCategoryList": List<dynamic>.from(
            customParentChildCategoryList!.map((x) => x.toMap())),
        "TopSellingProducts":
            List<dynamic>.from(topSellingProducts!.map((x) => x.toMap())),
        "VisibilityDashboardList":
            List<dynamic>.from(visibilityDashboardList!.map((x) => x)),
        "kycstatus": List<dynamic>.from(kycstatus!.map((x) => x.toMap())),
        "StoreCategoryList":
            List<dynamic>.from(storeCategoryList!.map((x) => x.toMap())),
        "DistributorList": List<dynamic>.from(distributorList!.map((x) => x)),
        "MasterStoreClassList":
            List<dynamic>.from(masterStoreClassList!.map((x) => x)),
        "MasterCuisineList":
            List<dynamic>.from(masterCuisineList!.map((x) => x)),
        "MasterTopDishList":
            List<dynamic>.from(masterTopDishList!.map((x) => x)),
        "MasterLookList": List<dynamic>.from(masterLookList!.map((x) => x)),
        "MasterCollateralList":
            List<dynamic>.from(masterCollateralList!.map((x) => x)),
        "AHJCHList": List<dynamic>.from(ahjchList!.map((x) => x)),
        "associatekycstatus":
            List<dynamic>.from(associatekycstatus!.map((x) => x.toMap())),
        "associatekycstatusv2":
            List<dynamic>.from(associatekycstatusv2!.map((x) => x.toMap())),
        "MasterStateList":
            List<dynamic>.from(masterStateList!.map((x) => x.toMap())),
        "MasterCityList":
            List<dynamic>.from(masterCityList!.map((x) => x.toMap())),
        "DistributorWithoutStoreList":
            List<dynamic>.from(distributorWithoutStoreList!.map((x) => x)),
        "MasterSODSRData": List<dynamic>.from(masterSodsrData!.map((x) => x)),
        "ExistingDSRDataList":
            List<dynamic>.from(existingDsrDataList!.map((x) => x.toMap())),
        "DaburExistingDSRDataList":
            List<dynamic>.from(daburExistingDsrDataList!.map((x) => x.toMap())),
        "ZydusFeedbackTypeList":
            List<dynamic>.from(zydusFeedbackTypeList!.map((x) => x)),
        "ZydusBrandList": List<dynamic>.from(zydusBrandList!.map((x) => x)),
        "DaburV2OfferTypeList":
            List<dynamic>.from(daburV2OfferTypeList!.map((x) => x)),
        "CompetitionBenchmarkingOfferTypeList": List<dynamic>.from(
            competitionBenchmarkingOfferTypeList!.map((x) => x)),
        "BrittaniaV2StoreReverificationList": List<dynamic>.from(
            brittaniaV2StoreReverificationList!.map((x) => x)),
        "UBLSalesPunchBrandList":
            List<dynamic>.from(ublSalesPunchBrandList!.map((x) => x)),
        "ITCDSRList": List<dynamic>.from(itcdsrList!.map((x) => x)),
        "DBClassMappingList":
            List<dynamic>.from(dbClassMappingList!.map((x) => x)),
        "UserDistrictMappingList":
            List<dynamic>.from(userDistrictMappingList!.map((x) => x)),
        "UserDistrictMappingV2List":
            List<dynamic>.from(userDistrictMappingV2List!.map((x) => x)),
        "DaburReasonList":
            List<dynamic>.from(daburReasonList!.map((x) => x.toMap())),
        "TargetAssigned": targetAssigned,
        "TotalSales": totalSales,
        "StoreCount": storeCount,
        "ProductCount": productCount,
        "GeofenceCount": geofenceCount,
        "Counter": counter,
        "PageSize": pageSize,
        "Success": success,
        "Message": message,
        "PushLogout": pushLogout,
        "LastUpdated": lastUpdated,
        "ShowVisibilityDashboard": showVisibilityDashboard,
        "IsJoiningKitStatus": isJoiningKitStatus,
        "ExistingDSRCount": existingDsrCount,
        "DaburExistingDSRCount": daburExistingDsrCount,
        "BritanniaOutletLowerLimit": britanniaOutletLowerLimit,
        "BritanniaOutletUpperLimit": britanniaOutletUpperLimit,
      };
}
