/*
* @Author: Richard Hessler
* @Date:   2014-07-12 16:09:43
* @Last Modified by:   Richard Hessler
* @Last Modified time: 2014-07-13 14:20:26
*/

var ListingModel = Backbone.Model.extend({

  defaults:{
    'id'          : 0,
    'title'       : '',
    'description' : '',
    'equityMin'   : 0,
    'equityMax'   : 0,
    'salaryMin'   : 0,
    'salaryMax'   : 0,
    'thumbUrl'    : '',
    'companyUrl'  : ''
  }
});

var ListingCollection = Backbone.Collection.extend({
  model: ListingModel,
  url: '/listings'
});

