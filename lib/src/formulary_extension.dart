import 'package:flutter/material.dart';

/// Extension on [BuildContext] to provide quick access to [Form] properties.
extension FormExtension on BuildContext {
  /// Returns a [FormM] instance for the current [BuildContext].
  FormM get form => FormM(this);
}

/// A class that provides access to the `Form` of the current `BuildContext`.
@protected
class FormM {
  /// Creates a new `FormM` instance.
  FormM(this._context);

  final BuildContext _context;

  /// Validates the form.
  bool validate() => Form.of(_context).validate();

  /// Resets the form.
  void reset() => Form.of(_context).reset();

  /// Saves the form.
  void save() => Form.of(_context).save();
}
