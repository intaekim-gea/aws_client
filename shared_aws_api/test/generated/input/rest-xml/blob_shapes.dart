// ignore_for_file: unused_element
// ignore_for_file: unused_field
// ignore_for_file: unused_import
// ignore_for_file: unused_local_variable
// ignore_for_file: unused_shown_name

import 'dart:convert';
import 'dart:typed_data';

import 'package:shared_aws_api/shared.dart' as _s;
import 'package:shared_aws_api/shared.dart'
    show Uint8ListConverter, Uint8ListListConverter;

export 'package:shared_aws_api/shared.dart' show AwsClientCredentials;

/// Blob shapes
class BlobShapes {
  final _s.RestXmlProtocol _protocol;
  BlobShapes({
    @_s.required String region,
    _s.AwsClientCredentials credentials,
    _s.Client client,
    String endpointUrl,
  }) : _protocol = _s.RestXmlProtocol(
          client: client,
          service: 'BlobShapes',
          region: region,
          credentials: credentials,
          endpointUrl: endpointUrl,
        );

  Future<void> operationName0({
    StructureShape structureParam,
  }) async {
    await _protocol.send(
      method: 'POST',
      requestUri: '/2014-01-01/hostedzone',
      exceptionFnMap: _exceptionFns,
    );
  }
}

class StructureShape {
  final Uint8List b;

  StructureShape({
    this.b,
  });
  _s.XmlElement toXml(String elemName) {
    final $children = <_s.XmlNode>[
      _s.encodeXmlUint8ListValue('b', b),
    ];
    return _s.XmlElement(
      _s.XmlName(elemName),
      [],
      $children.where((e) => e != null),
    );
  }
}

final _exceptionFns = <String, _s.AwsExceptionFn>{};