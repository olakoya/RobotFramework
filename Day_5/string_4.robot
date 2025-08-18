*** Settings ***
Library     String

*** Test Cases ***
Example for Format and Random String Generation
    ${formatted_string}     Format String       Hello {name}! Your Age Is {age}     name=John       age=67
    Log To Console      ${formatted_string}

    ${random_string}     Generate Random String
    Log To Console      ${random_string}

    ${random_string}     Generate Random String     chars='[LOWER]'
    Log To Console      ${random_string}

    ${random_string}     Generate Random String     chars='[UPPER]'
    Log To Console      ${random_string}

    ${random_string}     Generate Random String     chars='[NUMBERS]'
    Log To Console      ${random_string}