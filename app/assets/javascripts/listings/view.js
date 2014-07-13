/*
* @Author: Richard Hessler
* @Date:   2014-07-12 18:10:13
* @Last Modified by:   Richard Hessler
* @Last Modified time: 2014-07-13 16:49:28
*/

var ListingsView = Backbone.View.extend({
  tagName: "div",
  className: "col-lg-6",

  template: _.template( $("#job-listings-template").html() ),

  initialize: function(){
    this.listenTo(this.collection, 'sync add remove', this.render);
    this.render();
  },

  render: function () {
    this.remove();
    var html = this.template({ collection: this.collection });
    return this.$el.html(html);
  }
});
