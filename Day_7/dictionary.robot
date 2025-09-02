*** Settings ***
Library     Collections


*** Variables ***
&{dict1}        key1=value1     key2=value2


*** Test Cases ***
Example for Handling Dictionaries in RobotFramework
    ${items}        Create List     ${{"key1","value1"}}        ${{"key2","value2"}}
    ${my_dict}      Convert To Dictionary       ${items}
    Log To Console      ${my_dict}

    ${copied_dictionary}        Copy Dictionary     ${my_dict}
    Log To Console      ${copied_dictionary}

    Dictionaries Should Be Equal        ${dict1}            ${my_dict}

    Dictionary Should Contain Item      ${dict1}     key1       value1

    Dictionary Should Contain Key       ${dict1}        key1

    ${sub_dict}     Create Dictionary       key1=value1

    Dictionary Should Contain Sub Dictionary        ${dict1}        ${sub_dict}

    Dictionary Should Contain Value     ${dict1}        value1

    Dictionary Should Not Contain Key        ${dict1}        key3

    Dictionary Should Not Contain Value      ${dict1}        value3

    Log To Console      Run Keyword And Return      Get Dictionary Items        ${dict1}

#    Log To Console      Run Keyword And Return      Get Dictionary Keys     ${dict1}
#
#    Log To Console      Run Keyword And Return      Get Dictionary Values       ${dict1}

    ${keys}     Get Dictionary Keys     ${dict1}
    Log To Console      ${Keys}

    ${values}       Get Dictionary Values       ${dict1}
    Log To Console      ${values}

    ${value}       Get Dictionary Values       ${dict1}     key1
    Log To Console      ${value}


#    Keep In Dictionary

#    Log Dictionary

#    Pop From Dictionary

#    Remove From Dictionary

#    Set To Dictionary
