/*
* @Author: Richard Hessler
* @Date:   2014-07-13 02:03:10
* @Last Modified by:   richwardell
* @Last Modified time: 2014-07-29 19:01:23
*/

$(document).ready(function(){
  window.listingCollection.fetch().then(function() {
  var listingsView = new ListingsView({collection: listingCollection});
  listingsView.$el.appendTo(".row .listings");
  });
});


