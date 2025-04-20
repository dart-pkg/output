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
      echoJson(testData, 'testData');
      dumpJson(testData, 'testData');
      echoYaml(testData, 'testData');
      dumpYaml(testData, 'testData');
    });
    test('run2', () {
      dump('this is run2');
    });
  });
}
