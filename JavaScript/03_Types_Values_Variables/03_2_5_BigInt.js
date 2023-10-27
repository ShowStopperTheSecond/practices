// BigInt literals are written as a string of digits followed by a lowercase letter n. By
// default, the are in base 10, but you can use the 0b, 0o, and 0x prefixes for binary, octal,
// and hexadecimal BigInts:

1234n
0b111111n
0o7777n
0x8000000000000000n

console.log(2000n)

let y = 200
let x = BigInt(y)

console.log(x, y)



// Although the standard +, -, *, /, %, and ** operators work with BigInt, it is important
// to understand that you may not mix operands of type BigInt with regular number
// operands. This may seem confusing at first, but there is a good reason for it. If one
// numeric type was more general than the other, it would be easy to define arithmetic
// on mixed operands to simply return a value of the more general type. But neither
// type is more general than the other: BigInt can represent extraordinarily large values,
// making it more general than regular numbers. But BigInt can only represent integers,
// making the regular JavaScript number type more general. There is no way around
// this problem, so JavaScript sidesteps it by simply not allowing mixed operands to the
// arithmetic operators.



// Comparison operators, by contrast, do work with mixed numeric types (but see
//     §3.9.1 for more about the difference between == and ===):


1 < 2n
2 > 1n
0 == 0n
0 === 0n


