# Q0: Why is this error being thrown?
No Pokemon model.

# Q1: How are the random Pokemon appearing? What is the common factor between all the possible Pokemon that appear? *
.sample method ; they are all trainer-less

# Question 2a: What does the following line in the help text do? Be specific about what "capture_path(id: @pokemon)" is doing. If you're having trouble, look at the Help section in the README.
<%= button_to "Throw a Pokeball!", capture_path(id: @pokemon), :class => "button medium", :method => :patch %>
This line creates a button that redirects to the capture_path defined in the routes file which takes in the pokemon id as a param the method is patch so it updates a current pokemon in the database

# Question 3: What would you name your own Pokemon?
Yobo

# Question 4: What did you pass into the redirect_to? If it is a path, what did that path need? If it is not a path, why is it okay not to have a path here?
:back because its a method of redirect_to which goes back to the page you were just before submitting

# Question 5: Explain how putting this line "flash[:error] = @pokemon.errors.full_messages.to_sentence" shows error messages on your form.
adds all the errors into the hash, flash, for the new function in the Pokemon controller which gets displayed through the code on the application.html.erb layout

# Give us feedback on the project and decal below!
FUN PROJECT. I loved how it was POKEMON themed. So awesome. I really learned a lot too. Really liked how we were able to create a whole website which implemented everything we've learned so far.

# Extra credit: Link your Heroku deployed app
https://fierce-harbor-9458.herokuapp.com/