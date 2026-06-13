import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shim/core/networks/http_service.dart';
import 'package:shim/features/home/data/datasources/inject_action_datasource.dart';
import 'package:shim/features/home/data/repositories/inject_action_repository_impl.dart';
import 'package:shim/features/home/domain/repositories/inject_action_repository.dart';

part 'inject_action_provider.g.dart';

@riverpod
InjectActionRepository injectActionRepository(Ref ref) {
  final httpService = ref.watch(httpServiceProvider);
  final dataSource = InjectActionDatasource(httpService: httpService);
  return InjectActionRepositoryImpl(dataSource: dataSource);
}
