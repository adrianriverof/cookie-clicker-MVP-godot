
class_name CookieClickerTest
extends GutTest


func test_zero_cookies_on_start():
	
	var sut = CookieClicker.new()
	assert_eq(0, sut.get_cookies()) 

func test_earn_cookie():
	var sut = CookieClicker.new()
	sut.earn_cookie()
	assert_eq(1, sut.get_cookies())

func test_earn_more_than_one_cookie():
	var sut = CookieClicker.new()
	sut.earn_cookie()
	sut.earn_cookie()
	sut.earn_cookie()
	assert_eq(3, sut.get_cookies())







