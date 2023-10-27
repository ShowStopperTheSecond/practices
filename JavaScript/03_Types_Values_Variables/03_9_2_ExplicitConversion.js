x = Boolean("what the heck ")
console.log(x, typeof(x))

x = 23432 + ""
console.log(x, typeof(x))


x = "2039480293" - 0
console.log(x , typeof(x))



let n = 17;
let binary = "0b" + n.toString(2);
let octal = "0o" + n.toString(8);
let hex = "0x" + n.toString(16);

console.log(binary, octal, hex)



n = 123456.789;

console.log(n.toFixed(0))

console.log(n.toFixed(2))

console.log(n.toFixed(5))

console.log(n.toExponential(1))

console.log(n.toExponential(3))

console.log(n.toPrecision(4))

console.log(n.toPrecision(7))

console.log(n.toPrecision(10))




parseInt("3 blind mice")
parseFloat(" 3.14 meters")
parseInt("-12.34")
parseInt("0xFF")
parseInt("0xff")
parseInt("-0XFF")
parseFloat(".1")
parseInt("0.1")
parseInt(".1")
parseFloat("$72.47")



parseInt("11", 2)
parseInt("ff", 16)
parseInt("zz", 36)
parseInt("077", 8)
parseInt("077", 10)


