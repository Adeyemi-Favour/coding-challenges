void main() {
  palindrome_checker('A man, a plan, a canal: Panama');
}

palindrome_checker(String sequence) {
  String lower_case = sequence.toLowerCase().replaceAll(RegExp(r'[^a-z0-9]'), '');

  List<String> new_words = [];

  for (int i = 0; i < lower_case.length; i++) {
    new_words.add(lower_case[i]);
  }

  print(new_words);

  if (new_words.join() == new_words.reversed.join()) {
    print('True');
  } else {
    print('False');
  }
}
