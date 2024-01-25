import 'package:openapi_generator_annotations/openapi_generator_annotations.dart';

@Openapi(
  // additionalProperties:
  //     DioProperties(pubName: 'petstore_api', pubAuthor: 'Johnny dep..'),
  // inputSpec: RemoteSpec(
  //   path:
  //       'https://developer.spotify.com/reference/web-api/open-api-schema.yaml',
  // ),
  inputSpecFile:
      'https://developer.spotify.com/reference/web-api/open-api-schema.yaml',
  // typeMappings: {'Pet': 'ExamplePet'},
  generatorName: Generator.dio,
  runSourceGenOnOutput: true,
  outputDirectory: 'api/petstore_api',
  skipSpecValidation: true,
)
class Example {}
