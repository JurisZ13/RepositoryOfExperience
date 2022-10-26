SELECT b.buy_id, title, price, bb.amount
FROM client c
    INNER JOIN buy b ON c.client_id = b.client_id
    INNER JOIN buy_book bb ON b.buy_id = bb.buy_id
    INNER JOIN book ON bb.book_id = book.book_id
WHERE c.name_client = 'Баранов Павел'
ORDER BY b.buy_id, title;
