require "application_system_test_case"

class QuestionsTest < ApplicationSystemTestCase
  test "visiting /ask renders the form" do
    visit ask_url
    assert_selector "p", text: "Ask your coach anything"
  end

  test "saying Hello yields a grumpy response from the coach" do
    visit ask_url
    fill_in "question", with: "Hello"
    click_on "ask"

    assert_text "I don't care, get dressed and go to work!"
  end

  test "sentence ending in a question mark will get coach angry" do
    visit ask_url
    fill_in "question", with: "test?"
    click_on "ask"

    assert_text "Silly question, get dressed and go to work!"
  end

  test "telling coach you're going to work makes him happy" do
    visit ask_url
    fill_in "question", with: "I am going to work"
    click_on "ask"

    assert_text "Great!"
  end
end

