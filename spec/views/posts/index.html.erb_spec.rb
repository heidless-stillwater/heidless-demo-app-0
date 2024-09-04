require 'rails_helper'

include UsersHelper

RSpec.describe "posts/index", type: :view do
  this_usr = get_tst_usr
  before(:each) do
    assign(:posts, [
      Post.create!(
        title: "Title",
        content: "MyText",
        user: this_usr,
        views: 14
      ),
      Post.create!(
        title: "Title",
        content: "MyText",
        user: this_usr,
        views: 22
      )
    ])
  end

  it "renders a list of posts" do
    
    render

    # cell_selector = 'tr>td'

    cell_selector = 'div#post_entry'

    assert_select cell_selector, text: Regexp.new("Title".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("MyText".to_s), count: 2
    assert_select cell_selector, text: Regexp.new(this_usr.id.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(14.to_s), count: 1
    assert_select cell_selector, text: Regexp.new(22.to_s), count: 1
  end
end
