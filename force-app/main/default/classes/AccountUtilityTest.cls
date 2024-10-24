@IsTest
private class AccountUtilityTest {
    @IsTest
    static void testUpdateAccountFields() {
        List<Account> accounts = new List<Account>{
            new Account(Name = 'Test Account 1'),
            new Account(Name = 'Test Account 2', Description = 'Existing description', Rating = 'Hot')
        };
        
        Test.startTest();
        AccountUtility.updateAccountFields(accounts);
        Test.stopTest();
        
        System.assertEquals('Account description updated by AccountUtility', accounts[0].Description, 'Description should be set for account without existing description');
        System.assertEquals('Existing description', accounts[1].Description, 'Existing description should not be changed');
        System.assertEquals('Cold', accounts[0].Rating, 'Rating should be set to Cold for account without existing rating');
        System.assertEquals('Hot', accounts[1].Rating, 'Existing rating should not be changed');
    }
}