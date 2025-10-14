import 'dart:io';
import 'dart:math';

void main() {
  final rand = Random();
  int secret = rand.nextInt(10); // 0..9
  stdout.write('Enter a number 0-9: ');
  int? guess = int.tryParse(stdin.readLineSync() ?? '');
  if (guess == null) {
    print('Invalid input.');
    return;
  }
  if (guess == secret) {
    print('Congratulations!');
  } else {
    print('The correct number is $secret');
    print('Better luck next time.');
  }
}
