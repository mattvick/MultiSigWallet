pragma solidity 0.4.4;

import "MultiSigWallet.sol";

/// @title Multisignature wallet - Allows multiple parties to agree on transactions before execution.
/// @author Stefan George - <stefan.george@consensys.net>
contract CompanyMultiSigWallet is MultiSigWallet {

    MultiSigWallet public lawEnforcementWallet;

    /*
     * Public functions
     */
    /// @dev Contract constructor sets initial owners and required number of confirmations.
    /// @param _owners List of initial owners.
    /// @param _required Number of required confirmations.
    function CompanyMultiSigWallet(
        address[] _owners, 
        uint _required, 
        MultiSigWallet _lawEnforcementWallet
    )
        public
    {
        super.MultiSigWallet(_owners, _required);
        lawEnforcementWallet = _lawEnforcementWallet;
    }
}
