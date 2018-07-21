pragma solidity ^0.4.16;

import "../lib/ListInteger.sol";

contract ListIntegerTest {
    using ListInteger for *;

    uint[] items;

    function ListIntegerTest () public {
        items.push(1);
        items.push(2);
        items.push(3);
        items.push(5);
    }

    function testSum() public {
        assert(6 == items.sum(10));
    }
}