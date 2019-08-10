require "rails_helper"

RSpec.feature "사용자가 링크를 클릭" do
  scenario "사용자들은 제출한 링크의 페이지를 본다." do
    link_title = "오늘회바로가기"
    link_url = "https://onul-hoi.co.kr"
    visit root_path
    click_on "바로가기"
    fill_in "link_title", with: link_title
    fill_in "link_url", with: link_url
    click_on "제출!"
    expect(page).to have_link link_title, href: link_url
  end
end