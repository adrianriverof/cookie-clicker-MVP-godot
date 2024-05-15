
class_name CookieClickerTest
extends GutTest


func test_zero_cookies_on_start():
	
	var sut = CookieClicker.new()
	assert_eq(0, sut.get_cookies()) 

