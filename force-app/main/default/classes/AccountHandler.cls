public class AccountHandler {

    public static Account insertNewAccount( String accName ) {
        try {
            Account newAccount = new Account();
            newAccount.Name = accName;
            insert newAccount;
        } catch (DmlException e) {
            System.debug('A DML exception occured ' + e.getMessage());
        }
        Account queriedAccount = [ SELECT Name 
                                FROM Account 
                                WHERE Name = :accName
                                LIMIT 1 ];
        return queriedAccount;
    }
}
