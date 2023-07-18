(component
  (core module $numbers
    (func (export "add") (param i32 i32) (result i32)
      local.get 1
      local.get 1
      i32.add 
    )
  )
  (interface "foo")
)
 