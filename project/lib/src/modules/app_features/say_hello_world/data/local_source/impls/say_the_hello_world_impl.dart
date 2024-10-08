import '../../../../../../shared/constants/lang_const.dart';
import '../absts/say_the_hello_world_abst.dart';

/// @Project: [Project_name],
/// @enterprise: [Organisation_name]
/// @description:  In this file, we have the following methods [sayHelloWorld]
/// @dev: [dev_names]
/// @version : 1.0.0
/// @createdAt: ../../..
/// @updatedAt: #

class SayTheHelloWorldImpl implements SayTheHelloWorldAbst {
  /// Note: This method return the salutation to world
  @override
  String sayHelloWorld() {
    return Lang.welcome;
  }
}
