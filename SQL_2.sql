INSERT INTO buy_book(buy_id, book_id, amount)
VALUE 
    (5, (SELECT book_id FROM book WHERE title = 'Лирика' 
         AND author_id = (SELECT author_id FROM author WHERE name_author LIKE 'Пастернак %' )), 2),
    (5, (SELECT book_id FROM book WHERE title = 'Белая гвардия' 
         AND author_id = (SELECT author_id FROM author WHERE name_author LIKE 'Булгаков %' )), 1);
         
SELECT * FROM buy_book;