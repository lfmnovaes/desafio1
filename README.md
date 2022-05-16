# Challenge Plathanus/Tabas (Exercise 1)

> Option 1: Write a program to convert a natural number to its Roman number equivalent. See https://en.wikipedia.org/wiki/Roman_numerals for the rules concerning the construction of Roman numbers using Roman numerals.

> Option 2: Write a program that expects an integer as input and outputs the integer in word form. For example: 0 = zero; 1 = one; 21 = twenty one; 105 = one hundred and five; 1317 = one thousand, three hundred and seventeen

> Option 3: Write a module that implements a simple RPN calculator, without using 'eval'. The implementation should evaluate expressions provided in Reverse Polish (Postfix) Notation. For example: 11+3\*2 3\*=12; 212+\*=6;<br>The module should at a minimum implement addition, subtraction, multiplication and division and should round answers to three decimal places using the following rule: If the value of the digit in the fourth decimal place is less than 5, then truncate the result after the third decimal place.<br> If the digit in the fourth decimal place is 5 or greater, then round up; Provide a client for the implementation that solicits multi-line user input at a prompt and uses the implementation to evaluate expressions. The user should be able to split the expression over a number of lines, with the final result displayed only when the user enters a line ending with ‘=’.

## Built With

Ruby >= 3.0.0

## Getting Started

- To get a local copy of the repository please run the following commands on your terminal:
   ```
   git clone https://github.com/lfmnovaes/desafio1.git
   ```
- Go to the cloned directory with `cd desafio1`
- Run `ruby optionX.rb`, which X is a number >= 1 and <= 3

## Testing
- Using Test Unit Assertions
``` 
ruby test_optionX.rb
```

## Authors

👤 **Luís Fernando**

- GitHub: [![@lfmnovaes](https://img.shields.io/github/followers/lfmnovaes?color=lightgray&style=plastic&labelColor=blue)](https://github.com/lfmnovaes)
- Twitter: [![@lfmnovaes](https://img.shields.io/twitter/follow/lfmnovaes?style=plastic&labelColor=blue)](https://www.twitter.com/lfmnovaes/)
- LinkedIn: [![@lfmnovaes](https://img.shields.io/badge/LinkedIn-blue?style=plastic&logo=linkedin)](https://www.linkedin.com/in/lfmnovaes/)

## 🤝 Contributing

Contributions, issues, and feature requests are welcome!

Feel free to check the [issues page](../../issues/).

## Show your support

Give a ⭐️ if you like this project!

## 📝 License

This project is [MIT](./LICENSE) licensed.
