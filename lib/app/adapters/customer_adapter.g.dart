// GENERATED CODE DO NOT EDIT
// This file should NOT be version controlled and should not be manually edited.
part of '../brick.g.dart';

Future<Customer> _$CustomerFromRest(Map<String, dynamic> data,
    {RestProvider provider, OfflineFirstWithRestRepository repository}) async {
  return Customer(
      objectId: data['ObjectID'] as String,
      customerId: data['CustomerID'] as String,
      firstName: data['FirstName'] as String,
      lastName: data['LastName'] as String,
      country: data['CountryCodeText'] as String,
      city: data['City'] as String,
      mobileNumber: data['MobilePhoneNumber'] as String,
      street: data['Street'] as String,
      email: data['Email'] as String,
      language: data['LanguageCodeText'] as String);
}

Future<Map<String, dynamic>> _$CustomerToRest(Customer instance,
    {RestProvider provider, OfflineFirstWithRestRepository repository}) async {
  return {
    'ObjectID': instance.objectId,
    'CustomerID': instance.customerId,
    'FirstName': instance.firstName,
    'LastName': instance.lastName,
    'CountryCodeText': instance.country,
    'City': instance.city,
    'MobilePhoneNumber': instance.mobileNumber,
    'Street': instance.street,
    'Email': instance.email,
    'LanguageCodeText': instance.language
  };
}

Future<Customer> _$CustomerFromSqlite(Map<String, dynamic> data,
    {SqliteProvider provider,
    OfflineFirstWithRestRepository repository}) async {
  return Customer(
      objectId: data['object_id'] == null ? null : data['object_id'] as String,
      customerId:
          data['customer_id'] == null ? null : data['customer_id'] as String,
      firstName:
          data['first_name'] == null ? null : data['first_name'] as String,
      lastName: data['last_name'] == null ? null : data['last_name'] as String,
      country: data['country'] == null ? null : data['country'] as String,
      city: data['city'] == null ? null : data['city'] as String,
      mobileNumber: data['mobile_number'] == null
          ? null
          : data['mobile_number'] as String,
      street: data['street'] == null ? null : data['street'] as String,
      email: data['email'] == null ? null : data['email'] as String,
      language: data['language'] == null ? null : data['language'] as String)
    ..primaryKey = data['_brick_id'] as int;
}

Future<Map<String, dynamic>> _$CustomerToSqlite(Customer instance,
    {SqliteProvider provider,
    OfflineFirstWithRestRepository repository}) async {
  return {
    'object_id': instance.objectId,
    'customer_id': instance.customerId,
    'first_name': instance.firstName,
    'last_name': instance.lastName,
    'country': instance.country,
    'city': instance.city,
    'mobile_number': instance.mobileNumber,
    'street': instance.street,
    'email': instance.email,
    'language': instance.language
  };
}

/// Construct a [Customer]
class CustomerAdapter extends OfflineFirstWithRestAdapter<Customer> {
  CustomerAdapter();

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
    'customerId': {
      'name': 'customer_id',
      'type': String,
      'iterable': false,
      'association': false,
    },
    'firstName': {
      'name': 'first_name',
      'type': String,
      'iterable': false,
      'association': false,
    },
    'lastName': {
      'name': 'last_name',
      'type': String,
      'iterable': false,
      'association': false,
    },
    'country': {
      'name': 'country',
      'type': String,
      'iterable': false,
      'association': false,
    },
    'city': {
      'name': 'city',
      'type': String,
      'iterable': false,
      'association': false,
    },
    'mobileNumber': {
      'name': 'mobile_number',
      'type': String,
      'iterable': false,
      'association': false,
    },
    'street': {
      'name': 'street',
      'type': String,
      'iterable': false,
      'association': false,
    },
    'email': {
      'name': 'email',
      'type': String,
      'iterable': false,
      'association': false,
    },
    'language': {
      'name': 'language',
      'type': String,
      'iterable': false,
      'association': false,
    }
  };
  Future<int> primaryKeyByUniqueColumns(
          Customer instance, DatabaseExecutor executor) async =>
      null;
  final String tableName = 'Customer';

  Future<Customer> fromRest(Map<String, dynamic> input,
          {provider, repository}) async =>
      await _$CustomerFromRest(input,
          provider: provider, repository: repository);
  Future<Map<String, dynamic>> toRest(Customer input,
          {provider, repository}) async =>
      await _$CustomerToRest(input, provider: provider, repository: repository);
  Future<Customer> fromSqlite(Map<String, dynamic> input,
          {provider, repository}) async =>
      await _$CustomerFromSqlite(input,
          provider: provider, repository: repository);
  Future<Map<String, dynamic>> toSqlite(Customer input,
          {provider, repository}) async =>
      await _$CustomerToSqlite(input,
          provider: provider, repository: repository);
}
