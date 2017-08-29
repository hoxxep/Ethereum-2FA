pragma solidity ^0.4.13;


/// Use an ethereum address as proof of 2FA instead of a phone number.
contract TwoFactorAuth {
    string public url;
    string public service;

    event Authenticated(address _user);

    function TwoFactorAuth(string _url, string _service) {
        url = _url;
        service = _service;
    }

    function () external {
        Authenticated(msg.sender);
    }

    function authenticate() {
        Authenticated(msg.sender);
    }
}
