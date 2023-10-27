// If you use non-ASCII characters in your JavaScript programs, you must be aware that
// Unicode allows more than one way of encoding the same character. The string “é,” for
// example, can be encoded as the single Unicode character \u00E9 or as a regular
// ASCII “e” followed by the acute accent combining mark \u0301. These two encodings
// typically look exactly the same when displayed by a text editor, but they have different
// binary encodings, meaning that they are considered different by JavaScript, which
// can lead to very confusing programs:
const café = 1; // This constant is named "caf\u{e9}"
const café = 2; // This constant is different: "cafe\u{301}"

console.log(café)
console.log(café)
