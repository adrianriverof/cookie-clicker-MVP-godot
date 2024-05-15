extends GutTest
class_name EarnCookieTest

func test_EarnCookies():
	var domain = CookieClicker.new()
	var sut = EarnCookie.new()
	sut.execute()
	
	assert_eq(1, domain.get_cookies())
	
