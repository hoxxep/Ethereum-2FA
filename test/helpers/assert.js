/**
 * This function is used to load chai-as-promised instead of the default chai provided by
 * truffle which doesn't have the promise assertions.
 */
const chai = require("chai");
const chaiAsPromised = require("chai-as-promised");
chai.use(chaiAsPromised);

// set assert and expect in global scope
assert = chai.assert;
expect = chai.expect;

// backup export assert
module.exports = chai.assert;
