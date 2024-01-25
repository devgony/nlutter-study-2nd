import 'package:test/test.dart';
import 'package:openapi/openapi.dart';

// tests for DeviceObject
void main() {
  final instance = DeviceObjectBuilder();
  // TODO add properties to the builder and call build()

  group(DeviceObject, () {
    // The device ID. This ID is unique and persistent to some extent. However, this is not guaranteed and any cached `device_id` should periodically be cleared out and refetched as necessary.
    // String id
    test('to test the property `id`', () async {
      // TODO
    });

    // If this device is the currently active device.
    // bool isActive
    test('to test the property `isActive`', () async {
      // TODO
    });

    // If this device is currently in a private session.
    // bool isPrivateSession
    test('to test the property `isPrivateSession`', () async {
      // TODO
    });

    // Whether controlling this device is restricted. At present if this is \"true\" then no Web API commands will be accepted by this device.
    // bool isRestricted
    test('to test the property `isRestricted`', () async {
      // TODO
    });

    // A human-readable name for the device. Some devices have a name that the user can configure (e.g. \\\"Loudest speaker\\\") and some devices have a generic name associated with the manufacturer or device model.
    // String name
    test('to test the property `name`', () async {
      // TODO
    });

    // Device type, such as \"computer\", \"smartphone\" or \"speaker\".
    // String type
    test('to test the property `type`', () async {
      // TODO
    });

    // The current volume in percent.
    // int volumePercent
    test('to test the property `volumePercent`', () async {
      // TODO
    });

    // If this device can be used to set the volume.
    // bool supportsVolume
    test('to test the property `supportsVolume`', () async {
      // TODO
    });

  });
}
