var Router = Ember.Router.extend({
  // Uncomment to change Ember's router to use the 
  // HTML5 History API
  // Please note that not all browsers support this!
  // You will also need to uncomment the greedy route matcher
  // in config/routes.rb

  // location: 'history'
});

Router.map(function() {
  this.resource('people', function() {
    this.route('new');
    this.route('show', {path: ':person_id'});
    this.route('edit', {path: ':person_id/edit'});
  });
});

export default Router;
