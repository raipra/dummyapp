// GENERATED CODE DO NOT EDIT
// This file should NOT be version controlled and should not be manually edited.
part of '../brick.g.dart';

Future<ServiceRequestItem> _$ServiceRequestItemFromRest(
    Map<String, dynamic> data,
    {RestProvider provider,
    OfflineFirstWithRestRepository repository}) async {
  return ServiceRequestItem(
      itemId: data['ID'] as String,
      objectId: data['ObjectID'] as String,
      parentId: data['ParentObjectID'] as String,
      plannedQuantity: data['PlannedQuantity'] as double,
      actualQuantity: data['ActualQuantity'] as double,
      technicianId: data['ServicePerformerPartyID'] as String,
      partId: data['ProductID'] as String,
      partDescription: data['Description'] as String,
      processingTypeCode:
          data['UserServiceTransactionProcessingTypeCode'] as String,
      coverageCode: data['WarrantyGoodwillCode'] as String);
}

Future<Map<String, dynamic>> _$ServiceRequestItemToRest(
    ServiceRequestItem instance,
    {RestProvider provider,
    OfflineFirstWithRestRepository repository}) async {
  return {
    'ID': instance.itemId,
    'ObjectID': instance.objectId,
    'ParentObjectID': instance.parentId,
    'PlannedQuantity': instance.plannedQuantity,
    'ActualQuantity': instance.actualQuantity,
    'ServicePerformerPartyID': instance.technicianId,
    'ProductID': instance.partId,
    'Description': instance.partDescription,
    'UserServiceTransactionProcessingTypeCode': instance.processingTypeCode,
    'WarrantyGoodwillCode': instance.coverageCode
  };
}

Future<ServiceRequestItem> _$ServiceRequestItemFromSqlite(
    Map<String, dynamic> data,
    {SqliteProvider provider,
    OfflineFirstWithRestRepository repository}) async {
  return ServiceRequestItem(
      itemId: data['item_id'] == null ? null : data['item_id'] as String,
      objectId: data['object_id'] == null ? null : data['object_id'] as String,
      parentId: data['parent_id'] == null ? null : data['parent_id'] as String,
      plannedQuantity: data['planned_quantity'] == null
          ? null
          : data['planned_quantity'] as double,
      actualQuantity: data['actual_quantity'] == null
          ? null
          : data['actual_quantity'] as double,
      technicianId: data['technician_id'] == null
          ? null
          : data['technician_id'] as String,
      partId: data['part_id'] == null ? null : data['part_id'] as String,
      partDescription: data['part_description'] == null
          ? null
          : data['part_description'] as String,
      processingTypeCode: data['processing_type_code'] == null
          ? null
          : data['processing_type_code'] as String,
      coverageCode: data['coverage_code'] == null
          ? null
          : data['coverage_code'] as String)
    ..primaryKey = data['_brick_id'] as int;
}

Future<Map<String, dynamic>> _$ServiceRequestItemToSqlite(
    ServiceRequestItem instance,
    {SqliteProvider provider,
    OfflineFirstWithRestRepository repository}) async {
  return {
    'item_id': instance.itemId,
    'object_id': instance.objectId,
    'parent_id': instance.parentId,
    'planned_quantity': instance.plannedQuantity,
    'actual_quantity': instance.actualQuantity,
    'technician_id': instance.technicianId,
    'part_id': instance.partId,
    'part_description': instance.partDescription,
    'processing_type_code': instance.processingTypeCode,
    'coverage_code': instance.coverageCode
  };
}

/// Construct a [ServiceRequestItem]
class ServiceRequestItemAdapter
    extends OfflineFirstWithRestAdapter<ServiceRequestItem> {
  ServiceRequestItemAdapter();

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
    'itemId': {
      'name': 'item_id',
      'type': String,
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
    'plannedQuantity': {
      'name': 'planned_quantity',
      'type': double,
      'iterable': false,
      'association': false,
    },
    'actualQuantity': {
      'name': 'actual_quantity',
      'type': double,
      'iterable': false,
      'association': false,
    },
    'technicianId': {
      'name': 'technician_id',
      'type': String,
      'iterable': false,
      'association': false,
    },
    'partId': {
      'name': 'part_id',
      'type': String,
      'iterable': false,
      'association': false,
    },
    'partDescription': {
      'name': 'part_description',
      'type': String,
      'iterable': false,
      'association': false,
    },
    'processingTypeCode': {
      'name': 'processing_type_code',
      'type': String,
      'iterable': false,
      'association': false,
    },
    'coverageCode': {
      'name': 'coverage_code',
      'type': String,
      'iterable': false,
      'association': false,
    }
  };
  Future<int> primaryKeyByUniqueColumns(
          ServiceRequestItem instance, DatabaseExecutor executor) async =>
      null;
  final String tableName = 'ServiceRequestItem';

  Future<ServiceRequestItem> fromRest(Map<String, dynamic> input,
          {provider, repository}) async =>
      await _$ServiceRequestItemFromRest(input,
          provider: provider, repository: repository);
  Future<Map<String, dynamic>> toRest(ServiceRequestItem input,
          {provider, repository}) async =>
      await _$ServiceRequestItemToRest(input,
          provider: provider, repository: repository);
  Future<ServiceRequestItem> fromSqlite(Map<String, dynamic> input,
          {provider, repository}) async =>
      await _$ServiceRequestItemFromSqlite(input,
          provider: provider, repository: repository);
  Future<Map<String, dynamic>> toSqlite(ServiceRequestItem input,
          {provider, repository}) async =>
      await _$ServiceRequestItemToSqlite(input,
          provider: provider, repository: repository);
}
