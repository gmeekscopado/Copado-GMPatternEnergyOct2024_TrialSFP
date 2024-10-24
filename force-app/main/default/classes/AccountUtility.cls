public class AccountUtility {
    public static void updateAccountFields(List<Account> accounts) {
        for (Account acc : accounts) {
            if (String.isBlank(acc.Description)) {
                acc.Description = 'Account description updated by AccountUtility';
            }
            if (acc.Rating == null) {
                acc.Rating = 'Cold';
            }
        }
    }
}