pragma solidity ^0.4.16;

library Strings {

    function concat (string base, string value) public returns (string) {
        bytes memory _baseBtyes = bytes(base);
        bytes memory _valueBtyes = bytes(value);
        
        string memory _tmpValue = new string(_baseBtyes.length + _valueBtyes.length);
        bytes memory _newValue = bytes(_tmpValue);

        uint i;
        uint j;

        for (i = 0; i < _baseBtyes.length; i++) {
            _newValue[j++] = _baseBtyes[i]; 
        }
        for (i = 0; i < _valueBtyes.length; i++) {
            _newValue[j++] = _valueBtyes[i]; 
        }
        return string(_newValue);
    }

    function length (string base) public returns (uint) {
        bytes memory _bytes = bytes(base);
        return _bytes.length;
    }

    function replaceAll(string base, bytes1 oldstr, bytes1 newstr) public returns (string) {
        bytes memory _bytesBase = bytes(base);
        for (uint i = 0; i < _bytesBase.length; i++) {
            if (_bytesBase[i] == oldstr) {
                _bytesBase[i] = newstr;
            }
        }
        return string(_bytesBase);
    }

    function replace(string base, bytes1 oldstr, bytes1 newstr) public returns (string) {
        bytes memory _bytesBase = bytes(base);
        bool flag = false;
        for (uint i = 0; i < _bytesBase.length; i++) {
            if (_bytesBase[i] == oldstr && !flag) {
                _bytesBase[i] = newstr;
                flag = true;
            }
        }
        return string(_bytesBase);
    }
}