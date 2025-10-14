void main() {
  int n = 5;
  for (int i = 0; i < n; i++) {
    String spaces = ' ' * (n - i - 1);
    String stars = '*' * (2 * i + 1);
    print(spaces + stars);
  }
}
