*** Settings ***
Library     Collections

*** Variables ***
@{list1}    3       4       3

*** Test Cases ***
Example for Lis operators
        ${my_list}        Create List     1       2       3     4       5
#        Log To Console      ${my_list}
#
#        Append To List      ${my_list}      4
#        Log To console      ${my_list}

#        ${combined_list}        Combine Lists       ${my_list}      ${list1}
#        Log To Console      ${combined_list}

#        ${Converted_list}       Convert To List     John
#        Log To Console      ${Converted_list}
#
#        ${Copied_list}      Copy List       ${list1}
#        Log To Console      ${Copied_list}
#
#        ${count}        Count Values In List        ${list1}        3
#        Log To Console      ${count}
#
#        ${item}      Get From List       ${list1}       1
#         Log To Console      ${item}
#
#        ${index}     Get Index From List     ${list1}        3
#        Log To Console      ${index}
#
#        ${slice}     Get Slice From List     ${my_list}      1       4
#        Log To Console      ${slice}
#        Log To Console      ${my_list}
#        Insert Into List      ${my_list}      2       10
#        Log To Console      ${my_list}

#        ${sublist}      Create List     14       13
#        List Should Contain Sub List        ${my_list}      ${sublist}


#        List Should Contain Value       ${my_list}      13

#        List Should Not Contain Duplicates          ${my_list}

#        List Should Not Contain Value       ${my_list}      3

        ${my_list1}        Create List     1       2       3     4       5
        Lists Should Be Equal       ${my_list}      ${my_list1}


#        Log List
#        Remove From List
#        Remove Values From List
#        Reverse List
#        Set List Value
#        Sort List
#        Remove Duplicates