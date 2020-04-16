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
  @Rest(name: 'workDescriptions')
  Text workDescription;

  @Rest(name: 'LX_PRD_PD1')
  bool inWarranty;

  List <ServiceRequestItem> items;
  Address serviceLocation;
  Customer customer;
  Visit visitDetails;
  BillingDetails billing;
  TechnicianReport technicianReport;
  DateTime plannedStartDate;
  DateTime plannedEndDate;
  DateTime actualVisitStartDate;
  DateTime actualVisitEndDate;
  double paymentAmount;
  String paymentID;
  String paymentStatus;
  String paymentMethod;
  double plannedAmount;
  double actualAmount;
  double maxAmount;

  String faultCodeKey;
  String componentCode;
  String defectCode;
  String faultReported;
  String errorCode;


}

class ServiceRequestItem
{
  String partID;
  double plannedQuantity;
  double actualQuantity;
  String technicianName;
  String partDescripiton;


}
class Customer
{
  String customerId;
  String firstName;
  String lastName;
  String mobileNumber;
  String homeNumber;
  String email;
  String language;
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

