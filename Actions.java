
public enum Actions implements ActionSpec {
    SKIP {
        public int run(String d) {
            return 0;
        }
    };
}
