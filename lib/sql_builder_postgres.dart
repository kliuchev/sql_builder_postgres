import 'package:postgres/postgres.dart';
import 'package:sql_builder/query.dart';

extension ConnectionSelect on Connection {
  Future<Result> query(Query query) async {
    try {
      final result =
          await execute(Sql.named(query.query), parameters: query.parameters);
      return result;
    } catch (error) {
      print(query.query);
      print(query.parameters);
      rethrow;
    }
  }
}
