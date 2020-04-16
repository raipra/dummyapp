import 'package:brick_offline_first/offline_first_with_rest.dart';
import 'db/schema.g.dart';
import 'brick.g.dart';

class Repository extends OfflineFirstWithRestRepository {
  Repository._(String endpoint)
      : super(
          restProvider: RestProvider(
            endpoint,
            modelDictionary: restModelDictionary,
          ),
          sqliteProvider: SqliteProvider(
            "myApp.sqlite",
            modelDictionary: sqliteModelDictionary,
          ),
          migrations: migrations,
        );

  factory Repository() => _singleton ?? Exception("Must call #configure first");

  static Repository _singleton;

  static void configure(String endpoint) {
    _singleton = Repository._(endpoint);
  }
}