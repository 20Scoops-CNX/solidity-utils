# Solidity Utils

We want to improve solidity basic skill and we also create a basic library for learning and practice. You can see how to use as below:

```javascript
pragma solidity ^0.4.16;

import "github.com/20Scoops-CNX/solidity-utils/lib/ListInteger.sol";

import "github.com/20Scoops-CNX/solidity-utils/lib/String.sol";

import "github.com/20Scoops-CNX/solidity-utils/lib/Integer.sol";

contract ExampleContract {
    using ListInteger for *;
    using Strings for string;
    using Integers for uint;
}
```

# ListInteger
- [addItem\(uint value\)](#concat--string)
- [removeItem\()](#length--uint)
- [removeItem\(uint) : uint[]](#replaceAll--uint[])
- [getIndexAtValue\(uint) : uint](#getIndexAtValue--uint)
- [sort\() : string](#sort)
- [sortDESC\() : string](#sortDESC)
- [getSize\() : uint](#getSize--uint)
- [sum\() : uint](#sum--uint)

# Strings
- [concat\(string\)](#concatstring)
- [length\() : uint](#length--uint)
- [replaceAll\(bytes1, bytes1) : string](#replaceAllbytes1-btyes1--string)
- [replace\(bytes1, bytes1) : string](#replacebytes1-bytes1--string)
- [compareTo\(string) : bool](#comparetostring--bool)

### concat(string)

Join two strings

```javascript
function example() {
    string memory str = "20scoops";
    str = str.concat(" ").concat("CNX");
}
```

### length() : uint

Get the length of a string

```javascript
function example() returns (uint) {
    string memory str = "20scoops CNX";
    return str.length();
}
```

### replaceAll(bytes1, btyes1) : string

Replace all character in string

```javascript
function example() public view returns (string) {
    string memory str = "20scoops CNX ";
    return str.replaceAll(" ", "");
}
```

### replace(bytes1, bytes1) : string

Replace character in string

```javascript
function example() public view returns (string) {
    string memory str = "20scoops CNX ";
    return str.replace(" ", "");
}
```

### compareTo(string) : bool

Compare two string

```javascript
function example() public view returns (bool) {
    string memory str = "20scoops CNX";
    return str.compareTo("20scoops");
}
```

# Intergers
- [parseInt\(string\) : uint](#parseintstring--uint)
- [toString\() : uint](#tostring--uint)
- [plus\(uint) : uint](#plusuint--uint)
- [minus\(uint) : uint](#minusuint--uint)
- [divide\(uint) : uint](#divideuint--uint)
- [multiply\(uint) : uint](#multiplyuint--uint)
- [mod\(uint) : uint](#moduint--uint)

### parseInt(string) : uint 

Convert string to unsigned integer

```javascript
function example() public view returns (uint) {
    return Integers.parseInt("99.00");
}
```

### toString() : uint

Convert unsigned integer to string

```javascript
function example(uint value) public view returns (string) {
    return value.toString();
}
```

### plus(uint) : uint

Plus unsigned integer

```javascript
function example() public view returns (uint) {
    uint myInt = 5;
    return myInt.plus(5);
}
```

### minus(uint) : uint

Minus unsigned integer

```javascript
function example() public view returns (string) {
    uint myInt = 5;
    return myInt.minus(5);
}
```

### divide(uint) : uint

Divide unsigned integer

```javascript
function example(uint value) public view returns (uint) {
    uint myInt = 5;
    return myInt.divide(5);
}
```

### multiply(uint) : uint

Multiply unsigned integer to string

```javascript
function example() public view returns (uint) {
    uint myInt = 5;
    return myInt.multiply(5);
}
```

### mod(uint) : uint

Modular unsigned integer

```javascript
function example() public view returns (string) {
    uint myInt = 500;
    return myInt.mod(6);
}
```