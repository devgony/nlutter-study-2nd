import 'package:test/test.dart';
import 'package:openapi/openapi.dart';


/// tests for ChaptersApi
void main() {
  final instance = Openapi().getChaptersApi();

  group(ChaptersApi, () {
    // Get a Chapter 
    //
    // Get Spotify catalog information for a single audiobook chapter. Chapters are only available within the US, UK, Canada, Ireland, New Zealand and Australia markets. 
    //
    //Future<ChapterObject> getAChapter(String id, { String market }) async
    test('test getAChapter', () async {
      // TODO
    });

    // Get Audiobook Chapters 
    //
    // Get Spotify catalog information about an audiobook's chapters. Audiobooks are only available within the US, UK, Canada, Ireland, New Zealand and Australia markets. 
    //
    //Future<PagingSimplifiedChapterObject> getAudiobookChapters(String id, { String market, int limit, int offset }) async
    test('test getAudiobookChapters', () async {
      // TODO
    });

    // Get Several Chapters 
    //
    // Get Spotify catalog information for several audiobook chapters identified by their Spotify IDs. Chapters are only available within the US, UK, Canada, Ireland, New Zealand and Australia markets. 
    //
    //Future<GetSeveralChapters200Response> getSeveralChapters(String ids, { String market }) async
    test('test getSeveralChapters', () async {
      // TODO
    });

  });
}
