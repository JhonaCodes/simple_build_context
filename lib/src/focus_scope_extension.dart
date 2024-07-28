import 'package:flutter/material.dart';

class _FocusScope {
  const _FocusScope(this._context);

  final BuildContext _context;

  FocusScopeNode _node() => FocusScope.of(_context);

  bool get hasFocus => _node().hasFocus;

  bool get isFirstFocus => _node().isFirstFocus;

  bool get hasPrimaryFocus => _node().hasPrimaryFocus;

  bool get canRequestFocus => _node().canRequestFocus;

  void nextFocus() => _node().nextFocus();

  void requestFocus([FocusNode? node]) => _node().requestFocus(node);

  void previousFocus() => _node().previousFocus();

  void unFocus({UnfocusDisposition disposition = UnfocusDisposition.scope}) =>
      _node().unfocus(disposition: disposition);

  void setFirstFocus(FocusScopeNode scope) => _node().setFirstFocus(scope);

  bool consumeKeyboardToken() => _node().consumeKeyboardToken();
}

extension FocusScopeExtension on BuildContext {
  _FocusScope get focusScope => _FocusScope(this);

  void closeKeyboard() => focusScope.requestFocus(FocusNode());
}