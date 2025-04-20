import 'package:test/test.dart';
import 'package:output/output.dart';

final testData = {
  'name': 'Joe',
  'ids': [10, 20, 30],
  'desc': 'This is\na multiline\ntext',
  'enabled': true,
};

void main() {
  group('Run', () {
    test('run1', () {
      echo(testData);
      dump(testData);
      echoJson(testData, 'testData'); // 1.0.2
      dumpJson(testData, 'testData'); // 1.0.2
    });
    test('run2', () {
      dump('this is run2');
    });
  });
}
