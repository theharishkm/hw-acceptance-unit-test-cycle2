Given /^the following movies exist:$/ do |movies_table|  
  # table is a Cucumber::MultilineArgument::DataTable
  # Write code here that turns the phrase above into concrete actions
  movies_table.hashes.each do |movie|
    Movie.create!(movie)
  end
end

Then /^the director of "(.*)" should be "(.*)"$/ do |movie_name, movie_director|
  # Write code here that turns the phrase above into concrete actions
  movie = Movie.find_by_title(movie_name)
  # visit movie_path(movie)
  expect(movie.director).to eq movie_director
end

Then /^I should see "(.*)" before "(.*)"$/ do |e1, e2|
#   keeps reporting "undefined method `+' for nil:NilClass (NoMethodError)", I don't know why
#   body = page.body
#   e1_index = body.index(e1)
#   e2_index = body.index(e2)
#   assert e1_index < e2_index
 if page.respond_to? :should
    page.body.should match /#{e1}.*#{e2}/m
  else
    # fails by reverse sorting
    assert(page.body.should match /#{e1}.*#{e2}/m, 'error')
  end
end