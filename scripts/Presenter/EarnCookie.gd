class_name EarnCookie

var domain: CookieClicker

func EarnCookie(domain: CookieClicker):
	self.domain = domain

func execute():
	domain.earn_cookie()
