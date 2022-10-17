import '../../flutter_flow/flutter_flow_util.dart';

import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class WordpressPostsCall {
  static Future<ApiCallResponse> call() {
    return ApiManager.instance.makeApiCall(
      callName: 'Wordpress posts',
      apiUrl: 'https://www.visiontek.co.za/wp-json/wp/v2/posts',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
    );
  }

  static dynamic postsTitle(dynamic response) => getJsonField(
        response,
        r'''$[:].slug''',
        true,
      );
  static dynamic postsDateandTime(dynamic response) => getJsonField(
        response,
        r'''$[:].modified_gmt''',
        true,
      );
  static dynamic postsTitle2(dynamic response) => getJsonField(
        response,
        r'''$[:].title.rendered''',
        true,
      );
  static dynamic postsLink1(dynamic response) => getJsonField(
        response,
        r'''$[:]._links.self[:].href''',
        true,
      );
  static dynamic postsLink2(dynamic response) => getJsonField(
        response,
        r'''$[:].link''',
        true,
      );
  static dynamic featuredMedia1(dynamic response) => getJsonField(
        response,
        r'''$[:].featured_media''',
        true,
      );
  static dynamic featuredMedia2(dynamic response) => getJsonField(
        response,
        r'''$[:].jetpack_featured_media_url''',
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
