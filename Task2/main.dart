import 'dart:io';
import 'Book.dart';
import 'Library.dart';
void main() {
  Book book1 = Book('1984', 'George Orwell', 1949, 328);
  Book book2 = Book('The Little Prince', 'Antoine de Saint-Exupéry', 1943, 109);
  Library library = Library();
  library.addBook(book1);
  library.addBook(book2);
  library.displayAllBooks();
  library.removeBook(book2);
  library.displayAllBooks();
}