$ ->
  Handlebars.registerHelper('niceDate', (d) ->
    moment(d).calendar()

  showArticles = ->
    $.ajax
      url: '/api/articles',
      type: 'GET',
      data: 'json',
      success: (data) ->
        source = $("#articles-template").html()
        template = Handlebars.compile(source)
      
        $('#output').html(template(data))
      error: (x,y,z) ->
        console.log(x,y,z)