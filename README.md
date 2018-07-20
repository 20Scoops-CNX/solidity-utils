# Solidity Utils

We want to improve solidity basic skill also we create a basic library for learning and practice you can see how to use below:

```javascript
pragma solidity ^0.4.16;

import "github.com/20Scoops-CNX/solidity-utils/ListInteger.sol";

import
"github.com/20Scoops-CNX/solidity-utils/String.sol";

import "github.com/20Scoops-CNX/solidity-utils/Integer.sol";

contract ExampleContract {
    List.Items private items;
    using Strings for string;
    using Integers for uint;
}
```