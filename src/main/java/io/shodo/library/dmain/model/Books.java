package io.shodo.library.dmain.model;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

public class Books {

    private List<Book> books = new ArrayList<>();

    public Books(List<Book> books) {
        this.books.addAll(books);
    }

    public List<Book> asList() {
        return books;
    }

    public void add(Book book) {
        books.add(book);
    }

    public Optional<Book> byId(Integer id) {
        return books.stream()
                .filter(b -> b.getId().equals(id))
                .findFirst();
    }

    public void delete(Book bookToDelete) {
        books.remove(bookToDelete);
    }
}
