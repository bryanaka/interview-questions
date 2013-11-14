Credit Card Validation: Ruby
===============================================================================

Source: Start Up in San Francisco Bay Area (Temporarily Redacted)

You will be given a file containing a JSON encoded array of credit
card numbers. For each credit card number, you will need to do two
tests: validity and identification.

Validity
-------------------------------------------------------------------------------

To test the validity of a credit card number, you can use the Luhn
algorithm. In short, this is:

1. Reverse the order of the digits in the number.
2. Sum every odd digit counting from one.
3. For each even digit counting from one:

    - Multiply the digit by two
    - Sum the digits of the product (eg. 5: 5, 10: 1 + 0 = 1, 14: 1 + 4 = 5)

4. Add the results from step two and three together

If the result of step 4 ends in a zero, then the number is valid.

As an example, let's assume that one of the input numbers is
378282246310005. To walk through the solution:

1. Reversing the input produces: 500013642282873
2. The sum of every odd digit is: 5 + 0 + 1 + 6 + 2 + 8 + 8 + 3 = 33
3. Multiplying each even digit by two produces: 0, 0, 6, 8, 4, 4, 14
4. Summing these produces: 0 + 0 + 6 + 8 + 4 + 4 + 5 = 27

The total is then the sum of step 2 and step 4: 33 + 27 = 60. Since 60
ends in a 0, this is a valid number.

Identity
-------------------------------------------------------------------------------

To return the identity of the issuing credit card company, you can
look at the first digit. The key for this is:

3: amex
4: visa
5: mastercard
6: discover

Any other digits should be identified as unknown.

### Input

Sample input:

`[ "322222222222222", "4111111111111111", "5000000000000000", "6011000990139424" ]`

### Output

Sample output:

    [ { "valid": false, "type": "amex" }, { "valid": true, "type": "visa"
    }, { "valid": false, "type": "mastercard" }, { "valid": true, "type":
    "discover" } ]

Attached are two separate files containing the input for your script.

Things to note:
-------------------------------------------------------------------------------

- You must be able to handle an empty input.
- Output is standard JSON. Don't worry about pretty printing the output.
- Use STDOUT to return a result. In javascript this is console.log.

