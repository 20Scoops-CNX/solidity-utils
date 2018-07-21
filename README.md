# Solidity Utils

We want to improve solidity basic skill and we also create a basic library for learning and practice. You can see how to use as below:

```javascript
pragma solidity ^0.4.16;

import "github.com/20Scoops-CNX/solidity-utils/lib/ListInteger.sol";

import "github.com/20Scoops-CNX/solidity-utils/lib/String.sol";

import "github.com/20Scoops-CNX/solidity-utils/lib/Integer.sol";

contract ExampleContract {
    List.Items private items;
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

# Strings
- [concat\(string\)](#concatstring)
- [length\() : uint](#length--uint)
- [replaceAll\(bytes1, bytes1) : string](#replaceAllbytes1-btyes1--string)
- [replace\(bytes1, bytes1) : string](#replacebytes1-bytes1--string)
- [compareTo\(string) : string](#eqaul--string)

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

### compareTo(string) : uint

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