// ignore: unused_import, unused_shown_name
import 'package:brick_sqlite_abstract/db.dart';
// ignore: unused_import, unused_shown_name
import 'package:brick_offline_first/offline_first_with_rest.dart';
// ignore: unused_import, unused_shown_name
import 'models/employee.dart';
// ignore: unused_import, unused_shown_name
import 'models/customer.dart';
// ignore: unused_import, unused_shown_name
import 'models/service_request_item.dart';
// ignore: unused_import, unused_shown_name
import 'models/service_request_text.dart';
// ignore: unused_import, unused_shown_name
import 'models/address.dart';// GENERATED CODE DO NOT EDIT
// This file should NOT be version controlled and should not be manually edited.
// ignore: unused_import
import 'dart:convert';
import 'package:brick_sqlite/sqlite.dart' show SqliteModel, SqliteAdapter, SqliteModelDictionary;
import 'package:brick_rest/rest.dart' show RestProvider, RestModel, RestAdapter, RestModelDictionary;
// ignore: unused_import, unused_shown_name
import 'package:brick_core/core.dart' show Query, QueryAction;
// ignore: unused_import, unused_shown_name
import 'package:sqflite/sqflite.dart' show DatabaseExecutor;

import 'models/service_request.dart';

part 'adapters/service_request_adapter.g.dart';
part 'adapters/customer_adapter.g.dart';
part 'adapters/service_request_text_adapter.g.dart';
part 'adapters/address_adapter.g.dart';
part 'adapters/service_request_item_adapter.g.dart';
part 'adapters/employee_adapter.g.dart';

/// REST mappings should only be used when initializing a [RestProvider]
final Map<Type, RestAdapter<RestModel>> restMappings = {
  ServiceRequest: ServiceRequestAdapter(),
  Customer: CustomerAdapter(),
  ServiceRequestText: ServiceRequestTextAdapter(),
  Address: AddressAdapter(),
  ServiceRequestItem: ServiceRequestItemAdapter(),
  Employee: EmployeeAdapter()
};
final restModelDictionary = RestModelDictionary(restMappings);

/// Sqlite mappings should only be used when initializing a [SqliteProvider]
final Map<Type, SqliteAdapter<SqliteModel>> sqliteMappings = {
  ServiceRequest: ServiceRequestAdapter(),
  Customer: CustomerAdapter(),
  ServiceRequestText: ServiceRequestTextAdapter(),
  Address: AddressAdapter(),
  ServiceRequestItem: ServiceRequestItemAdapter(),
  Employee: EmployeeAdapter()
};
final sqliteModelDictionary = SqliteModelDictionary(sqliteMappings);
