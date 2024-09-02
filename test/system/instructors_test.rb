# frozen_string_literal: true

require 'application_system_test_case'

class InstructorsTest < ApplicationSystemTestCase
  setup do
    @instructor = instructors(:one)
  end

  test 'visiting the index' do
    visit instructors_url
    assert_selector 'h1', text: 'Instructors'
  end

  test 'creating a Instructor' do
    visit instructors_url
    click_on 'New Instructor'

    fill_in 'Cpf', with: @instructor.cpf
    fill_in 'Date of birth', with: @instructor.date_of_birth
    fill_in 'Email', with: @instructor.email
    fill_in 'Name', with: @instructor.name
    fill_in 'Phone', with: @instructor.phone
    fill_in 'String', with: @instructor.string
    fill_in 'Subject', with: @instructor.subject
    click_on 'Create Instructor'

    assert_text 'Instructor was successfully created'
    click_on 'Back'
  end

  test 'updating a Instructor' do
    visit instructors_url
    click_on 'Edit', match: :first

    fill_in 'Cpf', with: @instructor.cpf
    fill_in 'Date of birth', with: @instructor.date_of_birth
    fill_in 'Email', with: @instructor.email
    fill_in 'Name', with: @instructor.name
    fill_in 'Phone', with: @instructor.phone
    fill_in 'String', with: @instructor.string
    fill_in 'Subject', with: @instructor.subject
    click_on 'Update Instructor'

    assert_text 'Instructor was successfully updated'
    click_on 'Back'
  end

  test 'destroying a Instructor' do
    visit instructors_url
    page.accept_confirm do
      click_on 'Destroy', match: :first
    end

    assert_text 'Instructor was successfully destroyed'
  end
end
