pragma solidity ^0.4.16;

library ListInteger {

    modifier restricted(uint[] items) {
        require(items.length > 0);
        _;
    }

    function addItem(uint[] storage items, uint value) public {
        items.push(value);
    }

    function removeItem(uint[] storage items) public returns (uint[]) {
        delete items[items.length-1];
        items.length--;
        return items;
    }

    function removeItem(uint[] storage items, uint index) public returns (uint[]) {
        delete items[index];
        items.length--;
        return items;
    }

    function getIndexAtValue(uint[] storage items, uint value) public restricted(items) returns (uint) {
        for (uint index = 0; index < items.length; index++) {
            if (items[index] == value) {
                return index;
            }
        }
    }

    function sort(uint[] storage items, bool desc) private returns (uint[]) {
        uint length = items.length;
        uint[] arr = items;

        for (uint i = 0; i < length; i++) {
            for (uint j = i + 1; j < length; j++) {
                bool condition;
                if (desc) {
                    condition = arr[i] < arr[j];
                } else {
                    condition = arr[i] > arr[j];
                }
                if (condition) {
                    uint temp = arr[j];
                    arr[j] = arr[i];
                    arr[i] = temp;
                }
            }   
        }
        return arr;
    }

    function sort(uint[] storage items) public returns (uint[]) {
        return sort(items, false);
    }

    function sortDESC(uint[] storage items) public returns (uint[]) {
        return sort(items, true);
    }
    
    function getSize(uint[] items) public view returns (uint) {
        return items.length;
    }
}