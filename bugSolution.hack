```hack
function foo(x: int): int {
  if (x > 2147483647 - 1) { // Check for potential overflow in foo
    throw new Exception("Integer overflow in foo");
  }
  return x + 1;
}

function bar(x: int): int {
  //Check for potential overflow in bar
  if ( (x + 1) > 2147483647 / 2) {
    throw new Exception("Integer overflow in bar");
  }
  return foo(x) * 2;
}

function baz(x: int): int {
  //Check for potential overflow in baz
  if ( (x + 1) * 2 - 1 > 2147483647) {
    throw new Exception("Integer overflow in baz");
  }
  return bar(x) - 1;
}

function main(): void {
  echo baz(5);
}
```