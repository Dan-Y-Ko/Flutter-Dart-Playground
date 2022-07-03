import 'package:chingu_bookfinder_flutter/book/book.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';

class SearchInput extends StatefulWidget {
  const SearchInput({Key? key}) : super(key: key);

  @override
  State<SearchInput> createState() => _SearchInputState();
}

class _SearchInputState extends State<SearchInput> {
  final TextEditingController searchInputController = TextEditingController();

  @override
  void dispose() {
    searchInputController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: searchInputController,
      style: const TextStyle(
        color: Colors.black,
      ),
      decoration: const InputDecoration(
        prefixIcon: Padding(
          padding: EdgeInsets.all(17),
          child: Icon(Icons.search),
        ),
        filled: true,
        fillColor: Colors.white,
        hintText: 'Search',
        hintStyle: TextStyle(
          color: Color.fromRGBO(87, 94, 131, 0.5),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(15),
          ),
          borderSide: BorderSide.none,
        ),
      ),
      textInputAction: TextInputAction.done,
      onSubmitted: (_) {
        context.read<BookListBloc>().add(
              GetBooksEvent(
                query: searchInputController.text,
              ),
            );
      },
    );
  }
}
