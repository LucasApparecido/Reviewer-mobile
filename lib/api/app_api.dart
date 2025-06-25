import 'package:reviewerapi/reviewerapi.dart';

import 'package:dio/dio.dart';

import '../core/config_state.dart';

class AppApi {
  ConfigState config;
  late Reviewerapi api;
  AppApi({required this.config}){

    api = _createApiClient(basePath: this.config.url.value);

    this.config.url.subscribe((value) {
      print("value:"+value);
      api.dio.options.baseUrl = value;
    });

  }
  _createApiClient({required String basePath}){
    return Reviewerapi(basePathOverride: basePath,
        interceptors: [
          InterceptorsWrapper(onRequest: (options, handler) {
            if(this.config.token.value!="") {
              options.headers['Authorization'] = 'Bearer ${config.token.value}';
            }
            return handler.next(options);
          })
        ]);
  }

  dispose() async {
    this.config.dispose();;
  }
}