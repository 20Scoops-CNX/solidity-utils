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

