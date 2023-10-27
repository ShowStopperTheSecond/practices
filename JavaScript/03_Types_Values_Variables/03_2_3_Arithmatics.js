// JavaScript programs work with numbers using the arithmetic operators . that the lan‐
// guage provides. These include + for addition, - for subtraction, * for multiplication, /
// for division, and % for modulo (remainder after division). ES2016 adds ** for expo‐
// nentiation. Full details on these and other operators can be found in Chapter 4.
// In addition to these basic arithmetic operators, JavaScript supports more complex
// mathematical operations through a set of functions and constants defined as proper‐
// ties of the Math object:

Math.pow(2,53)
Math.round(.6)
Math.ceil(.6)
Math.floor(.6)
Math.abs(-5)
Math.max(x,y,z)
Math.min(x,y,z)
Math.random()
Math.PI
Math.E
Math.sqrt(3)
Math.pow(3, 1/3)
Math.sin(0)
Math.log(10)
Math.log(100)/Math.LN10
Math.log(512)/Math.LN2
Math.exp(3)



// ES6 defines more functions on the Math object:
Math.cbrt(27)
// => 3: cube root
Math.hypot(3, 4) // => 5: square root of sum of squares of all arguments
Math.log10(100) // => 2: Base-10 logarithm
Math.log2(1024) // => 10: Base-2 logarithm
Math.log1p(x)
// Natural log of (1+x); accurate for very small x
Math.expm1(x)
// Math.exp(x)-1; the inverse of Math.log1p()
Math.sign(x)
// -1, 0, or 1 for arguments <, ==, or > 0
Math.imul(2,3)
// => 6: optimized multiplication of 32-bit integers
Math.clz32(0xf) // => 28: number of leading zero bits in a 32-bit integer
Math.trunc(3.9) // => 3: convert to an integer by truncating fractional part
Math.fround(x)
// Round to nearest 32-bit float number
Math.sinh(x)
// Hyperbolic sine. Also Math.cosh(), Math.tanh()
Math.asinh(x)
// Hyperbolic arcsine. Also Math.acosh(), Math.atanh()

// Arithmetic in JavaScript does not raise errors in cases of overflow, underflow, or divi‐
// sion by zero. When the result of a numeric operation is larger than the largest repre‐
// sentable number (overflow), the result is a special infinity value, Infinity. Similarly,
// when the absolute value of a negative value becomes larger than the absolute value of
// the largest representable negative number, the result is negative infinity, -Infinity.
// The infinite values behave as you would expect: adding, subtracting, multiplying, or
// dividing them by anything results in an infinite value (possibly with the sign
// reversed)


// Underflow occurs when the result of a numeric operation is closer to zero than the
// smallest representable number. In this case, JavaScript returns 0. If underflow occurs
// from a negative number, JavaScript returns a special value known as “negative zero.”
// This value is almost completely indistinguishable from regular zero and JavaScript
// programmers rarely need to detect it.



// Division by zero is not an error in JavaScript: it simply returns infinity or negative
// infinity. There is one exception, however: zero divided by zero does not have a well-
// defined value, and the result of this operation is the special not-a-number value, NaN.
// NaN also arises if you attempt to divide infinity by infinity, take the square root of a
// negative number, or use arithmetic operators with non-numeric operands that cannot
// be converted to numbers.

// JavaScript predefines global constants Infinity and NaN to hold the positive infinity
// and not-a-number value, and these values are also available as properties of the
// Number object:



console.log(Number.POSITIVE_INFINITY)

// The following Number properties are defined in ES6
Number.parseInt()
// Same as the global parseInt() function
Number.parseFloat()
// Same as the global parseFloat() function
Number.isNaN(x)
// Is x the NaN value?
Number.isFinite(x)
// Is x a number and finite?
Number.isInteger(x)
// Is x an integer?
Number.isSafeInteger(x) // Is x an integer -(2**53) < x < 2**53?
Number.MIN_SAFE_INTEGER // => -(2**53 - 1)
Number.MAX_SAFE_INTEGER // => 2**53 - 1
Number.EPSILON
// => 2**-52: smallest difference between numbers



// The not-a-number value has one unusual feature in JavaScript: it does not compare
// equal to any other value, including itself. This means that you can’t write x === NaN
// to determine whether the value of a variable x is NaN. Instead, you must write x != x
// or Number.isNaN(x).
