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
class ServiceRequestText extends OfflineFirstWithRestModel
{
  @Rest(name: 'ObjectID')
  final String objectId;

  @Rest(name: 'ParentObjectID')
  final String parentId;

  @Rest(name: 'Text')
  final String text;

  @Rest(name: 'TypeCode')
  final String typeCode;

  @Rest(name: 'ServiceRequestID')
  final String serviceRequestId;

  ServiceRequestText({this.objectId, this.parentId, this.text, this.typeCode, this.serviceRequestId});

}