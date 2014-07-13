/*
* @Author: Richard Hessler
* @Date:   2014-07-13 02:03:10
* @Last Modified by:   Richard Hessler
* @Last Modified time: 2014-07-13 19:05:27
*/

$(document).ready(function(){
  var listingCollection = new ListingCollection();
  var listingsView = new ListingsView( { collection: listingCollection } );
  listingCollection.fetch();

  // window.listingCollection.fetch().then(function() {
  // var listingsView = new ListingsView({collection: listingCollection});
  // listingsView.$el.appendTo(".col-lg-6");
  // });
});
