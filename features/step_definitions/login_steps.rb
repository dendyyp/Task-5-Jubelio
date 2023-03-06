  Given ("User visit {string}") do |url|
    visit url
    expect(page).to(have_content('Login'))
    sleep 3
  end

  When("User fill email in login credential") do
    fill_in 'email', with:'qa.rakamin.jubelio@gmail.com'
  end

  And("User fill password in login credential") do
   fill_in 'password', with: 'Jubelio123!'
  end

  And('User click login button') do
    find("button[type='Submit']").click
    sleep 10
  end

  Then('User redirect to Jubelio dashboard') do
    expect(page).to(have_content('Selamat Datang'), wait: 10)
    find(:xpath, '//*[@class="metismenu nav"]', visible: true)
    expect(find(:xpath, '//*[@class="user-name dropdown"]'))
  end

  And(/^User should see title "([^"]*)" text$/) do |title|
    page.should have_content(title)
  end
