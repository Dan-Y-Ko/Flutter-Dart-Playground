import 'package:chingu_bookfinder_flutter/book/repository/main.dart';
import 'package:test/test.dart';

void main() {
  group('Book model', () {
    late BookDetail _bookDetail;

    setUp(() {
      _bookDetail = const BookDetail(
        id: 'kLAoswEACAAJ',
        thumbnail:
            'http://books.google.com/books/content?id=kLAoswEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api',
        authors: ['J. K. Rowling', 'Jack Thorne', 'John Tiffany'],
        publisher: 'Sphere',
        title: 'Harry Potter and the Cursed Child',
        description: 'some description',
      );
    });

    test('instantiates properly', () {
      expect(_bookDetail.id, 'kLAoswEACAAJ');
      expect(_bookDetail.thumbnail,
          'http://books.google.com/books/content?id=kLAoswEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api');
      expect(
        _bookDetail.authors,
        ['J. K. Rowling', 'Jack Thorne', 'John Tiffany'],
      );
      expect(_bookDetail.publisher, 'Sphere');
      expect(_bookDetail.title, 'Harry Potter and the Cursed Child');
      expect(_bookDetail.description, 'some description');
    });

    test('object comparison is supported', () {
      expect(_bookDetail, equals(_bookDetail));
    });

    test('toString returns expected string', () {
      expect(
        _bookDetail.toString(),
        'BookDetail(id: kLAoswEACAAJ, thumbnail: http://books.google.com/books/content?id=kLAoswEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api, authors: [J. K. Rowling, Jack Thorne, John Tiffany], description: some description, publisher: Sphere, title: Harry Potter and the Cursed Child)',
      );
    });
  });
}