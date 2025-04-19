import 'package:test/test.dart';
import 'package:output/output.dart';

void main() {
  group('Run', () {
    test('run1', () {
      echo(123, 'a number');
      dump(123, 'a number');
    });
    test('run2', () {
      dump('this is run2');
    });
  });
}
