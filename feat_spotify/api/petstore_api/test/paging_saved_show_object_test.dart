import 'package:test/test.dart';
import 'package:openapi/openapi.dart';

// tests for PagingSavedShowObject
void main() {
  final instance = PagingSavedShowObjectBuilder();
  // TODO add properties to the builder and call build()

  group(PagingSavedShowObject, () {
    // A link to the Web API endpoint returning the full result of the request 
    // String href
    test('to test the property `href`', () async {
      // TODO
    });

    // The maximum number of items in the response (as set in the query or by default). 
    // int limit
    test('to test the property `limit`', () async {
      // TODO
    });

    // URL to the next page of items. ( `null` if none) 
    // String next
    test('to test the property `next`', () async {
      // TODO
    });

    // The offset of the items returned (as set in the query or by default) 
    // int offset
    test('to test the property `offset`', () async {
      // TODO
    });

    // URL to the previous page of items. ( `null` if none) 
    // String previous
    test('to test the property `previous`', () async {
      // TODO
    });

    // The total number of items available to return. 
    // int total
    test('to test the property `total`', () async {
      // TODO
    });

    // BuiltList<SavedShowObject> items
    test('to test the property `items`', () async {
      // TODO
    });

  });
}
