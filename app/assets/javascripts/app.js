(function(){

	var app = angular.module('store', []);

	app.controller('StoreController', function(){
		this.products = gems;

	});

	app.controller("PanelController", function(){
		this.tab = 1;

		this.selectTab = function(setTab) {
			this.tab = setTab;
		};

		this.isSelected = function(checkTab){
			return this.tab === checkTab;
		};
	});


	var gems = [

	{
		name: 'Dodecahedron',
		price: 2.95,
		description: 'Some gems have hidden qualities beyond their luster, beyond their shine...Dodeca is one of those gems.',
		canPurchase: true,
		soldOut: false,
		images: [
			{
				full: 'dodecahedron-01-full.jpg',
				thumb:'dodecahedron-01-thumb.jpg'

			},
			{
				full: 'dodecahedron-02-full.jpg',
				thumb:'dodecahedron-02-thumb.jpg'

			}
		]
	},
	{
		name: 'Pentagonal Gem',
		price: 5.95,
		description: 'Some gems have hidden qualities beyond their luster, beyond their shine...Pentagonal is one of those gems.',
		canPurchase: false,
		soldOut: false,
	}

	];

})();

