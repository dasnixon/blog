# For more information see: http://emberjs.com/guides/routing/

App.Router.map ->
  @resource('posts', () ->
    @route('new')
  )
  @resource('post', { path: '/posts/:id' }, ->
    @route('edit')
  )
