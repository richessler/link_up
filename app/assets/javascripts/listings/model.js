/*
* @Author: Richard Hessler
* @Date:   2014-07-12 16:09:43
* @Last Modified by:   Richard Hessler
* @Last Modified time: 2014-07-13 18:52:49
*/

var ListingModel = Backbone.Model.extend({

  defaults: {
    'id'          : 0,
    'title'       : '',
    'description' : '',
    'equity_min'  : 0,
    'equity_max'  : 0,
    'salary_min'  : 0,
    'salary_max'  : 0,
    'thumb_url'   : '',
    'company_url' : ''
  }
});

var ListingCollection = Backbone.Collection.extend({
  model: ListingModel,
  url: '/listings#index'
});

// var listingCollection = new ListingCollection();
