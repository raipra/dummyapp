import 'package:brick_offline_first/offline_first_with_rest.dart';

class ServiceRequest
{
  @Sqlite(unique: true)
  @Rest(name: 'ObjectID')
  final String objectId;

  @Rest(name: "ID")
  final String serviceRequestID;

  @Rest(name: "Name")
  final String subject;

  @OfflineFirst(where: {'parentId': "data['ObjectID']"})
  @Rest(name: 'objectId')
  final Text workDescription;

  @Rest(name: 'LX_PRD_PD1')
  final bool inWarranty;

  @Rest(name: 'ProductID')
  final String productId;

  @Rest(name: 'ServicePerformerPartyID')
  final String technicianId;

  @Rest(name: 'BuyerPartyID')
  final String customerId;

  @OfflineFirst(where: {'parentId': "data['BuyerPartyID']"})
  @Rest(name: 'BuyerPartyID')
  final Customer customer;

  @Rest(name:'LX_PRD_SN1')
  final String serialNumber;

  @OfflineFirst(where: {'parentId': "data['ObjectID']"})
  @Rest(name: 'objectId')
  List <ServiceRequestItem> items;

  @OfflineFirst(where: {'parentId': "data['ObjectID']"})
  @Rest(name: 'objectId')
  Address serviceLocation;

  @Rest(name: '')
  DateTime plannedStartDate;
  DateTime plannedEndDate;

  @Rest(name: 'LX_TKT_ASTDT')
  DateTime actualVisitStartDate;

  @Rest(name: 'LX_TKT_AENDT')
  DateTime actualVisitEndDate;

  @Rest(ignore: true)
  double paymentAmount;

  @Rest(ignore: true)
  String paymentID;

  @Rest(ignore: true)
  String paymentStatus;

  @Rest(name: 'LX_TCK_CC')
  String paymentMethod;

  @Rest(name: 'LX_TCK_EScontent')
  double plannedAmount;

  @Rest(ignore: true)
  double actualAmount;

  @Rest(ignore: true)
  double maxAmount;

  @Rest(name: 'LX_TXT_FCK')
  String faultCodeKey;

  @Rest(name: 'LX_TXT_CC')
  String componentCode;

  @Rest(name: 'LX_TXT_DC')
  String defectCode;

  @Rest(name: 'LX_TCK_FR')
  String faultReported;

  @Rest(name: 'LX_TCK_EC')
  String errorCode;

  @Rest(name: 'LX_TCK_AT')
  String actionTaken;


}



class ServiceLocation
{
  String city;
  String country;
  String streetName;
  String houseNumber;
  String postalCode;
  String region;

}

