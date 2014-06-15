App.Post = DS.Model.extend
  title:        DS.attr('string')
  body:         DS.attr('string')
  times_viewed: DS.attr('number')
  created_at:   DS.attr('date')
