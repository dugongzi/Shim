import 'package:shim/features/home/data/datasources/inject_action_datasource.dart';
import 'package:shim/features/home/domain/repositories/inject_action_repository.dart';

class InjectActionRepositoryImpl implements InjectActionRepository {
  final InjectActionDatasource dataSource;

  InjectActionRepositoryImpl({required this.dataSource});
}
