import Masonry from 'masonry-layout';

if( $('.grid').length > 0 ) {

	var grid = new Masonry( '.grid', {
		itemSelector: '.grid-item'
	});

}