# Changelog

Notable changes to this project are documented in this file. The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/) and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased]

Breaking changes:
- Migrated from `web-promise` to `js-promise`

New features:

Bugfixes:

Other improvements:

## [v4.1.0](https://github.com/purescript-web/purescript-web-clipboard/releases/tag/v4.1.0) - 2022-07-14

Breaking changes:

New features:
- Added partial `Clipboard` interface implementation with `readText` and `writeText` operations (#11 by @garyb)

Bugfixes:

Other improvements:

## [v4.0.0](https://github.com/purescript-web/purescript-web-clipboard/releases/tag/v4.0.0) - 2022-04-27

Breaking changes:
- Migrate FFI to ES modules (#9 by @JordanMartinez)

New features:

Bugfixes:

Other improvements:

## [v3.0.0](https://github.com/purescript-web/purescript-web-clipboard/releases/tag/v3.0.0) - 2021-02-26

Breaking changes:
- Added support for PureScript 0.14 and dropped support for all previous versions (#4)

New features:

Bugfixes:

Other improvements:
- Migrated CI to GitHub Actions and updated installation instructions to use Spago (#2)
- Added a CHANGELOG.md file and pull request template (#5, #6)

## [v2.0.0](https://github.com/purescript-web/purescript-web-clipboard/releases/tag/v2.0.0) - 2019-02-23

- Bumped `-web-events` dependency, `Event.defaultPrevented` is now effectful.

## [v1.0.0](https://github.com/purescript-web/purescript-web-clipboard/releases/tag/v1.0.0) - 2018-05-26

- Initial release
