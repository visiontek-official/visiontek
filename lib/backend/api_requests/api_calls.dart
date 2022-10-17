import '../../flutter_flow/flutter_flow_util.dart';

import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class WordpressAllPostsAPICall {
  static Future<ApiCallResponse> call() {
    return ApiManager.instance.makeApiCall(
      callName: 'WordpressAllPostsAPI',
      apiUrl: 'https://www.visiontek.co.za/wp-json/wp/v2/posts',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
    );
  }

  static dynamic id(dynamic response) => getJsonField(
        response,
        r'''$..id''',
        true,
      );
  static dynamic title(dynamic response) => getJsonField(
        response,
        r'''$..title["rendered"]''',
        true,
      );
  static dynamic content(dynamic response) => getJsonField(
        response,
        r'''$..content["rendered"]''',
        true,
      );
  static dynamic imageUrl(dynamic response) => getJsonField(
        response,
        r'''$..fimg_url''',
        true,
      );
  static dynamic slug(dynamic response) => getJsonField(
        response,
        r'''$[:].slug''',
        true,
      );
  static dynamic content2(dynamic response) => getJsonField(
        response,
        r'''$[:].excerpt.rendered''',
        true,
      );
  static dynamic date(dynamic response) => getJsonField(
        response,
        r'''$[:].date''',
        true,
      );
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}
