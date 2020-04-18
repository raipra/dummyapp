import 'package:brick_offline_first/offline_first_with_rest.dart';


class ServiceRequestItem
{
  @Rest(name: 'ID')
  String itemId;

  @Rest(name: 'ObjectID')
  String objectId;

  @Rest(name: 'ParentObjectID')
  String parentId;

  @Rest(name: 'PlannedQuantity')
  double plannedQuantity;

  @Rest(name: 'ActualQuantity')
  double actualQuantity;

  @Rest(name: 'ServicePerformerPartyID')
  String technicianId;

  @Rest(name: 'ProductID')
  String partId;


  @Rest(name: 'Description')
  String partDescription;

  @Rest(name: 'UserServiceTransactionProcessingTypeCode')
  String processingTypeCode;

  @Rest(name: 'WarrantyGoodwillCode')
  String coverageCode;




}
