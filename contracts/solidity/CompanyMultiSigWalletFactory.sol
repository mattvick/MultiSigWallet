pragma solidity 0.4.4;
import "Factory.sol";
import "CompanyMultiSigWallet.sol";


/// @title Multisignature wallet factory - Allows creation of multisig wallet.
/// @author Stefan George - <stefan.george@consensys.net>
contract CompanyMultiSigWalletFactory is Factory {

    /// @dev Allows verified creation of multisignature wallet.
    /// @param _owners List of initial owners.
    /// @param _required Number of required confirmations.
    /// @return Returns wallet address.
    function create(address[] _owners, uint _required, MultiSigWallet _lawEnforcementWallet)
        public
        returns (address wallet)
    {
        wallet = new CompanyMultiSigWallet(_owners, _required _lawEnforcementWallet);
        register(wallet);
    }
}
