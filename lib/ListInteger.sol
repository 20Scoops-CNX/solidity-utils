pragma solidity ^0.4.16;

library ListInteger {

    modifier restricted(uint[] items) {
        require(items.length > 0);
        _;
    }

    function add(uint[] storage items, uint value) public {
        items.push(value);
    }

    function getItems(uint[] items) public returns (uint[]) {
        return items;
    }

    function remove(uint[] storage items) public {
        delete items[items.length-1];
        items.length--;
    }

    function removeByValue(uint[] storage items, uint value) public {
        uint index = find(items, value);
        removeByIndex(items, index);
    }

    function removeByIndex(uint[] storage items, uint index) public {
        if (index >= items.length) {
            return;
        }

        for (uint i = index; i < items.length-1; i++) {
            items[i] = items[i + 1];
        }
        items.length--;
    }

    function find(uint[] items, uint value) public restricted(items) returns (uint) {
        uint i = 0;
        while (items[i] != value) {
            i++;
        }
        return i;
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

    function sum(uint[] items) public view returns (uint) {
        uint sum = 0;
        for (uint i = 0; i<items.length; i++) {
            sum += items[i]; 
        }
        return sum;
    }
}