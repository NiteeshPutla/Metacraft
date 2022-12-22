// SPDX-License-Identifier: MIT
pragma solidity >=0.7.0 <0.9.0; //solidity version
contract Greatestnum{

    uint a;
    uint b;
    uint c;
    uint d;
    address admin;

    constructor(){
        admin = msg.sender;
    }

    modifier onlyAdmin { 
        require (admin == msg.sender, "only owner can access");
        _;
    }

    function set (uint _a, uint _b, uint _c, uint _d) public onlyAdmin{
        a = _a;
        b = _b;
        c = _c;
        d = _d;
    }

    function get() public view onlyAdmin returns(uint){
        if ((a > b) && (a > c) && (a > d)){
        return(a);
        }
        else if ((b >c ) && (b > d) && (b > a)){
            return(b);
        }
        else if ((c > d) && (c > a) && (c > b)){
            return(c);
        }
        else {
            return(d);
        }
    }
}
