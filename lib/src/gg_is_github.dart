// @license
// Copyright (c) 2019 - 2024 Dr. Gabriel Gatzsche. All Rights Reserved.
//
// Use of this source code is governed by terms that can be
// found in the LICENSE file in the root of this package.

import 'package:args/command_runner.dart';
import './commands/my_command.dart';

/// The command line interface for GgIsGithub
class GgIsGithub extends Command<dynamic> {
  /// Constructor
  GgIsGithub({required this.log}) {
    addSubcommand(MyCommand(log: log));
  }

  /// The log function
  final void Function(String message) log;

  // ...........................................................................
  @override
  final name = 'ggIsGithub';
  @override
  final description = 'Add your description here.';
}
