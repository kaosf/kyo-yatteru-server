include ApplicationHelper

def sign_in(user)
  visit signin_path
    fill_in "Email", with:user.email.upcase
    fill_in "Password", with:user.password
    click_button "Sign in"

  #Capyvaraを使用していない場合にもサインインする
  cookies[:remember_token] = user.remember_token
end