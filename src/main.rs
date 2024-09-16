fn main() {
    extern crate run_shell;
    use run_shell::cmd;

    // Run command by cmd! macro
    cmd!("./shell-scripts/pull.sh").run().unwrap();
}
