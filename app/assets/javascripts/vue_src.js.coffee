$ ->
  new Vue(
    el: "#games"
    data:
      tags: []
    methods:
      setTag: (tag) ->
        this.tags += ", #{tag}"
 )
