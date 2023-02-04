# Contributing to `FlutterFlaza`

We love your input! We want to make contributing to this project as easy and transparent as possible.

## Contribution Guidelines

**Note:** If these contribution guidelines are not followed your issue or PR might be closed, so
please read these instructions carefully.

_See also: [Flutter's code of conduct](https://flutter.dev/design-principles/#code-of-conduct)_


## Summary of the contribution flow

The following is a summary of the ideal contribution flow. Please, note that Pull Requests can also be rejected by the maintainers when appropriate.

```
    ┌───────────────────────┐
    │                       │
    │    Open an issue      │
    │  (a bug report or a   │
    │   feature request)    │
    │                       │
    └───────────────────────┘
               ⇩
    ┌───────────────────────┐
    │                       │
    │  Open a Pull Request  │
    │   (only after issue   │
    │     is approved)      │
    │                       │
    └───────────────────────┘
               ⇩
    ┌───────────────────────┐
    │                       │
    │   Your changes will   │
    │     be merged and     │
    │ published on the next │
    │        release        │
    │                       │
    └───────────────────────┘
```

## Contribution types

### Bug Reports

- If you find a bug, please first report it using [GitHub issues](https://github.com/FlutterPlaza/.github/issues/new).
  - First check if there is no existing an issue for it; duplicated issues will be closed.

### Bug Fix

- If you'd like to submit a fix for a bug, please read the [How To](#how-to-contribute) for how to send a pull request.
- Indicate on the open issue that you are working on fixing the bug and the issue will be assigned to you.
- Write `Fixes #xxxx` in your PR text, where xxxx is the issue number (if there is one).
- Include a test that isolates the bug and verifies that it was fixed.

### New Features

- If you'd like to add a feature to the library that doesn't already exist, feel free to describe the feature in a new [GitHub issue](https://github.com/FlutterPlaza/.github/issues/new).
- If you'd like to implement the new feature, please wait for feedback from the project maintainers before spending too much time writing the code. In some cases, enhancements may not align well with the project future development direction.
- Implement the code for the new feature and please read the [How To](#how-to-contribute).

### Documentation & Miscellaneous

- If you have suggestions for improvements to the documentation, tutorial or examples (or something else), we would love to hear about it.
- As always first file a [GitHub issue](https://github.com/FlutterPlaza/.github/issues/new).
- Implement the changes to the documentation, please read the [How To](#how-to-contribute).

## How To Contribute

### Forking & cloning the repository

- Ensure all the dependencies described in the previous section are installed.
- Fork `https://github.com/FlutterPlaza/FinFlow` into your own GitHub account. If
  you already have a fork, and are now installing a development environment on
  a new machine, make sure you've updated your fork so that you don't use stale
  configuration options from long ago.
- `git clone git@github.com:<your_name_here>/FinFlow.git`
- `git remote add upstream git@github.com:FlutterPlaza/FinFlow.git` (So that you
  pull from the main repository, not your clone, when running `git pull`.)

### Performing changes

- Create a new local branch (e.g. `git checkout -b my-new-feature`).
- Consider naming your local branch following the [Biodiversity Branch Naming Convention](https://bit.ly/3DyYSwM) or [Deepsource Branch Naming Convention](https://bit.ly/3Y08Gs4)
- Make your changes (try to split them up with one PR per feature/fix).

#### Commiting your changes

- When committing your changes, please follow the [Conventional Commits](https://www.conventionalcommits.org/en/v1.0.0-beta.4/) guidelines and make sure that each commit message is clear
 (e.g. `git commit -m 'doc: Added CONTRIBUTING.md'`).
- Push your new branch to your own fork into the same remote branch
 (e.g. `git push origin my-username.my-new-feature`, replace `origin` if you use another remote.)

#### Running Tests

- Run the `flutter format test lib widgetbook packages` command to ensure that all your changes are properly formatted.

- Run the `flutter analyze test lib widgetbook packages` command to perform static analysis on your code.

### Open a pull request

To send us a pull request:

- Go to `https://github.com/FlutterPlaza/.github/` and click the
  "Compare & pull request" button

- Add a description that summarizes the changes you have made

- If your changes include User Interface (UI) implementations, add a screenshot of what your proposed solution looks like

- Select the type of change you're making from the checking one of the checkboxes under the type of change section

Please make sure all your check-ins have detailed commit messages explaining the patch.

When naming the title of your pull request, please follow the [Conventional Commits](https://www.conventionalcommits.org/en/v1.0.0-beta.4/)
guide. 

Please also enable **“Allow edits by maintainers”**, this will help to speed up the review
process as well.


## References
This document was adapted from the OSS contribution guidelines of [Inverstase](https://github.com/invertase/flutterfire_cli/blob/main/CONTRIBUTING.md) & the OSS [AsyncAPI Initiative](https://github.com/asyncapi).
