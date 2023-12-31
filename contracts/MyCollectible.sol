// SPDX-License-Identifier: MIT

pragma solidity ^0.7.4;

import "./ERC1155Tradable.sol";

/**
 * @title MyCollectible
 * MyCollectible - a contract for my semi-fungible tokens.
 */
contract MyCollectible is ERC1155Tradable {
  constructor(address _proxyRegistryAddress)
  ERC1155Tradable(
    "MyCollectible",
    "MCB",
    _proxyRegistryAddress
  ) {
    _setBaseMetadataURI("https://creatures-api.opensea.io/api/creature/");
  }

  function contractURI() public pure returns (string memory) {
    return "https://creatures-api.opensea.io/contract/opensea-erc1155";
  }
}
