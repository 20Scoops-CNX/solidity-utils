pragma solidity ^0.4.16;

import "../lib/ListInteger.sol";

contract ListIntegerTest {

    using ListInteger for *;
    
    uint[] items = [8,3,5,4,2,7,6,1];

    function testSum() public {
        uint[] memory array = new uint[](4);
        array[0] = 1;
        array[1] = 2;
        array[2] = 3;
        array[3] = 4;
        assert(array.sum() == 10);
    }
    
    function testAddAndRemoveItem() public {
        uint[] array;
        array.add(1);
        assert(array.getSize() == 1);
        array.remove();
    }
    
    function testRemoveByIndexItem() public {
        uint[] array;
        array.add(1);
        array.removeByIndex(0);
        assert(array.getSize() == 0);
    }
    
    function testRemoveByValueItem() public {
        uint[] array;
        array.add(1);
        array.removeByValue(1);
        assert(array.getSize() == 0);
    }
    
    function testGetSize() public {
        uint[] memory array = new uint[](2);
        array[0] = 1;
        array[1] = 2;
        assert(array.getSize() == 2);
    }
    
    function testFind() public {
        uint[] memory array = new uint[](2);
        array[0] = 1;
        array[1] = 2;
        assert(array.find(1) == 0);
    }
    
    function testSort() public {
        uint[] memory result = items.sort();
        assert(result[result.length-1] == 8);
    }
    
    function testSortDESC() public {
        uint[] memory result = items.sortDESC(); 
        assert(result[0] == 8);
    }
}