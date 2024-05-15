class_name EarnCookie

var domain: CookieClicker
var outputCounter

func EarnCookie(domain_in: CookieClicker, output = null):
	self.domain = domain_in
	self.outputCounter = output

func execute():
	domain.earn_cookie()
	
