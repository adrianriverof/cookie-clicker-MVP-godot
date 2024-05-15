extends Node
class_name CookiesButtonAndCounter

var domain: CookieClicker
var presenter: EarnCookie


func _ready():
	domain = CookieClicker.new()
	presenter = EarnCookie.new()
	presenter.EarnCookie(domain, self)
	$Button.connect("pressed", self, "on_button_pressed")


func on_button_pressed():
	presenter.execute()

func update_counter(cookies):
	$Button.text = str(cookies)
