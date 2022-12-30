import 'dart:typed_data';

import 'package:flutter/services.dart';

// const SAMPLE_PASS_PATH = 'assets/passes/health_id_card_sample.pkpass';
const SAMPLE_PASS_PATH = 'assets/passes/mypass.pkpass';

final Future<Uint8List> Function() passProvider = () async {
  ByteData pass = await rootBundle.load(SAMPLE_PASS_PATH);
  return pass.buffer.asUint8List();
};
