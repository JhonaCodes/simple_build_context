/// Extension on [String] to provide quick access to common properties.
extension StringExtension on String {
  /// Returns `true` if the string is not null and not empty.
  bool get isNotNullOrEmpty => !isNullOrEmpty;

  /// Returns `true` if the string is null or empty.
  bool get isNullOrEmpty => isEmpty || trim().isEmpty;
}
