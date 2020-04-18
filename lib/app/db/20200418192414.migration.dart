// GENERATED CODE EDIT WITH CAUTION
// THIS FILE **WILL NOT** BE REGENERATED
// This file should be version controlled and can be manually edited.
part of 'schema.g.dart';

// While migrations are intelligently created, the difference between some commands, such as
// DropTable vs. RenameTable, cannot be determined. For this reason, please review migrations after
// they are created to ensure the correct inference was made.

// The migration version must **always** mirror the file name

const List<MigrationCommand> _migration_20200418192414_up = [
  InsertForeignKey('ServiceRequest', 'ServiceRequestText', foreignKeyColumn: 'work_description_ServiceRequestText_brick_id'),
  InsertForeignKey('ServiceRequest', 'Employee', foreignKeyColumn: 'technician_Employee_brick_id'),
  InsertForeignKey('ServiceRequest', 'Customer', foreignKeyColumn: 'customer_Customer_brick_id'),
  InsertColumn('items', Column.varchar, onTable: 'ServiceRequest'),
  InsertForeignKey('ServiceRequest', 'Address', foreignKeyColumn: 'service_location_Address_brick_id')
];

const List<MigrationCommand> _migration_20200418192414_down = [
  DropColumn('work_description_ServiceRequestText_brick_id', onTable: 'ServiceRequest'),
  DropColumn('technician_Employee_brick_id', onTable: 'ServiceRequest'),
  DropColumn('customer_Customer_brick_id', onTable: 'ServiceRequest'),
  DropColumn('items', onTable: 'ServiceRequest'),
  DropColumn('service_location_Address_brick_id', onTable: 'ServiceRequest')
];

//
// DO NOT EDIT BELOW THIS LINE
//

@Migratable(
  version: '20200418192414',
  up: _migration_20200418192414_up,
  down: _migration_20200418192414_down,
)
class Migration20200418192414 extends Migration {
  const Migration20200418192414()
    : super(
        version: 20200418192414,
        up: _migration_20200418192414_up,
        down: _migration_20200418192414_down,
      );
}
