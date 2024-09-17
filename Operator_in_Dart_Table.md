# Dart Bitwise Operators:

| OPERATOR | MEANING           | EXAMPLE   | RESULT                                    |
|----------|-------------------|-----------|-------------------------------------------|
| &        | Binary AND        | (A & B)   | Returns 12 for 0000 1100                  |
| \|       | Binary OR         | (A \| B)  | Returns 12 for 0000 1100                  |
| ^        | Binary XOR        | (A ^ B)   | Returns 49 for 0011 0001                  |
| ~        | Ones Complement   | (~A)      | Returns 60 for 1100 0011                  |
| <<       | Shift Left        | A << 2    | Returns 240 for 1111 0000                 |
| >>       | Shift Right       | A >> 2    | Returns 15 for 0000 1111                  |

# Dart Type Operators:

| OPERATOR | MEANING                             | EXAMPLE                  | RESULT                              |
|----------|-------------------------------------|--------------------------|-------------------------------------|
| as       | Type Cast                           | `var x = obj as String;` | Casts `obj` to `String` type        |
| is       | Checks if the object is of a type   | `x is String`            | Returns true if `x` is a `String`   |
| is!      | Checks if the object is not of a type | `x is! String`          | Returns true if `x` is not a `String` |

# Dart Logical Operators:

| OPERATOR | NAME | DESCRIPTION                                     |
|----------|------|-------------------------------------------------|
| &&       | and  | Returns true if all expressions are true       |
| \|\|     | or   | Returns true if any of the expressions is true |
| !        | not  | Returns the negation of the expression          |
