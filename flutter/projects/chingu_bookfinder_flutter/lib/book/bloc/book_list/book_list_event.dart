part of 'book_list_bloc.dart';

abstract class BookListEvent extends Equatable {
  const BookListEvent();
}

class GetBooksEvent extends BookListEvent {
  const GetBooksEvent({
    required this.query,
  });

  final String query;

  @override
  List<Object> get props => [query];
}
