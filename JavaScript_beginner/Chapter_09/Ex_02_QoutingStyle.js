let string = `
He told me that 'get lost' bu't I didn't care and replied 'It's none of your business'
`

console.log(string.replace(/(^|\W)'|'(\W|$)/g, '$1"$2'));

