SELECT DISTINCT b.BOOKID, b.Title, b.publishing_NAME, b.AUTHOR_NAME
FROM book b, book_authors a, book_copies c
WHERE b.BOOKID=a.BOOKID AND b.BOOKID = c.BOOKID;

SELECT CARD_NO
FROM book_lending
WHERE Date_out BETWEEN '2017-01-01' AND '2017-06-30'
HAVING COUNT(CARD_NO) > 3;

SELECT b.BOOKID, b.Title, b.Publisher_Name, a.AUTHOR_NAME
FROM book b, book_authors a, book_copies c
WHERE  c.BOOKID=b.BOOKID AND b.BOOKID=a.BOOKID AND c.NO_OF_COPIES="1";

SELECT b.Title, l.BOOKID, b.publishing_NAME, a.AUTHOR_NAME 
FROM book b, book_authors a, book_lending l
WHERE a.BOOKID = b.BOOKID  AND l.BOOKID=b.BOOKID;

UPDATE book 
SET Title="Database Management" 
WHERE Title="DBMS"

DELETE book, book_authors, book_copies, book_lending
FROM book
INNER JOIN book_authors ON book.BOOKID = book_authors.BOOKID
INNER JOIN book_copies ON book.BOOKID = book_copies.BOOKID
INNER JOIN book_lending ON book.BOOKID = book_lending.BOOKID
WHERE book.BOOKID=1;

SELECT B.BOOKID, B.TITLE, C.NO_OF_COPIES
FROM BOOK B, BOOK_COPIES C, LIBRARY_BRANCH L
WHERE B.BOOKID=C.BOOKID
AND C.BRANCH_ID=L.BRANCH_ID;