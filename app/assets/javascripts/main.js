/*
* @Author: Richard Hessler
* @Date:   2014-07-13 02:03:10
* @Last Modified by:   Richard Hessler
* @Last Modified time: 2014-07-13 16:16:01
*/

$(document).ready(function(){

    window.listingCollection.fetch().then(function() {
    var listingsView = new ListingsView({collection: listingCollection});
    listingsView.$el.appendTo(".col-lg-6");
  });
});
