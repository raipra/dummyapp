// GENERATED CODE DO NOT EDIT
// This file should NOT be version controlled and should not be manually edited.
part of '../brick.g.dart';

Future<ServiceRequest> _$ServiceRequestFromRest(Map<String, dynamic> data,
    {RestProvider provider, OfflineFirstWithRestRepository repository}) async {
  return ServiceRequest(
      objectId: data['ObjectID'] as String,
      serviceRequestID: data['ID'] as String,
      subject: data['Name'] as String,
      workDescription: await repository
          ?.getAssociation<ServiceRequestText>(Query(
              where: [Where.exact('parentId', data['ObjectID'])],
              providerArgs: {'limit': 1}))
          ?.then((a) => a?.isNotEmpty == true ? a.first : null),
      inWarranty: data['LX_PRD_PD1'] as bool,
      productId: data['ProductID'] as String,
      technicianId: data['ServicePerformerPartyID'] as String,
      technician: await repository
          ?.getAssociation<Employee>(Query(where: [
            Where.exact('employeeId', data['ServicePerformerPartyID'])
          ], providerArgs: {
            'limit': 1
          }))
          ?.then((a) => a?.isNotEmpty == true ? a.first : null),
      customerId: data['BuyerPartyID'] as String,
      customer: await repository
          ?.getAssociation<Customer>(
              Query(where: [Where.exact('customerId', data['BuyerPartyID'])], providerArgs: {'limit': 1}))
          ?.then((a) => a?.isNotEmpty == true ? a.first : null),
      serialNumber: data['LX_PRD_SN1'] as String,
      items: await Future.wait<ServiceRequestItem>((data['items'] ?? []).map((s) => repository?.getAssociation<ServiceRequestItem>(Query(where: [Where.exact('parentId', s)]))?.then((a) => a?.isNotEmpty == true ? a.first : null))?.toList()?.cast<Future<ServiceRequestItem>>() ?? []),
      serviceLocation: await repository?.getAssociation<Address>(Query(where: [Where.exact('parentId', data['ObjectID'])], providerArgs: {'limit': 1}))?.then((a) => a?.isNotEmpty == true ? a.first : null),
      actualVisitStartDate: data['LX_TKT_ASTDT'] == null ? null : DateTime.tryParse(data['LX_TKT_ASTDT'] as String),
      actualVisitEndDate: data['LX_TKT_AENDT'] == null ? null : DateTime.tryParse(data['LX_TKT_AENDT'] as String),
      paymentMethod: data['LX_TCK_CC'] as String,
      plannedAmount: data['LX_TCK_EScontent'] as double,
      faultCodeKey: data['LX_TXT_FCK'] as String,
      componentCode: data['LX_TXT_CC'] as String,
      defectCode: data['LX_TXT_DC'] as String,
      faultReported: data['LX_TCK_FR'] as String,
      errorCode: data['LX_TCK_EC'] as String,
      actionTaken: data['LX_TCK_AT'] as String);
}

Future<Map<String, dynamic>> _$ServiceRequestToRest(ServiceRequest instance,
    {RestProvider provider, OfflineFirstWithRestRepository repository}) async {
  return {
    'ObjectID': instance.objectId,
    'ID': instance.serviceRequestID,
    'Name': instance.subject,
    'LX_PRD_PD1': instance.inWarranty,
    'ProductID': instance.productId,
    'ServicePerformerPartyID': instance.technicianId,
    'BuyerPartyID': instance.customerId,
    'LX_PRD_SN1': instance.serialNumber,
    'LX_TKT_ASTDT': instance.actualVisitStartDate?.toIso8601String(),
    'LX_TKT_AENDT': instance.actualVisitEndDate?.toIso8601String(),
    'LX_TCK_CC': instance.paymentMethod,
    'LX_TCK_EScontent': instance.plannedAmount,
    'LX_TXT_FCK': instance.faultCodeKey,
    'LX_TXT_CC': instance.componentCode,
    'LX_TXT_DC': instance.defectCode,
    'LX_TCK_FR': instance.faultReported,
    'LX_TCK_EC': instance.errorCode,
    'LX_TCK_AT': instance.actionTaken
  };
}

