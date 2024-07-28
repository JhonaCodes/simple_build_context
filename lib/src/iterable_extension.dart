extension IterableExtension<T> on Iterable<T> {
  List<T> get asList => toList();
  T? get firstOrNull => isEmpty ? null : first;
  T? get lastOrNull => isEmpty ? null : last;
}
