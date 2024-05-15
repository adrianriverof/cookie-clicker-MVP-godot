extends GutTest
class_name EarnCookieTest





func test_EarnCookies():
	var domain = CookieClicker.new()
	var sut = EarnCookie.new()
	sut.EarnCookie(domain, MockOutputCounter.new())
	
	sut.execute()
	
	assert_eq(1, domain.get_cookies())
	
func test_signal_to_CookieCounter():
	var domain = CookieClicker.new()
	var sut = EarnCookie.new()
	var outputCouter = MockOutputCounter.new()
	sut.EarnCookie(domain, outputCouter)
	sut.execute()
	assert_eq(1, outputCouter.displayed_cookies)
	
func test_displaying_two_cookies():
	var domain = CookieClicker.new()
	var sut = EarnCookie.new()
	var outputCouter = MockOutputCounter.new()
	sut.EarnCookie(domain, outputCouter)
	sut.execute()
	sut.execute()
	assert_eq(2, outputCouter.displayed_cookies)