Future<ServiceRequest> _$ServiceRequestFromSqlite(Map<String, dynamic> data,
    {SqliteProvider provider,
    OfflineFirstWithRestRepository repository}) async {
  return ServiceRequest(
      objectId: data['object_id'] == null ? null : data['object_id'] as String,
      serviceRequestID: data['service_request_i_d'] == null
          ? null
          : data['service_request_i_d'] as String,
      subject: data['subject'] == null ? null : data['subject'] as String,
      workDescription:
          data['work_description_ServiceRequestText_brick_id'] == null
              ? null
              : (data['work_description_ServiceRequestText_brick_id'] > -1
                  ? (await repository?.getAssociation<ServiceRequestText>(
                      Query.where(
                          'primaryKey',
                          data['work_description_ServiceRequestText_brick_id']
                              as int,
                          limit1: true),
                    ))
                      ?.first
                  : null),
      inWarranty: data['in_warranty'] == null ? null : data['in_warranty'] == 1,
      productId:
          data['product_id'] == null ? null : data['product_id'] as String,
      technicianId: data['technician_id'] == null
          ? null
          : data['technician_id'] as String,
      technician: data['technician_Employee_brick_id'] == null
          ? null
          : (data['technician_Employee_brick_id'] > -1
              ? (await repository?.getAssociation<Employee>(
                  Query.where(
                      'primaryKey', data['technician_Employee_brick_id'] as int,
                      limit1: true),
                ))
                  ?.first
              : null),
      customerId:
          data['customer_id'] == null ? null : data['customer_id'] as String,
      customer: data['customer_Customer_brick_id'] == null
          ? null
          : (data['customer_Customer_brick_id'] > -1
              ? (await repository?.getAssociation<Customer>(
                  Query.where(
                      'primaryKey', data['customer_Customer_brick_id'] as int,
                      limit1: true),
                ))
                  ?.first
              : null),
      serialNumber: data['serial_number'] == null
          ? null
          : data['serial_number'] as String,
      items: data['items'] == null
          ? null
          : await Future.wait<ServiceRequestItem>(
              jsonDecode(data['items'] ?? [])
                  .map((primaryKey) => repository
                      ?.getAssociation<ServiceRequestItem>(
                        Query.where('primaryKey', primaryKey, limit1: true),
                      )
                      ?.then((r) => (r?.isEmpty ?? true) ? null : r.first))
                  ?.toList()
                  ?.cast<Future<ServiceRequestItem>>()),
      serviceLocation: data['service_location_Address_brick_id'] == null
          ? null
          : (data['service_location_Address_brick_id'] > -1
              ? (await repository?.getAssociation<Address>(
                  Query.where('primaryKey',
                      data['service_location_Address_brick_id'] as int,
                      limit1: true),
                ))
                  ?.first
              : null),
      plannedStartDate: data['planned_start_date'] == null
          ? null
          : data['planned_start_date'] == null
              ? null
              : DateTime.tryParse(data['planned_start_date'] as String),
      plannedEndDate: data['planned_end_date'] == null
          ? null
          : data['planned_end_date'] == null
              ? null
              : DateTime.tryParse(data['planned_end_date'] as String),
      actualVisitStartDate: data['actual_visit_start_date'] == null
          ? null
          : data['actual_visit_start_date'] == null
              ? null
              : DateTime.tryParse(data['actual_visit_start_date'] as String),
      actualVisitEndDate: data['actual_visit_end_date'] == null
          ? null
          : data['actual_visit_end_date'] == null
              ? null
              : DateTime.tryParse(data['actual_visit_end_date'] as String),
      paymentAmount: data['payment_amount'] == null
          ? null
          : data['payment_amount'] as double,
      paymentID:
          data['payment_i_d'] == null ? null : data['payment_i_d'] as String,
      paymentStatus: data['payment_status'] == null
          ? null
          : data['payment_status'] as String,
      paymentMethod: data['payment_method'] == null
          ? null
          : data['payment_method'] as String,
      plannedAmount: data['planned_amount'] == null
          ? null
          : data['planned_amount'] as double,
      actualAmount: data['actual_amount'] == null
          ? null
          : data['actual_amount'] as double,
      maxAmount:
          data['max_amount'] == null ? null : data['max_amount'] as double,
      faultCodeKey: data['fault_code_key'] == null
          ? null
          : data['fault_code_key'] as String,
      componentCode: data['component_code'] == null
          ? null
          : data['component_code'] as String,
      defectCode:
          data['defect_code'] == null ? null : data['defect_code'] as String,
      faultReported: data['fault_reported'] == null
          ? null
          : data['fault_reported'] as String,
      errorCode:
          data['error_code'] == null ? null : data['error_code'] as String,
      actionTaken:
          data['action_taken'] == null ? null : data['action_taken'] as String)
    ..primaryKey = data['_brick_id'] as int;
}

