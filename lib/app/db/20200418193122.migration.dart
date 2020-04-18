// GENERATED CODE EDIT WITH CAUTION
// THIS FILE **WILL NOT** BE REGENERATED
// This file should be version controlled and can be manually edited.
part of 'schema.g.dart';

// While migrations are intelligently created, the difference between some commands, such as
// DropTable vs. RenameTable, cannot be determined. For this reason, please review migrations after
// they are created to ensure the correct inference was made.

// The migration version must **always** mirror the file name

const List<MigrationCommand> _migration_20200418193122_up = [
  DropColumn('parent_object_id', onTable: 'ServiceRequestText'),
  DropColumn('parent_object_id', onTable: 'Address'),
  InsertColumn('parent_id', Column.varchar, onTable: 'ServiceRequestText'),
  InsertColumn('parent_id', Column.varchar, onTable: 'Address')
];

const List<MigrationCommand> _migration_20200418193122_down = [
  DropColumn('parent_id', onTable: 'ServiceRequestText'),
  DropColumn('parent_id', onTable: 'Address')
];

//
// DO NOT EDIT BELOW THIS LINE
//

@Migratable(
  version: '20200418193122',
  up: _migration_20200418193122_up,
  down: _migration_20200418193122_down,
)
class Migration20200418193122 extends Migration {
  const Migration20200418193122()
    : super(
        version: 20200418193122,
        up: _migration_20200418193122_up,
        down: _migration_20200418193122_down,
      );
}
