import 'package:test/test.dart';
import 'package:openapi/openapi.dart';

// tests for CurrentlyPlayingContextObject
void main() {
  final instance = CurrentlyPlayingContextObjectBuilder();
  // TODO add properties to the builder and call build()

  group(CurrentlyPlayingContextObject, () {
    // DeviceObject device
    test('to test the property `device`', () async {
      // TODO
    });

    // off, track, context
    // String repeatState
    test('to test the property `repeatState`', () async {
      // TODO
    });

    // If shuffle is on or off.
    // bool shuffleState
    test('to test the property `shuffleState`', () async {
      // TODO
    });

    // ContextObject context
    test('to test the property `context`', () async {
      // TODO
    });

    // Unix Millisecond Timestamp when data was fetched.
    // int timestamp
    test('to test the property `timestamp`', () async {
      // TODO
    });

    // Progress into the currently playing track or episode. Can be `null`.
    // int progressMs
    test('to test the property `progressMs`', () async {
      // TODO
    });

    // If something is currently playing, return `true`.
    // bool isPlaying
    test('to test the property `isPlaying`', () async {
      // TODO
    });

    // QueueObjectCurrentlyPlaying item
    test('to test the property `item`', () async {
      // TODO
    });

    // The object type of the currently playing item. Can be one of `track`, `episode`, `ad` or `unknown`. 
    // String currentlyPlayingType
    test('to test the property `currentlyPlayingType`', () async {
      // TODO
    });

    // DisallowsObject actions
    test('to test the property `actions`', () async {
      // TODO
    });

  });
}
