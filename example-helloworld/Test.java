public class Test {
    public static void main(String[] args) throws Exception {
        for (int i = 1; i <= 3; ++i) {
            System.out.println("Pre-compute something big " + i + "...");
            Thread.sleep(1_000);
        }

        System.out.println("Waiting for input");
	int c = System.in.read();
        System.out.println("processing input: " + c);
    }
}
