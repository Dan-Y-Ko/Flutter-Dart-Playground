String reverse(String text) {
  if (text != '') {
    return text.split('').reversed.join();
  }

  return '';
}
