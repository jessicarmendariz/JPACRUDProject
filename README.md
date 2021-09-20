# JPACRUDProject
### Overview
"A reader lives a thousand lives before he dies."

Kristen Ashley is a New York Times Bestselling Author - famous for multiple contemporary romance and fantasy book series. Beautiful Books is a website dedicated to tracking the books she has published, books the website user has read, and a database for keeping track of the Book Title, Heroine, Hero, Description, Series, and a Rating.

### How To Use
Opening the website the user is prompted with two choices: Search Book or Create A Book. Choosing Search Book the user can choose to Search by Book Id or Search by Book Title. Choosing Create A Book, the user is prompted with multiple data fields to fill out in order to Create a Book in the database. Once a book is searched, or created, the user is able to update the information of the book, or to delete the book.

### Building Make Change
I started building Make Change with the initial prompts to the Customer and the input of the Item Price and the Customer's Payment. Using 'If Statements', I created the outline of how to determine if the Customer's Payment was less than the price - which results in an error, if the payment was equal to the price - which results in needing no change, or if the payment was more than the price - resulting in the Customer needing change.

Secondly, I built the 'While Loops' to determine if change was needed for each specific denomination ($20, $10, $5, %1, $.25, $.10, $.05, $.01). The 'While Loops' contain a 'Counter' that checks for every denomination and how many of each increment.

Problem: At first I wasn't sure how to clean up the grammar between single and plural instances when saying "One Dollar Bill" - "Two Dollar Bill" or "One Dollar Bills" - "Two Dollar Bills".

Solution: I changed the output to reflect x $20, x $10, etc.

Problem: I did not like how it showed zeroes for the denominations that weren't used. I wanted to only display the denominations that would be dispensed to the Customer. I attempted to use a 'Boolean' and 'Switch/Case' to only print lines that had data to output. I attempted to create a second 'Method' and move everything in my third 'If Statement' - all the 'While Loops' - into their own 'Method' and use a 'Boolean' to only print when values appeared in each 'Loop'. I was unsuccessful.

Solution: In the end, I asked for help and the solution was very simple. Create an 'If Statement' above each 'Sys Out' that prevents the line from printing if the 'Counter' = 0.