Future<Map<String, dynamic>> _$ServiceRequestToSqlite(ServiceRequest instance,
    {SqliteProvider provider,
    OfflineFirstWithRestRepository repository}) async {
  return {
    'object_id': instance.objectId,
    'service_request_i_d': instance.serviceRequestID,
    'subject': instance.subject,
    'work_description_ServiceRequestText_brick_id':
        instance.workDescription?.primaryKey,
    'in_warranty': instance.inWarranty,
    'product_id': instance.productId,
    'technician_id': instance.technicianId,
    'technician_Employee_brick_id': instance.technician?.primaryKey,
    'customer_id': instance.customerId,
    'customer_Customer_brick_id': instance.customer?.primaryKey,
    'serial_number': instance.serialNumber,
    'items': jsonEncode((await Future.wait<int>(instance.items
                ?.map((s) async {
                  return s?.primaryKey ??
                      await provider?.upsert<ServiceRequestItem>(s,
                          repository: repository);
                })
                ?.toList()
                ?.cast<Future<int>>() ??
            []))
        .where((s) => s != null)
        .toList()
        .cast<int>()),
    'service_location_Address_brick_id': instance.serviceLocation?.primaryKey,
    'planned_start_date': instance.plannedStartDate?.toIso8601String(),
    'planned_end_date': instance.plannedEndDate?.toIso8601String(),
    'actual_visit_start_date': instance.actualVisitStartDate?.toIso8601String(),
    'actual_visit_end_date': instance.actualVisitEndDate?.toIso8601String(),
    'payment_amount': instance.paymentAmount,
    'payment_i_d': instance.paymentID,
    'payment_status': instance.paymentStatus,
    'payment_method': instance.paymentMethod,
    'planned_amount': instance.plannedAmount,
    'actual_amount': instance.actualAmount,
    'max_amount': instance.maxAmount,
    'fault_code_key': instance.faultCodeKey,
    'component_code': instance.componentCode,
    'defect_code': instance.defectCode,
    'fault_reported': instance.faultReported,
    'error_code': instance.errorCode,
    'action_taken': instance.actionTaken
  };
}

