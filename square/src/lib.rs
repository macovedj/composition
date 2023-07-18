struct Component;

impl bindings::Example for Component {
    /// Say hello!
    fn raise(input: Vec<u32>) -> Vec<u32> {
      bindings::inc(&input).iter().map(|x| x * x).collect()
    }
}

bindings::export!(Component);
