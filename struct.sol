pragma solidity ^0.5.0;

contract test {
   struct Book { 
      bytes32 title;
      bytes32 author;
      uint book_id;
   }
   Book book;
  
  function bytes32ToString(bytes32 _bytes32) private pure returns (string memory) {
        uint8 i = 0;
        while(i < 32 && _bytes32[i] != 0) {
            i++;
        }
        bytes memory bytesArray = new bytes(i);
        for (i = 0; i < 32 && _bytes32[i] != 0; i++) {
            bytesArray[i] = _bytes32[i];
        }
        return string(bytesArray);
    }

   function setBook() public {
      book = Book('Learn Java', 'TP', 1);
   }
   function getTitle() public view returns (string memory) {
       string memory convertedTitle = bytes32ToString(book.title);
       return  convertedTitle;
   }
   function getAuthor() public view returns (string memory) {
       string memory convertedAuthor = bytes32ToString(book.author);
       return  convertedAuthor;
   }
   function getBookId() public view returns (uint) {
      return book.book_id;
   }
}
