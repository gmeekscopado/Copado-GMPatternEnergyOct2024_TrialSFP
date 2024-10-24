public class AccountUtility {
    public static void updateAccountFields(List<Account> accounts) {
        for (Account acc : accounts) {
            if (acc.Description == null) {
                acc.Description = 'Default description set by AccountUtility';
            }
            if (acc.Rating == null) {
                acc.Rating = 'Warm';
            }
        }
    }
}