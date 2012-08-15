test("constructor argument", function() {
	var things = new Things('text passed in to the constructor');
	equal(things.getText(), 'text passed in to the constructor');
});

test("count", function() {
	var things = new Things();
	equal(things.getCount(), 0);
});
