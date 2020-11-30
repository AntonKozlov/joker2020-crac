public class Test {
    public static void main(String[] args) throws Exception {
        for (int i = 1; i <= 3; ++i) {
            System.out.println("Pre-compute something big " + i + "...");
            Thread.sleep(1_000);
        }
	jdk.crac.Core.checkpointRestore();
        System.out.println("Waiting for input");
        System.out.println("processing input: " + System.in.read());
    }
}
