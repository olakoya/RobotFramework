*** Settings ***
Library  String

*** Variables ***
${string}   Learning, Python, Is, Very Easy!!!
${multi_line_string}    Line 1: Learning Python Is Very Easy!!!\nLine 2: Python Is Awesome\nLine 3: Python Is Great!!!
${pattern}      *   # Matches all words in the string
${regexp_pattern}       [a-z]+  # Matches one or more lowercase letters (a to z)


*** Test Cases ***
Demonstrate String Extraction and Substring Operations
    ${left}     Fetch From Left     ${string}       marker=,
    Log To Console      ${left}

    ${right}     Fetch From Right     ${string}       marker=,
    Log To Console      ${right}

    ${line}     Get Line        ${multi_line_string}    1
    Log To Console      ${line}

    ${line}     Get Line        ${multi_line_string}    2
    Log To Console      ${line}

    ${line_couint}     Get Line Count        ${multi_line_string}
    Log To Console      ${line_couint}

    ${lines_contain}     Get Lines Containing String        ${multi_line_string}    Python
    Log To Console      ${lines_contain}
