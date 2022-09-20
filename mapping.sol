pragma solidity ^0.5.0;

contract LedgerBalance {
   
   mapping(address => uint) public balances;

   function updateBalance(uint newBalance, address newAddress) public {
      balances[newAddress] = newBalance;
   }
//    function getBalances() public returns ( ){
//        return balances;
//    }
}
contract Updater {
   function updateBalance() public returns (uint) {
      LedgerBalance newBalance = new LedgerBalance();
      newBalance.updateBalance(10, 0xd9145CCE52D386f254917e481eB44e9943F39138);
      return newBalance.balances(0xd9145CCE52D386f254917e481eB44e9943F39138);
   }
}
