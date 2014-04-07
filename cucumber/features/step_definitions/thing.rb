Given /^no things$/ do
end

When /^I ask for Pencil$/ do
    visit('/')
#    fill_in 'Name', with: 'Pencil'
end

Then /^I get nothing$/ do
    # alternative: expect 'search status' element to have 'not found' class
    expect(page).to have_content("I couldn't get this for you.")
end
