// Some computer hardware and software cannot display, input, or correctly process the
// full set of Unicode characters. To support programmers and systems using older tech‐
// nology, JavaScript defines escape sequences that allow us to write Unicode characters
// using only ASCII characters. These Unicode escapes begin with the characters \u and
// are either followed by exactly four hexadecimal digits (using uppercase or lowercase
// letters A–F) or by one to six hexadecimal digits enclosed within curly braces. These
// Unicode escapes may appear in JavaScript string literals, regular expression literals,
// and identifiers (but not in language keywords). The Unicode escape for the character
// “é,” for example, is \u00E9; here are three different ways to write a variable name that
// includes this character:




let \u00f1 = "WTF is going on here"
console.log(\u00f1)

 \u{f1} = "The identifier has changed :) "

 console.log(\u{f1})
