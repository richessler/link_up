/*
* @Author: Richard Hessler
* @Date:   2014-07-12 18:10:13
* @Last Modified by:   Richard Hessler
* @Last Modified time: 2014-07-14 17:14:17
*/

var ListingsView = Backbone.View.extend({
  tagName: "div",
  className: "col-lg-offset-3 col-lg-6",

  template: _.template( $("#job-listings-template").html() ),

  initialize: function(){
    this.listenTo(this.collection, 'sync add remove', this.render);
    this.render();
  },

  events: {
    'click button.destroy' : 'onRemove',
    'click button.keep'    : 'onKeep'
  },

  render: function () {
    var html = this.template({ collection: this.collection });
    return this.$el.html(html);
  },

  onRemove: function() {
    this.collection.at(0).destroy();
  },

  onKeep: function() {
    var newListing = this.collection.at(0).attributes;
    this.collection.create({
      listing_id  : newListing.listing_id,
      title       : newListing.title,
      description : newListing.description,
      equity_min  : newListing.equity_min,
      equity_max  : newListing.equity_max,
      salary_min  : newListing.salary_min,
      salary_max  : newListing.salary_max,
      thumb_url   : newListing.thumb_url,
      company_url : newListing.company_url
    });

    this.collection.at(0).destroy();
  }
});


