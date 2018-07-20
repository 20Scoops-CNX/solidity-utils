pragma solidity ^0.4.16;

library Integer {

    function parseInt(string _value) public returns (uint) {
        bytes memory _bytesValue = bytes(_value);
        uint j = 1;
        uint result = 0;
        for(uint i = _bytesValue.length-1; i >= 0 && i < _bytesValue.length; i--) {
            result += (uint(_bytesValue[i]) - 48)*j;
            j*=10;
        }
        return result;
    }

    function toString(uint _value) public returns (string) {
        bytes memory _tmp = new bytes(32);
        uint i;
        uint tempValue = _value;
        for(i = 0; tempValue > 0;i++) {
            _tmp[i] = byte((tempValue % 10) + 48);
            tempValue /= 10;
        }
        bytes memory _real = new bytes(i--);
        for(uint j = 0; j < _real.length; j++) {
            _real[j] = _tmp[i--];
        }
        return string(_real);
    }
}