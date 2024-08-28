/// Project service path
enum ProductServicePath {
  user('api/users?page=2'),
  user2('posts');

  const ProductServicePath(this.value);

  final String value;

  /// [withQuery] is used when adding additional information next to it.
  String withQuery(String value) => '${this.value}/$value';
}
