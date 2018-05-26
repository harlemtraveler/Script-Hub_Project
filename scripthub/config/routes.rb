Rails.application.routes.draw do
  resource :users
  resource :scripts
  # The views are managd in the React app within src/App.js file
  # Change all instances of 'users' or 'scripts' to desired environmental variable
end
