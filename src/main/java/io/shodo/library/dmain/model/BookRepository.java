package io.shodo.library.dmain.model;

public interface BookRepository {

    Books findAllBooks();

    void save(Book book);

    Book findById(int bookId);

    void delete(int bookId);
}
