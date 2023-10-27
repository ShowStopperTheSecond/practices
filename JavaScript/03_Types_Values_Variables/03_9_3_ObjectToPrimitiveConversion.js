// Object-to-boolean conversions
// Object-to-boolean conversions are trivial: all objects convert to true. Notice that this
// conversion does not require the use of the object-to-primitive algorithms described,
// and that it literally applies to all objects, including empty arrays and even the wrapper
// object new Boolean(false).


console.log(!!Date())


// Object-to-string conversions
// When an object needs to be converted to a string, JavaScript first converts it to a
// primitive using the prefer-string algorithm, then converts the resulting primitive value
// to a string, if necessary, following the rules in Table 3-2.
// This kind of conversion happens, for example, if you pass an object to a built-in func‐
// tion that expects a string argument, if you call String() as a conversion function, and
// when you interpolate objects into template literals (§3.3.4).

console.log(Date())



// The + operator in JavaScript performs numeric addition and string concatenation. If
// either of its operands is an object, JavaScript converts them to primitive values using
// the no-preference algorithm. Once it has two primitive values, it checks their types. If
// either argument is a string, it converts the other to a string and concatenates the
// strings. Otherwise, it converts both arguments to numbers and adds them.






// The == and != operators perform equality and inequality testing in a loose way that
// allows type conversions. If one operand is an object and the other is a primitive value,
// these operators convert the object to primitive using the no-preference algorithm and
// then compare the two primitive values.



// The toString() and valueOf() methods
// All objects inherit two conversion methods that are used by object-to-primitive con‐
// versions, and before we can explain the prefer-string, prefer-number, and no-preference
// conversion algorithms, we have to explain these two methods.


console.log(Date().toString())


// The other object conversion function is called valueOf(). The job of this method is
// less well defined: it is supposed to convert an object to a primitive value that repre‐
// sents the object, if any such primitive value exists. Objects are compound values, and
// most objects cannot really be represented by a single primitive value, so the default
// valueOf() method simply returns the object itself rather than returning a primitive.


let d = new Date()

console.log(d.valueOf())


console.log(Date().valueOf())




console.log(Number([1, 2, 3, 4, ]))