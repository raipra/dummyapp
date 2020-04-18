import 'package:brick_offline_first/offline_first_with_rest.dart';

@ConnectOfflineFirstWithRest(
  restConfig: RestSerializable(
    endpoint: r'''{
    if (query.action == QueryAction.upsert) {
      return "/IndividualCustomerCollection";
    }
    if (query.action == QueryAction.get && query?.where != null) {
      final byId = Where.firstByField('ObjectID', query.where);
      // member endpoint
      if (byId != null && byId.value != null) {
        return "/IndividualCustomerCollection(\'${byId.value}\')";
      }
      
    }
    if (query.action == QueryAction.get && query?.where != null) {
      final byId = Where.firstByField('ID', query.where);
      // member endpoint
      if (byId != null && byId.value != null) {
        return "/IndividualCustomerCollection?\$filter=CustomerID eq '${byId.value}'";
      }
    }  
    if (query.action == QueryAction.get) {
      return "/IndividualCustomerCollection";
    }
    return null;
  }''',
  ),
)
class ServiceRequestItem extends OfflineFirstWithRestModel
{
  @Rest(name: 'ID')
  final  String itemId;

  @Rest(name: 'ObjectID')
  final String objectId;

  @Rest(name: 'ParentObjectID')
  final String parentId;

  @Rest(name: 'PlannedQuantity')
  final double plannedQuantity;

  @Rest(name: 'ActualQuantity')
  final double actualQuantity;

  @Rest(name: 'ServicePerformerPartyID')
  final String technicianId;

  @Rest(name: 'ProductID')
  final String partId;

  @Rest(name: 'Description')
  final String partDescription;

  @Rest(name: 'UserServiceTransactionProcessingTypeCode')
  final String processingTypeCode;

  @Rest(name: 'WarrantyGoodwillCode')
  final String coverageCode;

  ServiceRequestItem({this.itemId, this.objectId, this.parentId, this.plannedQuantity, this.actualQuantity, this.technicianId, this.partId, this.partDescription, this.processingTypeCode, this.coverageCode});




}
