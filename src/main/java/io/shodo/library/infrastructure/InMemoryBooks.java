package io.shodo.library.infrastructure;

import io.shodo.library.dmain.model.Book;

import java.util.Arrays;
import java.util.List;

public class InMemoryBooks {

    public static List<Book> fakeBooks() {
        Book blackSwan = new Book(1, "Black Swan", "Nassim Nicholas Taleb"
                , "Random House", "Philosophy", "Taleb has referred to the book as an essay or a narrative with one single idea: \"our blindness with respect to randomness, particularly large deviations.\"[3] The book moves from literary subjects in the beginning to scientific and mathematical subjects in the later portions. Part One and the beginning of Part Two delve into psychology. Taleb addresses science and business in the latter half of Part Two and Part Three. Part Four contains advice on how to approach the world in the face of uncertainty and still enjoy life.");

        Book sapiens = new Book(2, "Sapiens: A Brief History of Humankind", "Yuval Noah Harari"
                , "Harper & Row", "History, human evolution", "How did our species succeed in the battle for dominance? Why did our foraging ancestors come together to create cities and kingdoms? How did we come to believe in gods, nations and human rights; to trust money, books and laws; and to be enslaved by bureaucracy, timetables and consumerism? And what will our world be like in the millennia to come?");

        Book  factulness = new Book(3, "Factfulness", "Hans Rosling"
                , "Flatiron Books", "Non fiction", "Rosling criticizes the notion of dividing the world into the \"developed world\" and the \"developing world\", saying it's an outdated view. He shows that today most countries are \"developed\" and the ones that aren't don't fit how developing countries were when the term became popular. Instead, he offers a four category model based on income per person");

        return Arrays.asList(blackSwan, sapiens, factulness);

    }
}
