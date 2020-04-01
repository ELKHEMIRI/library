package io.shodo.library.exposition;

import io.shodo.library.dmain.model.Book;
import io.shodo.library.dmain.model.BookRepository;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class LibraryController {

    private BookRepository bookRepository;

    public LibraryController(BookRepository bookRepository) {
        this.bookRepository = bookRepository;
    }

    @GetMapping(value="/")
    public ModelAndView listBooks(ModelAndView model) {
        model.addObject("books", bookRepository.findAllBooks().asList());
        model.setViewName("home");
        return model;
    }

    @GetMapping(value="/book/add")
    public ModelAndView newBook(ModelAndView model) {
        Book book = new Book();
        model.addObject("bookForm", book);
        model.setViewName("bookForm");
        return model;
    }

    @PostMapping(value = "/books")
    public ModelAndView saveBook(@ModelAttribute("bookForm") Book book) {
        bookRepository.save(book);
        return new ModelAndView("redirect:/");
    }

    @GetMapping(value="/books/{id}")
    public ModelAndView showBook(@PathVariable("id") int bookId) {
        Book book = bookRepository.findById(bookId);
        ModelAndView model = new ModelAndView("show");
        model.addObject("book", book);
        return model;
    }

    @GetMapping(value="/books/{id}/update")
    public ModelAndView update(@PathVariable("id") int bookId) {
        Book book = bookRepository.findById(bookId);
        ModelAndView model = new ModelAndView("bookForm");
        model.addObject("bookForm", book);
        return model;
    }

    @GetMapping(value="/books/{id}/delete")
    public ModelAndView delete(@PathVariable("id") int bookId) {
        bookRepository.delete(bookId);
        return new ModelAndView("redirect:/");
    }

}
