/*
 * Future<void> main() async {
 *  for (var i = 0; i < 5; i++) {
 *
 *  print('Hello from Dart ($i)!');
 *   await Future.delayed(Duration(milliseconds: 500));
 *  }
 * }
 */

import 'package:dart_app/dart_application_1.dart' as dart_application_1;
import 'package:fpdart/fpdart.dart';

void main(List<String> arguments) {

  /// ----------------

  print('[package:dart_app/dart_application_1.dart - calculate 6*7] : ${dart_application_1.calculate()} !');

  /// ----------------
  
  /// Sum elements of a list
  const List<int> list = [1, 2, 3, 4];
  /// Functional solution
  var sumF = dart_application_1.sumListFold(list);
  print('[fpdart - list.fold] : $sumF');

  /// ----------------

  /// Composability
  /// Sum all elements of a list that are greater than 2
  /// Functional solution
  sumF = dart_application_1.sumListWhereFold(list);
  print('[fpdart - list.where.fold] : $sumF');

  /// ----------------

  /// Extreme example
  ///
  /// How can you achieve the same result with Imperative code?
  /// Is it even possible? 🤷‍
  sumF = dart_application_1.listETL(list);
  print('[fpdart - list.where.plus.drop.intersect.map.take.first] : initial $list ETL to $sumF');

  /// ----------------

  /// No need to check for `null`
  Option<int> a = Option.of(3);
  /// [Option - getOrElse - True]
  sumF = dart_application_1.optionGetOrElse(a);
  print('[fpdart - Option - getOrElse - True] : $sumF');

  /// ----------------

  /// No need to check for `null
  a = none<int>();
  /// [Option - getOrElse - False]
  ///final resultFalse = b.getOrElse(() => 0) * 2;
  sumF = dart_application_1.optionGetOrElse(a);
  print('[fpdart - Option - getOrElse - False] : $sumF');

  /// ----------------

  /// [Option - list]
  /// ??? final Option<List<int>> c = [Option.of(3), none<int>(), Option.of(5)];
  /// No need to check for `null`
  /// /final resultList = c.getOrElse(() => 0) * 2;
  /// print('[fpdart - Option - list] : $resultList');
  
  /// ----------------

  /// Error handling using [Option - False] 🎉
  Option<double> myDivideResult = dart_application_1.divideF(3,0);
  print('[fpdart - error handling - Option - False] : $myDivideResult');

  /// ----------------
  
  /// Error handling using [Option - True] 🎉
  myDivideResult = dart_application_1.divideF(3,2);
  print('[fpdart - error handling - Option - True] : $myDivideResult');

  /// ----------------
  
}
