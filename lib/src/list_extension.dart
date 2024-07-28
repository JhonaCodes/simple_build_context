extension ListExtension<T> on List<T> {
  T? get lastOrNull => isNotEmpty ? last : null;
  T? get firstOrNull => isNotEmpty ? first : null;
  List<T> operator - (List<T> other) => where((e) => !other.contains(e)).toList();
}