// ignore_for_file: avoid_unused_constructor_parameters
// ignore_for_file: camel_case_types
// ignore_for_file: comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: directives_ordering
// ignore_for_file: empty_constructor_bodies
// ignore_for_file: library_names
// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: omit_local_variable_types
// ignore_for_file: prefer_final_locals
// ignore_for_file: prefer_interpolation_to_compose_strings
// ignore_for_file: unnecessary_brace_in_string_interps
// ignore_for_file: unnecessary_cast
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: unnecessary_string_interpolations
// ignore_for_file: unused_field
// ignore_for_file: unused_import
// ignore_for_file: avoid_returning_null
// ignore_for_file: cascade_invocations
// ignore_for_file: prefer_single_quotes
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: unused_local_variable

library googleapis.accessapproval.v1.test;

import "dart:core" as core;
import "dart:async" as async;
import "dart:convert" as convert;

import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import 'package:googleapis/accessapproval/v1.dart' as api;

class HttpServerMock extends http.BaseClient {
  core.Function _callback;
  core.bool _expectJson;

  void register(core.Function callback, core.bool expectJson) {
    _callback = callback;
    _expectJson = expectJson;
  }

  @core.override
  async.Future<http.StreamedResponse> send(http.BaseRequest request) async {
    if (_expectJson) {
      final jsonString =
          await request.finalize().transform(convert.utf8.decoder).join('');
      if (jsonString.isEmpty) {
        return _callback(request, null);
      } else {
        return _callback(request, convert.json.decode(jsonString));
      }
    } else {
      var stream = request.finalize();
      if (stream == null) {
        return _callback(request, []);
      } else {
        final data = await stream.toBytes();
        return _callback(request, data);
      }
    }
  }
}

http.StreamedResponse stringResponse(core.int status,
    core.Map<core.String, core.String> headers, core.String body) {
  var stream = async.Stream.fromIterable([convert.utf8.encode(body)]);
  return http.StreamedResponse(stream, status, headers: headers);
}

core.List<api.EnrolledService> buildUnnamed4338() {
  var o = <api.EnrolledService>[];
  o.add(buildEnrolledService());
  o.add(buildEnrolledService());
  return o;
}

void checkUnnamed4338(core.List<api.EnrolledService> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkEnrolledService(o[0]);
  checkEnrolledService(o[1]);
}

