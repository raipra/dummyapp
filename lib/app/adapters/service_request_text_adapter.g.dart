// GENERATED CODE DO NOT EDIT
// This file should NOT be version controlled and should not be manually edited.
part of '../brick.g.dart';

Future<ServiceRequestText> _$ServiceRequestTextFromRest(
    Map<String, dynamic> data,
    {RestProvider provider,
    OfflineFirstWithRestRepository repository}) async {
  return ServiceRequestText(
      objectId: data['ObjectID'] as String,
      parentId: data['ParentObjectID'] as String,
      text: data['Text'] as String,
      typeCode: data['TypeCode'] as String,
      serviceRequestId: data['ServiceRequestID'] as String);
}

Future<Map<String, dynamic>> _$ServiceRequestTextToRest(
    ServiceRequestText instance,
    {RestProvider provider,
    OfflineFirstWithRestRepository repository}) async {
  return {
    'ObjectID': instance.objectId,
    'ParentObjectID': instance.parentId,
    'Text': instance.text,
    'TypeCode': instance.typeCode,
    'ServiceRequestID': instance.serviceRequestId
  };
}

Future<ServiceRequestText> _$ServiceRequestTextFromSqlite(
    Map<String, dynamic> data,
    {SqliteProvider provider,
    OfflineFirstWithRestRepository repository}) async {
  return ServiceRequestText(
      objectId: data['object_id'] == null ? null : data['object_id'] as String,
      parentId: data['parent_id'] == null ? null : data['parent_id'] as String,
      text: data['text'] == null ? null : data['text'] as String,
      typeCode: data['type_code'] == null ? null : data['type_code'] as String,
      serviceRequestId: data['service_request_id'] == null
          ? null
          : data['service_request_id'] as String)
    ..primaryKey = data['_brick_id'] as int;
}

Future<Map<String, dynamic>> _$ServiceRequestTextToSqlite(
    ServiceRequestText instance,
    {SqliteProvider provider,
    OfflineFirstWithRestRepository repository}) async {
  return {
    'object_id': instance.objectId,
    'parent_id': instance.parentId,
    'text': instance.text,
    'type_code': instance.typeCode,
    'service_request_id': instance.serviceRequestId
  };
}

/// Construct a [ServiceRequestText]
class ServiceRequestTextAdapter
    extends OfflineFirstWithRestAdapter<ServiceRequestText> {
  ServiceRequestTextAdapter();

  String restEndpoint({query, instance}) {
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
  }

  final String fromKey = null;
  final String toKey = null;
  final Map<String, Map<String, dynamic>> fieldsToSqliteColumns = {
    'primaryKey': {
      'name': '_brick_id',
      'type': int,
      'iterable': false,
      'association': false,
    },
    'objectId': {
      'name': 'object_id',
      'type': String,
      'iterable': false,
      'association': false,
    },
    'parentId': {
      'name': 'parent_id',
      'type': String,
      'iterable': false,
      'association': false,
    },
    'text': {
      'name': 'text',
      'type': String,
      'iterable': false,
      'association': false,
    },
    'typeCode': {
      'name': 'type_code',
      'type': String,
      'iterable': false,
      'association': false,
    },
    'serviceRequestId': {
      'name': 'service_request_id',
      'type': String,
      'iterable': false,
      'association': false,
    }
  };
  Future<int> primaryKeyByUniqueColumns(
          ServiceRequestText instance, DatabaseExecutor executor) async =>
      null;
  final String tableName = 'ServiceRequestText';

  Future<ServiceRequestText> fromRest(Map<String, dynamic> input,
          {provider, repository}) async =>
      await _$ServiceRequestTextFromRest(input,
          provider: provider, repository: repository);
  Future<Map<String, dynamic>> toRest(ServiceRequestText input,
          {provider, repository}) async =>
      await _$ServiceRequestTextToRest(input,
          provider: provider, repository: repository);
  Future<ServiceRequestText> fromSqlite(Map<String, dynamic> input,
          {provider, repository}) async =>
      await _$ServiceRequestTextFromSqlite(input,
          provider: provider, repository: repository);
  Future<Map<String, dynamic>> toSqlite(ServiceRequestText input,
          {provider, repository}) async =>
      await _$ServiceRequestTextToSqlite(input,
          provider: provider, repository: repository);
}
