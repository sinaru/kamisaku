# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.1.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [0.4.5] - 2026.01.03

### Fixed

- `Kamisaku::PDF` validation for category and template

## [0.4.4] - 2026.01.01

### Changed
- Improve error handling in `yaml_str_to_content_hash` and `BaseContentValidator`

## [0.4.3] - 2026.01.01

### Changed

- Update YAML parsing error messages

## [0.4.2] - 2025.12.31

### Changed

- Use symbols for template names internally

## [0.4.1] - 2025.06.09

### Fixed
- `Kamisaku::BirthdayInvitationContentValidator` template listing

## [0.4.0] - 2025.06.09

### Added
- Added new `birthday_invitation` schema type for Birthday Invitation PDF generations

### Changed
- Updated the CLI tool to accept `category` to generate specific PDF

## [0.3.4] - 2025.06.06

### Added
- Add new templates `chromatic`, `gradient`, `meridian`, `prism`, and `zenith`

### Changed
- Update paper template

## [0.3.3] - 2025.06.01

### Changed
- Update validations to allow empty `contact` section

## [0.3.2] - 2025.06.01

### Added
- Template name validation to `Kamisaku::PDF` interface

## [0.3.1] - 2025-06-01

### Changed

- Refactor code and update `Kamisaku::PDF` interface

## [0.3.0] - 2025-05-28

### Added

- Add `Kamisaku::PDF` interface that can be used externally to generate PDF

## [0.2.1] - 2025-05-28

### Fixed

- pdfkit gem reference

## [0.2.0] - 2025-05-24

### Added

- Soft removing metadata in generated PDF using `exiftool`

## [0.1.2] - 2025-05-24

### Changed

- Update the paper template contact section so that the separator is not applied to the last item.

## [0.1.1] - 2025-05-24

### Changed

- Fix changelog URI in gemspec.

## [0.1.0] - 2025-05-24

### Added

- Initial release.
- Support for two themes.
