export default Ember.Route.extend({
  model: function(params) {
    return this.store.find('person', params.person_id);
  },
  actions: {
    destroyRecord: function(model) {
      var _this = this;
      model.destroyRecord().then(function() {
        _this.transitionTo('people.index');
      });
    }
  }
});
