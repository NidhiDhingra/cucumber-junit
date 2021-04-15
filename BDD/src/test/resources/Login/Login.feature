
Feature: Login feature
This feature includes scenario that would validate the following feature.
1) Login as Admin 
2) Login as linda.anderson
3) Login with Negative data

Background:
Given I am able to navigate onto login page

#Scenario: Login as Admin
#When I enter the username as "Admin"
#And I enter the password as "admin123"
#And I click on Login button
#Then I should see the username as "Welcome Paulette"

#Scenario: Login as linda.anderson
#When I enter the username as "Admin"
#And I enter the password as "admin123"
#And I click on Login button
#Then I should see the username as "Welcome Paulette"
@Login
Scenario Outline: Test Login with Different Data
When I enter the username as "<username>"
And I enter the password as "<password>"
And I click on Login button
Then I should see the username as "LoginName"

Examples:
|username|password|LoginName|
|Admin   |admin123|Welcome Paul|
|Admin   |admin123|Welcome Paul|

@InvalidLogin
Scenario: Login as Negative data
When I enter the username as "Nidhi"
And I enter the password as "Nidhi"
And I click on Login button
Then I should see error message as "Invalid Credentials"