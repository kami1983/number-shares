// SPDX-License-Identifier: MIT

pragma solidity ^0.7.4;


import '@openzeppelin/contracts/access/Ownable.sol';


/**
 * @dev A simple mock ProxyRegistry for use in local tests with minimal security
 */
contract MockProxyRegistry is Ownable {
  mapping(address => address) public proxies;


  /***********************************|
  |  Public Configuration Functions   |
  |__________________________________*/

  /**
  
   * @param _address           The address that the proxy will act on behalf of
   * @param _proxyForAddress  The proxy that will act on behalf of the address
   */
  function setProxy(address _address, address _proxyForAddress)
      external
      onlyOwner()
  {
      proxies[_address] = _proxyForAddress;
  }
}
