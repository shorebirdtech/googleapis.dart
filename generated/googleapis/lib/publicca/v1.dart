// This is a generated file (see the discoveryapis_generator project).

// ignore_for_file: camel_case_types
// ignore_for_file: comment_references
// ignore_for_file: deprecated_member_use_from_same_package
// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: prefer_interpolation_to_compose_strings
// ignore_for_file: unnecessary_brace_in_string_interps
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: unnecessary_library_directive
// ignore_for_file: unnecessary_string_interpolations

/// Public Certificate Authority API - v1
///
/// The Public Certificate Authority API may be used to create and manage ACME
/// external account binding keys associated with Google Trust Services'
/// publicly trusted certificate authority.
///
/// For more information, see
/// <https://cloud.google.com/public-certificate-authority/docs>
///
/// Create an instance of [PublicCertificateAuthorityApi] to access these
/// resources:
///
/// - [ProjectsResource]
///   - [ProjectsLocationsResource]
///     - [ProjectsLocationsExternalAccountKeysResource]
library publicca_v1;

import 'dart:async' as async;
import 'dart:convert' as convert;
import 'dart:core' as core;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

import '../src/user_agent.dart';

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart'
    show ApiRequestError, DetailedApiRequestError;

/// The Public Certificate Authority API may be used to create and manage ACME
/// external account binding keys associated with Google Trust Services'
/// publicly trusted certificate authority.
class PublicCertificateAuthorityApi {
  /// See, edit, configure, and delete your Google Cloud data and see the email
  /// address for your Google Account.
  static const cloudPlatformScope =
      'https://www.googleapis.com/auth/cloud-platform';

  final commons.ApiRequester _requester;

  ProjectsResource get projects => ProjectsResource(_requester);

  PublicCertificateAuthorityApi(http.Client client,
      {core.String rootUrl = 'https://publicca.googleapis.com/',
      core.String servicePath = ''})
      : _requester =
            commons.ApiRequester(client, rootUrl, servicePath, requestHeaders);
}

class ProjectsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsResource get locations =>
      ProjectsLocationsResource(_requester);

  ProjectsResource(commons.ApiRequester client) : _requester = client;
}

class ProjectsLocationsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsExternalAccountKeysResource get externalAccountKeys =>
      ProjectsLocationsExternalAccountKeysResource(_requester);

  ProjectsLocationsResource(commons.ApiRequester client) : _requester = client;
}

class ProjectsLocationsExternalAccountKeysResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsExternalAccountKeysResource(commons.ApiRequester client)
      : _requester = client;

  /// Creates a new ExternalAccountKey bound to the project.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent resource where this external_account_key
  /// will be created. Format: projects/\[project_id\]/locations/\[location\].
  /// At present only the "global" location is supported.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ExternalAccountKey].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ExternalAccountKey> create(
    ExternalAccountKey request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/' + core.Uri.encodeFull('$parent') + '/externalAccountKeys';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return ExternalAccountKey.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

/// A representation of an ExternalAccountKey used for
/// [external account binding](https://tools.ietf.org/html/rfc8555#section-7.3.4)
/// within ACME.
class ExternalAccountKey {
  /// Base64-URL-encoded HS256 key.
  ///
  /// It is generated by the PublicCertificateAuthorityService when the
  /// ExternalAccountKey is created
  ///
  /// Output only.
  core.String? b64MacKey;
  core.List<core.int> get b64MacKeyAsBytes => convert.base64.decode(b64MacKey!);

  set b64MacKeyAsBytes(core.List<core.int> bytes_) {
    b64MacKey =
        convert.base64.encode(bytes_).replaceAll('/', '_').replaceAll('+', '-');
  }

  /// Key ID.
  ///
  /// It is generated by the PublicCertificateAuthorityService when the
  /// ExternalAccountKey is created
  ///
  /// Output only.
  core.String? keyId;

  /// Resource name.
  ///
  /// projects/{project}/locations/{location}/externalAccountKeys/{key_id}
  ///
  /// Output only.
  core.String? name;

  ExternalAccountKey({
    this.b64MacKey,
    this.keyId,
    this.name,
  });

  ExternalAccountKey.fromJson(core.Map json_)
      : this(
          b64MacKey: json_.containsKey('b64MacKey')
              ? json_['b64MacKey'] as core.String
              : null,
          keyId:
              json_.containsKey('keyId') ? json_['keyId'] as core.String : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (b64MacKey != null) 'b64MacKey': b64MacKey!,
        if (keyId != null) 'keyId': keyId!,
        if (name != null) 'name': name!,
      };
}