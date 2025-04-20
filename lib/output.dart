import 'dart:core';
import 'dart:convert' as convert;
import 'package:text_serializer/text_serializer.dart' as ts;

bool get _isInDebugMode {
  bool inDebugMode = false;
  assert(inDebugMode = true);
  return inDebugMode;
}

List<String> _textToLines(String $s) {
  const $splitter = convert.LineSplitter();
  final $lines = $splitter.convert($s);
  return $lines;
}

void echo(dynamic $x, [String? $title]) {
  String $json = ($x is String) ? '`${$x}`' : '${$x}';
  if ($title == null) {
    print($json);
  } else {
    print('${$title} ==> ${$json}');
  }
}

// since v1.0.2
void echoJson(dynamic $x, [String? $title]) {
  //String $json = convert.jsonEncode($x);
  String $json = ts.toJson($x, '  ');
  if ($title == null) {
    print($json);
  } else {
    print('${$title} ==> ${$json}');
  }
}

// since v1.0.4
void echoYaml(dynamic $x, [String? $title]) {
  String $json = '[YAML]```\n${ts.toYaml($x)}\n```[/YAML]';
  if ($title == null) {
    print($json);
  } else {
    print('${$title} ==> ${$json}');
  }
}

void dump(dynamic $x, [String? $title]) {
  final $lines = _textToLines(StackTrace.current.toString());
  String $line = '';
  for (int i=0; i<$lines.length; i++) {
    if ($lines[i].contains('output/output.dart')) {
      $line = $lines[i + 1];
      break;
    }
  }
  if ($line.startsWith('#')) {
    final $reg = RegExp(r'#[0-9]+[ ]+');
    $line = $line.replaceFirst($reg, '');
  }
  final $lineInfo = '@ ${$line}';
  String $mode = _isInDebugMode ? 'DEBUG' : 'RELEASE';
  String $json = ($x is String) ? '`${$x}`' : '${$x}';
  if ($title == null) {
    print('[${$mode}] ${$lineInfo}\n${$json}');
  } else {
    print('[${$mode}] ${$lineInfo}\n${$title} ==> ${$json}');
  }
}

// since v1.0.2
void dumpJson(dynamic $x, [String? $title]) {
  final $lines = _textToLines(StackTrace.current.toString());
  String $line = '';
  for (int i=0; i<$lines.length; i++) {
    if ($lines[i].contains('output/output.dart')) {
      $line = $lines[i + 1];
      break;
    }
  }
  if ($line.startsWith('#')) {
    final $reg = RegExp(r'#[0-9]+[ ]+');
    $line = $line.replaceFirst($reg, '');
  }
  final $lineInfo = '@ ${$line}';
  String $mode = _isInDebugMode ? 'DEBUG' : 'RELEASE';
  //String $json = convert.jsonEncode($x);
  String $json = ts.toJson($x, '  ');
  if ($title == null) {
    print('[${$mode}] ${$lineInfo}\n${$json}');
  } else {
    print('[${$mode}] ${$lineInfo}\n${$title} ==> ${$json}');
  }
}

// since v1.0.4
void dumpYaml(dynamic $x, [String? $title]) {
  final $lines = _textToLines(StackTrace.current.toString());
  String $line = '';
  for (int i=0; i<$lines.length; i++) {
    if ($lines[i].contains('output/output.dart')) {
      $line = $lines[i + 1];
      break;
    }
  }
  if ($line.startsWith('#')) {
    final $reg = RegExp(r'#[0-9]+[ ]+');
    $line = $line.replaceFirst($reg, '');
  }
  final $lineInfo = '@ ${$line}';
  String $mode = _isInDebugMode ? 'DEBUG' : 'RELEASE';
  String $json = '[YAML]```\n${ts.toYaml($x)}\n```[/YAML]';
  if ($title == null) {
    print('[${$mode}] ${$lineInfo}\n${$json}');
  } else {
    print('[${$mode}] ${$lineInfo}\n${$title} ==> ${$json}');
  }
}
