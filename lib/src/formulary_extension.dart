import 'package:flutter/material.dart';

extension FormExtension on BuildContext {
  _Form get form => _Form(this);
}

class _Form {
  _Form(this._context);

  final BuildContext _context;

  bool validate() => Form.of(_context).validate();

  void reset() => Form.of(_context).reset();

  void save() => Form.of(_context).save();
}