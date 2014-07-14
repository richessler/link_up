/*
* @Author: Richard Hessler
* @Date:   2014-07-12 18:10:13
* @Last Modified by:   Richard Hessler
* @Last Modified time: 2014-07-14 00:18:47
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
    'click span' : 'onRemove'
  },

  render: function () {
    var html = this.template({ collection: this.collection });
    return this.$el.html(html);
  },

  onRemove: function() {
    debugger;
    this.collection.at(0).destroy();
  }
});


