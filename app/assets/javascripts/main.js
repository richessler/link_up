/*
* @Author: Richard Hessler
* @Date:   2014-07-13 02:03:10
* @Last Modified by:   Richard Hessler
* @Last Modified time: 2014-07-14 00:16:32
*/

// var listingsView;
// var listingCollection;
$(document).ready(function(){
  window.listingCollection.fetch().then(function() {
  var listingsView = new ListingsView({collection: listingCollection});
  listingsView.$el.appendTo(".row .listings");
  });

  // var listingCollection = new ListingCollection();
  // var listingsView = new ListingsView( { collection: listingCollection } );
  // listingCollection.fetch();
});


