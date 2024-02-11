class Book {
  String title;
  String author;
  int year;
  int pageCount;

  Book(this.title, this.author, this.year, this.pageCount);

  void displayInfo() {
    print('Title: $title');
    print('Author: $author');
    print('Year: $year');
    print('Page Count: $pageCount');
    print('');
  }
}