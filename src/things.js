Things = (function () {	
	var me = function Things(text) {
		if(false === (this instanceof Things)) {
			return new Things();
		}
		
		// private stuff 

		var _count = 0;

		this.internalText = function() {
			return text;
		}
		
		this.internalCount = function() {
			return _count;
		}
	}
	
	// public stuff

	me.prototype.getCount = function() {
		return this.internalCount();
	};
	
	me.prototype.getText = function() {
		return this.internalText();
	}
	
	return me;
}());
