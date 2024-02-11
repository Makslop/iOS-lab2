import 'Book.dart';
class Library {
  List<Book> books = [];

  void addBook(Book book) {
    books.add(book);
  }

  void removeBook(Book book) {
    books.remove(book);
  }

  void displayAllBooks() {
    if (books.isEmpty) {
      print('The library is empty.');
    } else {
      print('Books in the library:');
      for (var book in books) {
        book.displayInfo();
      }
    }
  }
}