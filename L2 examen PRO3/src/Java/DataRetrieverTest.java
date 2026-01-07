package Java;

import java.sql.SQLException;

public class DataRetrieverTest {
    private DataRetriever dr;

    public DataRetrieverTest() throws SQLException {
        dr = new DataRetriever();
    }

    public static void main(String[] args) {
        System.out.println("=== Starting DataRetrieverTest ===");
        try {
            DataRetrieverTest test = new DataRetrieverTest();
        } catch (SQLException e) {
            System.err.println("Failed to initialize DataRetriever: " + e.getMessage());
        }
        System.out.println("=== DataRetrieverTest Completed ===");
    }

}
