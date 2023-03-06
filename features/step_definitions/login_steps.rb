  Given ("User visit {string}") do |url|
    visit url
    expect(page).to(have_content('Login'))
    sleep 3
  end
  
  # When('I click Sign In') do
  #   click_on "Login Ke Portal", wait: 15
  #   expect(find('div.text-block').text).to eql("Selamat datang di Portal Usaha Youtap")
  #   sleep 5
  # end
  
  # When("User fill {string} in email field") do |email|
  #   expect(find(:xpath, "//*[@name='email']").set(email))
  # end

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

  And(/^login has been "([^"]*)/) do |state|
  case state
    when 'success'
    expect(page).to(have_content('Grafik Penjualan'), wait: 10)
    when 'unsuccessful'
    expect(page).to(have_content('Username atau Password tidak sesuai'), wait: 10, visible: true)
    sleep 5
    end
    sleep 5 
  end
