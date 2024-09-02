require 'rails_helper'

include PostsHelper

RSpec.describe Post, type: :model do

  it 'has a title' do
    post = Post.new(
      title: '',
      content: 'a valid body',
      user: get_tst_usr,
      views: 0
    )
    expect(post).to_not be_valid

    post.title = 'a valid title'
    expect(post).to be_valid
  end

  it 'has content' do
    post = Post.new(
      title: 'a valid title',
      content: '',
      user: get_tst_usr,
      views: 0
    )
    expect(post).to_not be_valid

    post.content = 'valid content here'
    expect(post).to be_valid
  end

  it 'has a title at least 2 chars long' do
    post = Post.new(
      title: '1',
      content: 'a valid body',
      user: get_tst_usr,
      views: 0
    )
    expect(post).to_not be_valid

    post.title = '12'
    expect(post).to be_valid 
  end

  it 'has content at least 5 chars long' do
    post = Post.new(
      title: 'a valid title',
      content: '1',
      user: get_tst_usr,
      views: 0
    )
    expect(post).to_not be_valid

    post.content = '12345'
    expect(post).to be_valid
  end
  
  it 'has content at most 100 chars long' do
    str_100 = 'YlV4U6DPRpI17Zr3TM0LBa91Yt5l4a71tQfpzNMjHWdPqV8bBVyKsSvfYEhKORhkUtQtl37ldlcSZGCJTCL1eevGaUH4HfTVjW3m'
    str_101 = 'bZIYtnf1YBzczSTNr9vLGrVMekS2Yi9mC3lftBlDfmNllJ1YOpJvQv1OT46qli2IbMesAurhBDoDqZKJKVfnm9rbXCMle8k8FK04o'

    post = Post.new(
      title: 'a valid title',
      content: str_101,
      user: get_tst_usr,
      views: 0
    )
    expect(post).to_not be_valid

    post.content = str_100
    expect(post).to be_valid
  end
  
  it 'has numerical views' do
    post = Post.new(
      title: 'a valid title',
      content: 'valid content here',
      user: get_tst_usr,
      views: 0
    )
    expect(post.views).to be_a(Integer)

  end


end