/// Construct a [ServiceRequest]
class ServiceRequestAdapter
    extends OfflineFirstWithRestAdapter<ServiceRequest> {
  ServiceRequestAdapter();

  String restEndpoint({query, instance}) {
    if (query.action == QueryAction.upsert) {
      return "/ServiceRequestCollection";
    }
    if (query.action == QueryAction.get && query?.where != null) {
      final byId = Where.firstByField('ObjectID', query.where);
      // member endpoint
      if (byId != null && byId.value != null) {
        return "/ServiceRequestCollection(\'${byId.value}\')";
      }
    }
    if (query.action == QueryAction.get && query?.where != null) {
      final byId = Where.firstByField('ID', query.where);
      // member endpoint
      if (byId != null && byId.value != null) {
        return "/ServiceRequestCollection?\$filter=ID eq '${byId.value}'";
      }
    }
    if (query.action == QueryAction.get) {
      return "/ServiceRequestCollection";
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
    'serviceRequestID': {
      'name': 'service_request_i_d',
      'type': String,
      'iterable': false,
      'association': false,
    },
    'subject': {
      'name': 'subject',
      'type': String,
      'iterable': false,
      'association': false,
    },
    'workDescription': {
      'name': 'work_description_ServiceRequestText_brick_id',
      'type': ServiceRequestText,
      'iterable': false,
      'association': true,
    },
    'inWarranty': {
      'name': 'in_warranty',
      'type': bool,
      'iterable': false,
      'association': false,
    },
    'productId': {
      'name': 'product_id',
      'type': String,
      'iterable': false,
      'association': false,
    },
    'technicianId': {
      'name': 'technician_id',
      'type': String,
      'iterable': false,
      'association': false,
    },
    'technician': {
      'name': 'technician_Employee_brick_id',
      'type': Employee,
      'iterable': false,
      'association': true,
    },
    'customerId': {
      'name': 'customer_id',
      'type': String,
      'iterable': false,
      'association': false,
    },
    'customer': {
      'name': 'customer_Customer_brick_id',
      'type': Customer,
      'iterable': false,
      'association': true,
    },
    'serialNumber': {
      'name': 'serial_number',
      'type': String,
      'iterable': false,
      'association': false,
    },
    'items': {
      'name': 'items',
      'type': ServiceRequestItem,
      'iterable': true,
      'association': true,
    },
    'serviceLocation': {
      'name': 'service_location_Address_brick_id',
      'type': Address,
      'iterable': false,
      'association': true,
    },
    'plannedStartDate': {
      'name': 'planned_start_date',
      'type': DateTime,
      'iterable': false,
      'association': false,
    },
    'plannedEndDate': {
      'name': 'planned_end_date',
      'type': DateTime,
      'iterable': false,
      'association': false,
    },
    'actualVisitStartDate': {
      'name': 'actual_visit_start_date',
      'type': DateTime,
      'iterable': false,
      'association': false,
    },
    'actualVisitEndDate': {
      'name': 'actual_visit_end_date',
      'type': DateTime,
      'iterable': false,
      'association': false,
    },
    'paymentAmount': {
      'name': 'payment_amount',
      'type': double,
      'iterable': false,
      'association': false,
    },
    'paymentID': {
      'name': 'payment_i_d',
      'type': String,
      'iterable': false,
      'association': false,
    },
    'paymentStatus': {
      'name': 'payment_status',
      'type': String,
      'iterable': false,
      'association': false,
    },
    'paymentMethod': {
      'name': 'payment_method',
      'type': String,
      'iterable': false,
      'association': false,
    },
    'plannedAmount': {
      'name': 'planned_amount',
      'type': double,
      'iterable': false,
      'association': false,
    },
    'actualAmount': {
      'name': 'actual_amount',
      'type': double,
      'iterable': false,
      'association': false,
    },
    'maxAmount': {
      'name': 'max_amount',
      'type': double,
      'iterable': false,
      'association': false,
    },
    'faultCodeKey': {
      'name': 'fault_code_key',
      'type': String,
      'iterable': false,
      'association': false,
    },
    'componentCode': {
      'name': 'component_code',
      'type': String,
      'iterable': false,
      'association': false,
    },
    'defectCode': {
      'name': 'defect_code',
      'type': String,
      'iterable': false,
      'association': false,
    },
    'faultReported': {
      'name': 'fault_reported',
      'type': String,
      'iterable': false,
      'association': false,
    },
    'errorCode': {
      'name': 'error_code',
      'type': String,
      'iterable': false,
      'association': false,
    },
    'actionTaken': {
      'name': 'action_taken',
      'type': String,
      'iterable': false,
      'association': false,
    }
  };
  Future<int> primaryKeyByUniqueColumns(
      ServiceRequest instance, DatabaseExecutor executor) async {
    final results = await executor.rawQuery('''
        SELECT * FROM `ServiceRequest` WHERE object_id = ? LIMIT 1''',
        [instance.objectId]);

    // SQFlite returns [{}] when no results are found
    if (results?.isEmpty == true ||
        (results?.length == 1 && results?.first?.isEmpty == true)) return null;

    return results.first['_brick_id'];
  }

  final String tableName = 'ServiceRequest';

  Future<ServiceRequest> fromRest(Map<String, dynamic> input,
          {provider, repository}) async =>
      await _$ServiceRequestFromRest(input,
          provider: provider, repository: repository);
  Future<Map<String, dynamic>> toRest(ServiceRequest input,
          {provider, repository}) async =>
      await _$ServiceRequestToRest(input,
          provider: provider, repository: repository);
  Future<ServiceRequest> fromSqlite(Map<String, dynamic> input,
          {provider, repository}) async =>
      await _$ServiceRequestFromSqlite(input,
          provider: provider, repository: repository);
  Future<Map<String, dynamic>> toSqlite(ServiceRequest input,
          {provider, repository}) async =>
      await _$ServiceRequestToSqlite(input,
          provider: provider, repository: repository);
}
