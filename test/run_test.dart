import 'package:test/test.dart';
import 'package:output/output.dart';

void main() {
  group('Run', () {
    test('run1', () {
      echo([123, null, 'abc']);
      dump([123, null, 'abc']);
      echoJson([123, null, 'abc']); // 1.0.2
      dumpJson([123, null, 'abc']); // 1.0.2
    });
    test('run2', () {
      dump('this is run2');
    });
  });
}
