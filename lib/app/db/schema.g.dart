// GENERATED CODE DO NOT EDIT
// This file should be version controlled
import 'package:brick_sqlite_abstract/db.dart';
// ignore: unused_import
import 'package:brick_sqlite_abstract/db.dart' show Migratable;
part '20200418191953.migration.dart';
part '20200418192414.migration.dart';
part '20200418193122.migration.dart';

/// All intelligently-generated migrations from all `@Migratable` classes on disk
final Set<Migration> migrations = Set.from([
  Migration20200418191953(),
  Migration20200418192414(),
  Migration20200418193122()
]);

/// A consumable database structure including the latest generated migration.
final schema = Schema(20200418193122,
    generatorVersion: 1,
    tables: Set<SchemaTable>.from([
      SchemaTable('ServiceRequest',
          columns: Set.from([
            SchemaColumn('_brick_id', int,
                autoincrement: true, nullable: false, isPrimaryKey: true),
            SchemaColumn('object_id', String, unique: true),
            SchemaColumn('service_request_i_d', String),
            SchemaColumn('subject', String),
            SchemaColumn('work_description_ServiceRequestText_brick_id', int,
                isForeignKey: true, foreignTableName: 'ServiceRequestText'),
            SchemaColumn('in_warranty', bool),
            SchemaColumn('product_id', String),
            SchemaColumn('technician_id', String),
            SchemaColumn('technician_Employee_brick_id', int,
                isForeignKey: true, foreignTableName: 'Employee'),
            SchemaColumn('customer_id', String),
            SchemaColumn('customer_Customer_brick_id', int,
                isForeignKey: true, foreignTableName: 'Customer'),
            SchemaColumn('serial_number', String),
            SchemaColumn('items', String),
            SchemaColumn('service_location_Address_brick_id', int,
                isForeignKey: true, foreignTableName: 'Address'),
            SchemaColumn('planned_start_date', DateTime),
            SchemaColumn('planned_end_date', DateTime),
            SchemaColumn('actual_visit_start_date', DateTime),
            SchemaColumn('actual_visit_end_date', DateTime),
            SchemaColumn('payment_amount', double),
            SchemaColumn('payment_i_d', String),
            SchemaColumn('payment_status', String),
            SchemaColumn('payment_method', String),
            SchemaColumn('planned_amount', double),
            SchemaColumn('actual_amount', double),
            SchemaColumn('max_amount', double),
            SchemaColumn('fault_code_key', String),
            SchemaColumn('component_code', String),
            SchemaColumn('defect_code', String),
            SchemaColumn('fault_reported', String),
            SchemaColumn('error_code', String),
            SchemaColumn('action_taken', String)
          ])),
      SchemaTable('Customer',
          columns: Set.from([
            SchemaColumn('_brick_id', int,
                autoincrement: true, nullable: false, isPrimaryKey: true),
            SchemaColumn('object_id', String),
            SchemaColumn('customer_id', String),
            SchemaColumn('first_name', String),
            SchemaColumn('last_name', String),
            SchemaColumn('country', String),
            SchemaColumn('city', String),
            SchemaColumn('mobile_number', String),
            SchemaColumn('street', String),
            SchemaColumn('email', String),
            SchemaColumn('language', String)
          ])),
      SchemaTable('ServiceRequestText',
          columns: Set.from([
            SchemaColumn('_brick_id', int,
                autoincrement: true, nullable: false, isPrimaryKey: true),
            SchemaColumn('object_id', String),
            SchemaColumn('parent_id', String),
            SchemaColumn('text', String),
            SchemaColumn('type_code', String),
            SchemaColumn('service_request_id', String)
          ])),
      SchemaTable('Address',
          columns: Set.from([
            SchemaColumn('_brick_id', int,
                autoincrement: true, nullable: false, isPrimaryKey: true),
            SchemaColumn('parent_id', String),
            SchemaColumn('city', String),
            SchemaColumn('street', String),
            SchemaColumn('email', String),
            SchemaColumn('country', String),
            SchemaColumn('country_text', String),
            SchemaColumn('phone', String),
            SchemaColumn('mobile', String)
          ])),
      SchemaTable('ServiceRequestItem',
          columns: Set.from([
            SchemaColumn('_brick_id', int,
                autoincrement: true, nullable: false, isPrimaryKey: true),
            SchemaColumn('item_id', String),
            SchemaColumn('object_id', String),
            SchemaColumn('parent_id', String),
            SchemaColumn('planned_quantity', double),
            SchemaColumn('actual_quantity', double),
            SchemaColumn('technician_id', String),
            SchemaColumn('part_id', String),
            SchemaColumn('part_description', String),
            SchemaColumn('processing_type_code', String),
            SchemaColumn('coverage_code', String)
          ])),
      SchemaTable('Employee',
          columns: Set.from([
            SchemaColumn('_brick_id', int,
                autoincrement: true, nullable: false, isPrimaryKey: true),
            SchemaColumn('object_id', String),
            SchemaColumn('employee_id', String),
            SchemaColumn('first_name', String),
            SchemaColumn('last_name', String),
            SchemaColumn('country', String),
            SchemaColumn('city', String),
            SchemaColumn('mobile_number', String),
            SchemaColumn('street', String),
            SchemaColumn('email', String),
            SchemaColumn('language', String)
          ]))
    ]));
