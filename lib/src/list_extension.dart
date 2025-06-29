/// Extension on [List] to provide quick access to common properties.
extension ListExtension<T> on List<T> {
  /// Returns the last element, or `null` if the list is empty.
  T? get lastOrNull => isNotEmpty ? last : null;

  /// Returns the first element, or `null` if the list is empty.
  T? get firstOrNull => isNotEmpty ? first : null;

  /// Returns a new list containing the elements of this list that are not
  /// in the [other] list.
  List<T> operator -(List<T> other) =>
      where((e) => !other.contains(e)).toList();
}
