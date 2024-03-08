// @license
// Copyright (c) 2019 - 2024 Dr. Gabriel Gatzsche. All Rights Reserved.
//
// Use of this source code is governed by terms that can be
// found in the LICENSE file in the root of this package.

import 'dart:io';

import 'package:gg_is_github/src/is_github.dart';
import 'package:test/test.dart';

void main() {
  group('isGithub', () {
    group('should return true', () {
      test('when running on GitHub', () {
        testIsGitHub = null;
        expect(isGitHub, Platform.environment.containsKey('GITHUB_ACTIONS'));
      });

      test('when testIsGitHub is set', () {
        testIsGitHub = true;
        expect(isGitHub, isTrue);
        testIsGitHub = false;
      });
    });

    group('should return false', () {
      test('when testIsGitHub is set', () {
        testIsGitHub = false;
        expect(isGitHub, isFalse);
      });
    });
  });
}
