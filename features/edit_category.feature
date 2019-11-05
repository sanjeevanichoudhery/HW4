Feature: Edit Category
  As a blog administrator
  In order to organize blogs
  I want to be edit the category


  Background:
    Given the blog is set up
    And I am logged into the admin panel

#checking that the categories page actually loads
  Scenario:Successfully see the category page
    When I follow "Categories"
    Then I should see "Categories"
    
  Scenario: Successfully see the edit page if title clicked on
    When I follow "Categories"
    And I follow "General"
    Then I should see "General"
    
  Scenario: Successfully the save button should reload
    When I follow "Categories"
    And I follow "General"
    And I fill in "category_description" with "testing"
    And I press "Save"
    Then I should see "testing"
    
    
  Scenario: Successfully create new category
    When I follow "Categories"
    And I fill in "Name" with "Demo"
    And I fill in "category_description" with "testing"
    And I press "Save"
    Then I should see "Demo"