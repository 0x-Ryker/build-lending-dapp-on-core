// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract CoreLoanPlatform is Ownable {
    using SafeERC20 for IERC20;

    IERC20 public immutable USD;
    IERC20 public immutable BTC;

    uint256 public constant COLLATERAL_RATIO = 150; // 150% collateralization
    uint256 public constant BORROWABLE_RATIO = 80; // 80% of collateral can be borrowed
    uint256 public constant INTEREST_RATE = 5; // 5% interest rate
    uint256 public constant LOAN_DURATION = 30 days;
    uint256 private constant SECONDS_IN_A_DAY = 86400;

    uint256 private totalStaked = 0; //Counter for total staked
    uint256 private totalBorrowed = 0; //Counter for total borrowed

    struct Loan {
        uint256 amount;
        uint256 collateral;
        uint256 timestamp;
        bool active;
    }

    mapping(address => Loan) public loans;
    mapping(address => uint256) public userCollateral;
    mapping(address => uint256) public lenderBalances;

    event LoanTaken(address indexed borrower, uint256 amount, uint256 collateral);
    event LoanRepaid(address indexed borrower, uint256 amount, uint256 interest);
    event CollateralDeposited(address indexed user, uint256 amount);
    event CollateralWithdrawn(address indexed user, uint256 amount);
    event BTCDeposited(address indexed lender, uint256 amount);
    event BTCWithdrawn(address indexed lender, uint256 amount);

    // Add Constructor here

    function depositCollateral(uint256 amount) external  {
      // TODO : Implement Logic for deposting Collateral
    }

    function withdrawCollateral(uint256 amount) external  {
      // TODO : Implement Logic for withdrawing Collateral
    }

    function getBorrowableAmount(address user) external view returns (uint256) {
      // TODO : Implement Logic for fetching borrowable amount
    }

    function getUserCollateral(address user) external view returns (uint256) {
      // TODO : Implement Logic for fetching user's collateral amount
    }

    function borrowBTC(uint256 amount) external  {
      // TODO : Implement Logic for borrowing BTC
    }

    function repayLoan(address user) external  {
      // TODO : Implement Logic for repaying Loan
    }

    function depositBTC(uint256 amount) external  {
      // TODO : Implement Logic for deposting BTC
    }

    function withdrawBTC(uint256 amount) external  {
      // TODO : Implement Logic for withdrawing BTC
    }

    function calculateInterest(address user) external view returns (uint256) {
      // TODO : Implement Logic for calculating interest
    }

    function getLoanDetails(address borrower) external view returns (Loan memory) {
      // TODO : Implement Logic for fetching loan of specific borrower
    }

    function getLenderBalance(address lender) external view returns (uint256) {
      // TODO : Implement Logic for getting the Lender balance
    }

    function getTotalStaked() external view returns (uint256) {
      // TODO : Implement Logic for fetching total staked amount
    }

    function getTotalBorrowed() external view returns (uint256) {
      // TODO : Implement Logic for fetching total borrowed amount
    }

    function getCurrentApy() external pure returns (uint256) {
      // TODO : Implement Logic for fetching current APY
    }

    function getUserBorrowed(address user) external view returns (uint256) {
      // TODO : Implement Logic for fetching a User's borrowed amount
    }

    function getUserStaked(address user) external view returns (uint256) {
      // TODO : Implement Logic for fetching a User's Staked amount
    }
}