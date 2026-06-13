import 'package:shim/core/networks/http_service.dart';

class InjectActionDatasource {
  final HttpService _httpService;

  InjectActionDatasource({required HttpService httpService})
      : _httpService = httpService;
}
