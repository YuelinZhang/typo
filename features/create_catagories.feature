Feature: Create or Edit Category
  As an admin
  I want to be able to add categories to my blog

  Background:
    Given the blog is set up
    And I am logged into the admin panel

  Scenario: Successfully create and edit categories
    Given I am on the new category page
    When I fill in "category_name" with "test1"
    And I fill in "category_keywords" with "keywords1"
    And I fill in "category_permalink" with "link1"
    And I fill in "category_description" with "description1"
    And I press "Save"
    Then I should see "test1"
    Then I should see "keywords1"
    Then I should see "link1"
    Then I should see "description1"

    Then I follow "test1"
    And I fill in "category_name" with "test2"
    And I fill in "category_keywords" with "keywords2"
    And I fill in "category_permalink" with "link2"
    And I fill in "category_description" with "description2"
    And I press "Save"
    Then I should see "test2"
    And I should see "keywords"
    And I should see "link2"
    And I should see "description2"
    And I should not see "test1"
