// GENERATED CODE DO NOT EDIT
// This file should NOT be version controlled and should not be manually edited.
part of '../brick.g.dart';

Future<Address> _$AddressFromRest(Map<String, dynamic> data,
    {RestProvider provider, OfflineFirstWithRestRepository repository}) async {
  return Address(
      parentId: data['ParentObjectID'] as String,
      city: data['City'] as String,
      street: data['Street'] as String,
      email: data['Email'] as String,
      country: data['Country'] as String,
      countryText: data['CountryText'] as String,
      phone: data['Phone'] as String,
      mobile: data['Mobile'] as String);
}

Future<Map<String, dynamic>> _$AddressToRest(Address instance,
    {RestProvider provider, OfflineFirstWithRestRepository repository}) async {
  return {
    'ParentObjectID': instance.parentId,
    'City': instance.city,
    'Street': instance.street,
    'Email': instance.email,
    'Country': instance.country,
    'CountryText': instance.countryText,
    'Phone': instance.phone,
    'Mobile': instance.mobile
  };
}

Future<Address> _$AddressFromSqlite(Map<String, dynamic> data,
    {SqliteProvider provider,
    OfflineFirstWithRestRepository repository}) async {
  return Address(
      parentId: data['parent_id'] == null ? null : data['parent_id'] as String,
      city: data['city'] == null ? null : data['city'] as String,
      street: data['street'] == null ? null : data['street'] as String,
      email: data['email'] == null ? null : data['email'] as String,
      country: data['country'] == null ? null : data['country'] as String,
      countryText:
          data['country_text'] == null ? null : data['country_text'] as String,
      phone: data['phone'] == null ? null : data['phone'] as String,
      mobile: data['mobile'] == null ? null : data['mobile'] as String)
    ..primaryKey = data['_brick_id'] as int;
}

Future<Map<String, dynamic>> _$AddressToSqlite(Address instance,
    {SqliteProvider provider,
    OfflineFirstWithRestRepository repository}) async {
  return {
    'parent_id': instance.parentId,
    'city': instance.city,
    'street': instance.street,
    'email': instance.email,
    'country': instance.country,
    'country_text': instance.countryText,
    'phone': instance.phone,
    'mobile': instance.mobile
  };
}

/// Construct a [Address]
class AddressAdapter extends OfflineFirstWithRestAdapter<Address> {
  AddressAdapter();

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
    'parentId': {
      'name': 'parent_id',
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
    'country': {
      'name': 'country',
      'type': String,
      'iterable': false,
      'association': false,
    },
    'countryText': {
      'name': 'country_text',
      'type': String,
      'iterable': false,
      'association': false,
    },
    'phone': {
      'name': 'phone',
      'type': String,
      'iterable': false,
      'association': false,
    },
    'mobile': {
      'name': 'mobile',
      'type': String,
      'iterable': false,
      'association': false,
    }
  };
  Future<int> primaryKeyByUniqueColumns(
          Address instance, DatabaseExecutor executor) async =>
      null;
  final String tableName = 'Address';

  Future<Address> fromRest(Map<String, dynamic> input,
          {provider, repository}) async =>
      await _$AddressFromRest(input,
          provider: provider, repository: repository);
  Future<Map<String, dynamic>> toRest(Address input,
          {provider, repository}) async =>
      await _$AddressToRest(input, provider: provider, repository: repository);
  Future<Address> fromSqlite(Map<String, dynamic> input,
          {provider, repository}) async =>
      await _$AddressFromSqlite(input,
          provider: provider, repository: repository);
  Future<Map<String, dynamic>> toSqlite(Address input,
          {provider, repository}) async =>
      await _$AddressToSqlite(input,
          provider: provider, repository: repository);
}