core.List<core.String> buildUnnamed4339() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4339(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterAccessApprovalSettings = 0;
api.AccessApprovalSettings buildAccessApprovalSettings() {
  var o = api.AccessApprovalSettings();
  buildCounterAccessApprovalSettings++;
  if (buildCounterAccessApprovalSettings < 3) {
    o.enrolledAncestor = true;
    o.enrolledServices = buildUnnamed4338();
    o.name = 'foo';
    o.notificationEmails = buildUnnamed4339();
  }
  buildCounterAccessApprovalSettings--;
  return o;
}

void checkAccessApprovalSettings(api.AccessApprovalSettings o) {
  buildCounterAccessApprovalSettings++;
  if (buildCounterAccessApprovalSettings < 3) {
    unittest.expect(o.enrolledAncestor, unittest.isTrue);
    checkUnnamed4338(o.enrolledServices);
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed4339(o.notificationEmails);
  }
  buildCounterAccessApprovalSettings--;
}

core.int buildCounterAccessLocations = 0;
api.AccessLocations buildAccessLocations() {
  var o = api.AccessLocations();
  buildCounterAccessLocations++;
  if (buildCounterAccessLocations < 3) {
    o.principalOfficeCountry = 'foo';
    o.principalPhysicalLocationCountry = 'foo';
  }
  buildCounterAccessLocations--;
  return o;
}

void checkAccessLocations(api.AccessLocations o) {
  buildCounterAccessLocations++;
  if (buildCounterAccessLocations < 3) {
    unittest.expect(o.principalOfficeCountry, unittest.equals('foo'));
    unittest.expect(o.principalPhysicalLocationCountry, unittest.equals('foo'));
  }
  buildCounterAccessLocations--;
}

core.int buildCounterAccessReason = 0;
api.AccessReason buildAccessReason() {
  var o = api.AccessReason();
  buildCounterAccessReason++;
  if (buildCounterAccessReason < 3) {
    o.detail = 'foo';
    o.type = 'foo';
  }
  buildCounterAccessReason--;
  return o;
}

void checkAccessReason(api.AccessReason o) {
  buildCounterAccessReason++;
  if (buildCounterAccessReason < 3) {
    unittest.expect(o.detail, unittest.equals('foo'));
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterAccessReason--;
}

core.int buildCounterApprovalRequest = 0;
api.ApprovalRequest buildApprovalRequest() {
  var o = api.ApprovalRequest();
  buildCounterApprovalRequest++;
  if (buildCounterApprovalRequest < 3) {
    o.approve = buildApproveDecision();
    o.dismiss = buildDismissDecision();
    o.name = 'foo';
    o.requestTime = 'foo';
    o.requestedExpiration = 'foo';
    o.requestedLocations = buildAccessLocations();
    o.requestedReason = buildAccessReason();
    o.requestedResourceName = 'foo';
    o.requestedResourceProperties = buildResourceProperties();
  }
  buildCounterApprovalRequest--;
  return o;
}

void checkApprovalRequest(api.ApprovalRequest o) {
  buildCounterApprovalRequest++;
  if (buildCounterApprovalRequest < 3) {
    checkApproveDecision(o.approve);
    checkDismissDecision(o.dismiss);
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.requestTime, unittest.equals('foo'));
    unittest.expect(o.requestedExpiration, unittest.equals('foo'));
    checkAccessLocations(o.requestedLocations);
    checkAccessReason(o.requestedReason);
    unittest.expect(o.requestedResourceName, unittest.equals('foo'));
    checkResourceProperties(o.requestedResourceProperties);
  }
  buildCounterApprovalRequest--;
}

core.int buildCounterApproveApprovalRequestMessage = 0;
api.ApproveApprovalRequestMessage buildApproveApprovalRequestMessage() {
  var o = api.ApproveApprovalRequestMessage();
  buildCounterApproveApprovalRequestMessage++;
  if (buildCounterApproveApprovalRequestMessage < 3) {
    o.expireTime = 'foo';
  }
  buildCounterApproveApprovalRequestMessage--;
  return o;
}

void checkApproveApprovalRequestMessage(api.ApproveApprovalRequestMessage o) {
  buildCounterApproveApprovalRequestMessage++;
  if (buildCounterApproveApprovalRequestMessage < 3) {
    unittest.expect(o.expireTime, unittest.equals('foo'));
  }
  buildCounterApproveApprovalRequestMessage--;
}

core.int buildCounterApproveDecision = 0;
api.ApproveDecision buildApproveDecision() {
  var o = api.ApproveDecision();
  buildCounterApproveDecision++;
  if (buildCounterApproveDecision < 3) {
    o.approveTime = 'foo';
    o.expireTime = 'foo';
  }
  buildCounterApproveDecision--;
  return o;
}

void checkApproveDecision(api.ApproveDecision o) {
  buildCounterApproveDecision++;
  if (buildCounterApproveDecision < 3) {
    unittest.expect(o.approveTime, unittest.equals('foo'));
    unittest.expect(o.expireTime, unittest.equals('foo'));
  }
  buildCounterApproveDecision--;
}

core.int buildCounterDismissApprovalRequestMessage = 0;
api.DismissApprovalRequestMessage buildDismissApprovalRequestMessage() {
  var o = api.DismissApprovalRequestMessage();
  buildCounterDismissApprovalRequestMessage++;
  if (buildCounterDismissApprovalRequestMessage < 3) {}
  buildCounterDismissApprovalRequestMessage--;
  return o;
}

void checkDismissApprovalRequestMessage(api.DismissApprovalRequestMessage o) {
  buildCounterDismissApprovalRequestMessage++;
  if (buildCounterDismissApprovalRequestMessage < 3) {}
  buildCounterDismissApprovalRequestMessage--;
}

core.int buildCounterDismissDecision = 0;
api.DismissDecision buildDismissDecision() {
  var o = api.DismissDecision();
  buildCounterDismissDecision++;
  if (buildCounterDismissDecision < 3) {
    o.dismissTime = 'foo';
    o.implicit = true;
  }
  buildCounterDismissDecision--;
  return o;
}

void checkDismissDecision(api.DismissDecision o) {
  buildCounterDismissDecision++;
  if (buildCounterDismissDecision < 3) {
    unittest.expect(o.dismissTime, unittest.equals('foo'));
    unittest.expect(o.implicit, unittest.isTrue);
  }
  buildCounterDismissDecision--;
}

core.int buildCounterEmpty = 0;
api.Empty buildEmpty() {
  var o = api.Empty();
  buildCounterEmpty++;
  if (buildCounterEmpty < 3) {}
  buildCounterEmpty--;
  return o;
}

void checkEmpty(api.Empty o) {
  buildCounterEmpty++;
  if (buildCounterEmpty < 3) {}
  buildCounterEmpty--;
}

core.int buildCounterEnrolledService = 0;
api.EnrolledService buildEnrolledService() {
  var o = api.EnrolledService();
  buildCounterEnrolledService++;
  if (buildCounterEnrolledService < 3) {
    o.cloudProduct = 'foo';
    o.enrollmentLevel = 'foo';
  }
  buildCounterEnrolledService--;
  return o;
}

void checkEnrolledService(api.EnrolledService o) {
  buildCounterEnrolledService++;
  if (buildCounterEnrolledService < 3) {
    unittest.expect(o.cloudProduct, unittest.equals('foo'));
    unittest.expect(o.enrollmentLevel, unittest.equals('foo'));
  }
  buildCounterEnrolledService--;
}

core.List<api.ApprovalRequest> buildUnnamed4340() {
  var o = <api.ApprovalRequest>[];
  o.add(buildApprovalRequest());
  o.add(buildApprovalRequest());
  return o;
}

void checkUnnamed4340(core.List<api.ApprovalRequest> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkApprovalRequest(o[0]);
  checkApprovalRequest(o[1]);
}

core.int buildCounterListApprovalRequestsResponse = 0;
api.ListApprovalRequestsResponse buildListApprovalRequestsResponse() {
  var o = api.ListApprovalRequestsResponse();
  buildCounterListApprovalRequestsResponse++;
  if (buildCounterListApprovalRequestsResponse < 3) {
    o.approvalRequests = buildUnnamed4340();
    o.nextPageToken = 'foo';
  }
  buildCounterListApprovalRequestsResponse--;
  return o;
}

void checkListApprovalRequestsResponse(api.ListApprovalRequestsResponse o) {
  buildCounterListApprovalRequestsResponse++;
  if (buildCounterListApprovalRequestsResponse < 3) {
    checkUnnamed4340(o.approvalRequests);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterListApprovalRequestsResponse--;
}

core.int buildCounterResourceProperties = 0;
api.ResourceProperties buildResourceProperties() {
  var o = api.ResourceProperties();
  buildCounterResourceProperties++;
  if (buildCounterResourceProperties < 3) {
    o.excludesDescendants = true;
  }
  buildCounterResourceProperties--;
  return o;
}

void checkResourceProperties(api.ResourceProperties o) {
  buildCounterResourceProperties++;
  if (buildCounterResourceProperties < 3) {
    unittest.expect(o.excludesDescendants, unittest.isTrue);
  }
  buildCounterResourceProperties--;
}

void main() {
  unittest.group('obj-schema-AccessApprovalSettings', () {
    unittest.test('to-json--from-json', () {
      var o = buildAccessApprovalSettings();
      var od = api.AccessApprovalSettings.fromJson(o.toJson());
      checkAccessApprovalSettings(od);
    });
  });

  unittest.group('obj-schema-AccessLocations', () {
    unittest.test('to-json--from-json', () {
      var o = buildAccessLocations();
      var od = api.AccessLocations.fromJson(o.toJson());
      checkAccessLocations(od);
    });
  });

  unittest.group('obj-schema-AccessReason', () {
    unittest.test('to-json--from-json', () {
      var o = buildAccessReason();
      var od = api.AccessReason.fromJson(o.toJson());
      checkAccessReason(od);
    });
  });

  unittest.group('obj-schema-ApprovalRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildApprovalRequest();
      var od = api.ApprovalRequest.fromJson(o.toJson());
      checkApprovalRequest(od);
    });
  });

  unittest.group('obj-schema-ApproveApprovalRequestMessage', () {
    unittest.test('to-json--from-json', () {
      var o = buildApproveApprovalRequestMessage();
      var od = api.ApproveApprovalRequestMessage.fromJson(o.toJson());
      checkApproveApprovalRequestMessage(od);
    });
  });

  unittest.group('obj-schema-ApproveDecision', () {
    unittest.test('to-json--from-json', () {
      var o = buildApproveDecision();
      var od = api.ApproveDecision.fromJson(o.toJson());
      checkApproveDecision(od);
    });
  });

  unittest.group('obj-schema-DismissApprovalRequestMessage', () {
    unittest.test('to-json--from-json', () {
      var o = buildDismissApprovalRequestMessage();
      var od = api.DismissApprovalRequestMessage.fromJson(o.toJson());
      checkDismissApprovalRequestMessage(od);
    });
  });

  unittest.group('obj-schema-DismissDecision', () {
    unittest.test('to-json--from-json', () {
      var o = buildDismissDecision();
      var od = api.DismissDecision.fromJson(o.toJson());
      checkDismissDecision(od);
    });
  });

  unittest.group('obj-schema-Empty', () {
    unittest.test('to-json--from-json', () {
      var o = buildEmpty();
      var od = api.Empty.fromJson(o.toJson());
      checkEmpty(od);
    });
  });

  unittest.group('obj-schema-EnrolledService', () {
    unittest.test('to-json--from-json', () {
      var o = buildEnrolledService();
      var od = api.EnrolledService.fromJson(o.toJson());
      checkEnrolledService(od);
    });
  });

  unittest.group('obj-schema-ListApprovalRequestsResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildListApprovalRequestsResponse();
      var od = api.ListApprovalRequestsResponse.fromJson(o.toJson());
      checkListApprovalRequestsResponse(od);
    });
  });

  unittest.group('obj-schema-ResourceProperties', () {
    unittest.test('to-json--from-json', () {
      var o = buildResourceProperties();
      var od = api.ResourceProperties.fromJson(o.toJson());
      checkResourceProperties(od);
    });
  });

  unittest.group('resource-FoldersResourceApi', () {
    unittest.test('method--deleteAccessApprovalSettings', () {
      var mock = HttpServerMock();
      api.FoldersResourceApi res = api.AccessapprovalApi(mock).folders;
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .deleteAccessApprovalSettings(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkEmpty(response);
      })));
    });

    unittest.test('method--getAccessApprovalSettings', () {
      var mock = HttpServerMock();
      api.FoldersResourceApi res = api.AccessapprovalApi(mock).folders;
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildAccessApprovalSettings());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .getAccessApprovalSettings(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkAccessApprovalSettings(response);
      })));
    });

    unittest.test('method--updateAccessApprovalSettings', () {
      var mock = HttpServerMock();
      api.FoldersResourceApi res = api.AccessapprovalApi(mock).folders;
      var arg_request = buildAccessApprovalSettings();
      var arg_name = 'foo';
      var arg_updateMask = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.AccessApprovalSettings.fromJson(json);
        checkAccessApprovalSettings(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
            queryMap["updateMask"].first, unittest.equals(arg_updateMask));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildAccessApprovalSettings());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .updateAccessApprovalSettings(arg_request, arg_name,
              updateMask: arg_updateMask, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkAccessApprovalSettings(response);
      })));
    });
  });

  unittest.group('resource-FoldersApprovalRequestsResourceApi', () {
    unittest.test('method--approve', () {
      var mock = HttpServerMock();
      api.FoldersApprovalRequestsResourceApi res =
          api.AccessapprovalApi(mock).folders.approvalRequests;
      var arg_request = buildApproveApprovalRequestMessage();
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.ApproveApprovalRequestMessage.fromJson(json);
        checkApproveApprovalRequestMessage(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildApprovalRequest());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .approve(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkApprovalRequest(response);
      })));
    });

    unittest.test('method--dismiss', () {
      var mock = HttpServerMock();
      api.FoldersApprovalRequestsResourceApi res =
          api.AccessapprovalApi(mock).folders.approvalRequests;
      var arg_request = buildDismissApprovalRequestMessage();
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.DismissApprovalRequestMessage.fromJson(json);
        checkDismissApprovalRequestMessage(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildApprovalRequest());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .dismiss(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkApprovalRequest(response);
      })));
    });

    unittest.test('method--get', () {
      var mock = HttpServerMock();
      api.FoldersApprovalRequestsResourceApi res =
          api.AccessapprovalApi(mock).folders.approvalRequests;
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildApprovalRequest());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkApprovalRequest(response);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      api.FoldersApprovalRequestsResourceApi res =
          api.AccessapprovalApi(mock).folders.approvalRequests;
      var arg_parent = 'foo';
      var arg_pageSize = 42;
      var arg_filter = 'foo';
      var arg_pageToken = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildListApprovalRequestsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              pageSize: arg_pageSize,
              filter: arg_filter,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListApprovalRequestsResponse(response);
      })));
    });
  });

  unittest.group('resource-OrganizationsResourceApi', () {
    unittest.test('method--deleteAccessApprovalSettings', () {
      var mock = HttpServerMock();
      api.OrganizationsResourceApi res =
          api.AccessapprovalApi(mock).organizations;
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .deleteAccessApprovalSettings(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkEmpty(response);
      })));
    });

    unittest.test('method--getAccessApprovalSettings', () {
      var mock = HttpServerMock();
      api.OrganizationsResourceApi res =
          api.AccessapprovalApi(mock).organizations;
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildAccessApprovalSettings());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .getAccessApprovalSettings(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkAccessApprovalSettings(response);
      })));
    });

    unittest.test('method--updateAccessApprovalSettings', () {
      var mock = HttpServerMock();
      api.OrganizationsResourceApi res =
          api.AccessapprovalApi(mock).organizations;
      var arg_request = buildAccessApprovalSettings();
      var arg_name = 'foo';
      var arg_updateMask = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.AccessApprovalSettings.fromJson(json);
        checkAccessApprovalSettings(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
            queryMap["updateMask"].first, unittest.equals(arg_updateMask));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildAccessApprovalSettings());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .updateAccessApprovalSettings(arg_request, arg_name,
              updateMask: arg_updateMask, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkAccessApprovalSettings(response);
      })));
    });
  });

  unittest.group('resource-OrganizationsApprovalRequestsResourceApi', () {
    unittest.test('method--approve', () {
      var mock = HttpServerMock();
      api.OrganizationsApprovalRequestsResourceApi res =
          api.AccessapprovalApi(mock).organizations.approvalRequests;
      var arg_request = buildApproveApprovalRequestMessage();
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.ApproveApprovalRequestMessage.fromJson(json);
        checkApproveApprovalRequestMessage(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildApprovalRequest());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .approve(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkApprovalRequest(response);
      })));
    });

    unittest.test('method--dismiss', () {
      var mock = HttpServerMock();
      api.OrganizationsApprovalRequestsResourceApi res =
          api.AccessapprovalApi(mock).organizations.approvalRequests;
      var arg_request = buildDismissApprovalRequestMessage();
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.DismissApprovalRequestMessage.fromJson(json);
        checkDismissApprovalRequestMessage(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildApprovalRequest());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .dismiss(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkApprovalRequest(response);
      })));
    });

    unittest.test('method--get', () {
      var mock = HttpServerMock();
      api.OrganizationsApprovalRequestsResourceApi res =
          api.AccessapprovalApi(mock).organizations.approvalRequests;
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildApprovalRequest());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkApprovalRequest(response);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      api.OrganizationsApprovalRequestsResourceApi res =
          api.AccessapprovalApi(mock).organizations.approvalRequests;
      var arg_parent = 'foo';
      var arg_pageToken = 'foo';
      var arg_pageSize = 42;
      var arg_filter = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildListApprovalRequestsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              pageToken: arg_pageToken,
              pageSize: arg_pageSize,
              filter: arg_filter,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListApprovalRequestsResponse(response);
      })));
    });
  });

  unittest.group('resource-ProjectsResourceApi', () {
    unittest.test('method--deleteAccessApprovalSettings', () {
      var mock = HttpServerMock();
      api.ProjectsResourceApi res = api.AccessapprovalApi(mock).projects;
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .deleteAccessApprovalSettings(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkEmpty(response);
      })));
    });

    unittest.test('method--getAccessApprovalSettings', () {
      var mock = HttpServerMock();
      api.ProjectsResourceApi res = api.AccessapprovalApi(mock).projects;
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildAccessApprovalSettings());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .getAccessApprovalSettings(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkAccessApprovalSettings(response);
      })));
    });

    unittest.test('method--updateAccessApprovalSettings', () {
      var mock = HttpServerMock();
      api.ProjectsResourceApi res = api.AccessapprovalApi(mock).projects;
      var arg_request = buildAccessApprovalSettings();
      var arg_name = 'foo';
      var arg_updateMask = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.AccessApprovalSettings.fromJson(json);
        checkAccessApprovalSettings(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
            queryMap["updateMask"].first, unittest.equals(arg_updateMask));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildAccessApprovalSettings());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .updateAccessApprovalSettings(arg_request, arg_name,
              updateMask: arg_updateMask, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkAccessApprovalSettings(response);
      })));
    });
  });

  unittest.group('resource-ProjectsApprovalRequestsResourceApi', () {
    unittest.test('method--approve', () {
      var mock = HttpServerMock();
      api.ProjectsApprovalRequestsResourceApi res =
          api.AccessapprovalApi(mock).projects.approvalRequests;
      var arg_request = buildApproveApprovalRequestMessage();
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.ApproveApprovalRequestMessage.fromJson(json);
        checkApproveApprovalRequestMessage(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildApprovalRequest());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .approve(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkApprovalRequest(response);
      })));
    });

    unittest.test('method--dismiss', () {
      var mock = HttpServerMock();
      api.ProjectsApprovalRequestsResourceApi res =
          api.AccessapprovalApi(mock).projects.approvalRequests;
      var arg_request = buildDismissApprovalRequestMessage();
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.DismissApprovalRequestMessage.fromJson(json);
        checkDismissApprovalRequestMessage(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildApprovalRequest());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .dismiss(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkApprovalRequest(response);
      })));
    });

    unittest.test('method--get', () {
      var mock = HttpServerMock();
      api.ProjectsApprovalRequestsResourceApi res =
          api.AccessapprovalApi(mock).projects.approvalRequests;
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildApprovalRequest());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkApprovalRequest(response);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      api.ProjectsApprovalRequestsResourceApi res =
          api.AccessapprovalApi(mock).projects.approvalRequests;
      var arg_parent = 'foo';
      var arg_pageSize = 42;
      var arg_filter = 'foo';
      var arg_pageToken = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildListApprovalRequestsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              pageSize: arg_pageSize,
              filter: arg_filter,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListApprovalRequestsResponse(response);
      })));
    });
  });
}