// "SPDX-License-Identifier: UNLICENSED"
pragma solidity >=0.7.0 <0.9.0;
import "hardhat/console.sol";
import "remix_tests.sol";
import "../contracts/MyFirstContract.sol";

contract MyFirstContractTest {
    MyFirstContract contractToTest;

    function beforeAll() public {
        contractToTest = new MyFirstContract();
    }

    function checkLoan() public {
        console.log("Running checkLoan positive scenario");
        Assert.equal(
            contractToTest.loan(),
            true,
            "loan makes true, bcs value is positive"
        );
    }

    function withdrawTest() public {
        console.log("Running withdraw positive scenario");
        contractToTest.withdraw(1);

        Assert.equal(
            contractToTest.balance(),
            9,
            "withdraw has to be 9, bcs 10 - 1 = 9."
        );
    }   
}
