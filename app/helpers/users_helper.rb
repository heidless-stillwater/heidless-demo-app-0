module UsersHelper

  def get_tst_usr()
    tst_usr = User.first_or_create!(email: 'test_usr00@test.com', password: 'password', password_confirmation: 'password')
    tst_usr
  end
  
end
