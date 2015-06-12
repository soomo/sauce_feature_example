# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

$ ->
	$('#test-click').on "click", ->
		$form = $(@).closest('form').first()
		$form.bind 'ajax:success', (event, data) ->
			$results = $('.results')
			$results.show()
			$results.append("<h3>#{data['status']}</h3>")
			$results.append("<p>#{data['hello_text']}</p>")
