import 'package:bloc_test/bloc_test.dart';
import 'package:book_repository/book_repository.dart' as book_repository;
import 'package:chingu_bookfinder_flutter/book/book.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockBookRepository extends Mock
    implements book_repository.BookRepository {}

class MockBook extends Mock implements book_repository.Book {}

void main() {
  group('book bloc', () {
    late book_repository.Book book;
    late book_repository.BookRepository bookRepository;
    late BookListBloc bookBloc;

    setUp(() {
      book = MockBook();
      bookRepository = MockBookRepository();
      when(() => book.id).thenReturn('1');
      when(() => book.authors).thenReturn(['author 1', 'author 2']);
      when(() => book.publisher).thenReturn('publisher');
      when(() => book.thumbnail).thenReturn('image');
      when(() => book.title).thenReturn('title');
      when(() => bookRepository.getBooks(any())).thenAnswer(
        (_) async => [book],
      );

      bookBloc = BookListBloc(bookRepository: bookRepository);
    });

    group('constructor', () {
      test('has correct initial state', () {
        expect(
          bookBloc.state,
          equals(const BookListState()),
        );
      });
    });

    group('GetBooksEvent', () {
      blocTest<BookListBloc, BookListState>(
        '''
          emits loading status when books are being fetchs 
          and success status upon successful fetch and books 
          when GetBooksEvent is added
        ''',
        build: () => bookBloc,
        act: (bloc) => bloc.add(
          const GetBooksEvent(query: 'harrypotter'),
        ),
        expect: () => [
          const BookListState(status: BookListStatus.loading),
          BookListState(
            status: BookListStatus.success,
            books: [book],
          )
        ],
      );

      blocTest<BookListBloc, BookListState>(
        'emits failure status when error occurs',
        setUp: () {
          when(
            () => bookRepository.getBooks(any()),
          ).thenAnswer(
            (_) => Future.error(
              'Status Code: 404 Resource not found',
            ),
          );
        },
        build: () => bookBloc,
        act: (bloc) => bloc.add(
          const GetBooksEvent(query: 'harrypotter'),
        ),
        expect: () => [
          const BookListState(status: BookListStatus.loading),
          const BookListState(
            status: BookListStatus.failure,
            error: 'Status Code: 404 Resource not found',
          ),
        ],
      );
    });
  });
}
