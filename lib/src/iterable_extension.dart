/// Extension on [Iterable] to provide quick access to common properties.
extension IterableExtension<T> on Iterable<T> {
  /// Returns this iterable as a [List].
  List<T> get asList => toList();

  /// Returns the first element, or `null` if the iterable is empty.
  T? get firstOrNull => isEmpty ? null : first;

  /// Returns the last element, or `null` if the iterable is empty.
  T? get lastOrNull => isEmpty ? null : last;
}
