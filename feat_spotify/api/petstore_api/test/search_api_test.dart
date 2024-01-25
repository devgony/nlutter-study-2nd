import 'package:test/test.dart';
import 'package:openapi/openapi.dart';


/// tests for SearchApi
void main() {
  final instance = Openapi().getSearchApi();

  group(SearchApi, () {
    // Search for Item 
    //
    // Get Spotify catalog information about albums, artists, playlists, tracks, shows, episodes or audiobooks that match a keyword string. Audiobooks are only available within the US, UK, Canada, Ireland, New Zealand and Australia markets. 
    //
    //Future<Search200Response> search(String q, BuiltList<String> type, { String market, int limit, int offset, String includeExternal }) async
    test('test search', () async {
      // TODO
    });

  });
}
