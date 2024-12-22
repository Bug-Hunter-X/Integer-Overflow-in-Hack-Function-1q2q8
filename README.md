# Integer Overflow Bug in Hack

This repository demonstrates a subtle integer overflow bug in a simple Hack program. The `baz` function, through the composition of `foo` and `bar`, can produce incorrect results if the input exceeds a certain threshold. The solution shows how to mitigate this issue using type checking or other techniques.