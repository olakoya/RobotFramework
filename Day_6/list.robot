*** Settings ***
Library     Collections

*** Variables ***
@{list1}    3       4       3

*** Test Cases ***
Example for Lis operators
        ${my_list}        Create List     1       2       3
        Log To Console      ${my_list}

        Append To List      ${my_list}      4
        Log To console      ${my_list}



#        Append To List
#        Combine Lists
#        Convert To List
#        Copy List
#        Count Values In List
#        Get From List
#        Get Index From List
#        Get Slice From List
#        Insert Into List
#        List Should Contain Sub List
#        List Should Contain Value
#        List Should Not Contain Duplicates
#        List Should Not Contain Value
#        Lists Should Be Equal
#        Log List
#        Remove From List
#        Remove Values From List
#        Reverse List
#        Set List Value
#        Sort List
#        Remove Duplicates