struct Component;

impl bindings::Example for Component {
    /// Say hello!
    fn increment(input: Vec<u32>) -> Vec<u32> {
      input.iter().map(|x| x + 1).collect()
    }
}

bindings::export!(Component);
