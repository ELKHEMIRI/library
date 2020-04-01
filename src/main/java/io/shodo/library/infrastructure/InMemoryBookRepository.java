package io.shodo.library.infrastructure;

import io.shodo.library.dmain.model.Book;
import io.shodo.library.dmain.model.BookRepository;
import io.shodo.library.dmain.model.Books;
import org.springframework.stereotype.Component;

import java.util.Random;

@Component
public class InMemoryBookRepository  implements BookRepository {

    private Books books;

    public InMemoryBookRepository() {
        this.books = new Books(InMemoryBooks.fakeBooks());
    }

    @Override
    public Books findAllBooks() {
        return books;
    }

    @Override
    public void save(Book book) {
        if (book.isNew()) {
            create(book);
        } else { update(book); }
    }

    @Override
    public Book findById(int bookId) {
        return books.byId(bookId)
                .orElseThrow(RuntimeException::new);
    }

    @Override
    public void delete(int bookId) {
        Book bookToDelete = findById(bookId);
        books.delete(bookToDelete);
    }

    private void create(Book book) {
        book.setId(new Random().nextInt());
        books.add(book);
    }

    private void update(Book book) {
        Book bookToUpdate = books.byId(book.getId())
                .orElseThrow(RuntimeException::new);
        bookToUpdate.setTitle(book.getTitle());
        bookToUpdate.setAuthor(book.getAuthor());
        bookToUpdate.setCategory(book.getCategory());
        bookToUpdate.setPublisher(book.getPublisher());
        bookToUpdate.setSummary(book.getSummary());
    }


}
