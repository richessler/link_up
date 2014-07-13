/*
* @Author: Richard Hessler
* @Date:   2014-07-13 02:03:10
* @Last Modified by:   Richard Hessler
* @Last Modified time: 2014-07-13 02:29:53
*/

$(document).ready(function(){
    var listingsCollection = new ListingCollection();
    var listingsView = new ListingsView( { collection: listingsCollection } );
    listingsCollection.fetch();
});
