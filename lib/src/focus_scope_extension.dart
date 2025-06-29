import 'package:flutter/material.dart';

/// A class that provides access to the `FocusScope` of the current `BuildContext`.
class FocusScopeM {
  /// Creates a new `FocusScopeM` instance.
  const FocusScopeM(this._context);

  final BuildContext _context;

  FocusScopeNode _node() => FocusScope.of(_context);

  /// Whether this node has the primary focus.
  bool get hasFocus => _node().hasFocus;

  /// Whether this node is the first focusable node in the focus scope.
  bool get isFirstFocus => _node().isFirstFocus;

  /// Whether any of the descendants of this node has the primary focus.
  bool get hasPrimaryFocus => _node().hasPrimaryFocus;

  /// Whether this node can be focused.
  bool get canRequestFocus => _node().canRequestFocus;

  /// Moves the focus to the next focusable node in the focus scope.
  void nextFocus() => _node().nextFocus();

  /// Requests the focus for this node.
  void requestFocus([FocusNode? node]) => _node().requestFocus(node);

  /// Moves the focus to the previous focusable node in the focus scope.
  void previousFocus() => _node().previousFocus();

  /// Removes the focus from this node.
  void unFocus({UnfocusDisposition disposition = UnfocusDisposition.scope}) =>
      _node().unfocus(disposition: disposition);

  /// Sets the first focusable node in the focus scope.
  void setFirstFocus(FocusScopeNode scope) => _node().setFirstFocus(scope);

  /// Consumes the keyboard token for this node.
  bool consumeKeyboardToken() => _node().consumeKeyboardToken();
}

/// An extension that provides access to the `FocusScopeM` for the current `BuildContext`.
extension FocusScopeExtension on BuildContext {
  /// Returns a `FocusScopeM` instance for the current `BuildContext`.
  FocusScopeM get focusScope => FocusScopeM(this);

  /// Closes the keyboard by requesting the focus for a new `FocusNode`.
  void closeKeyboard() => focusScope.requestFocus(FocusNode());
}