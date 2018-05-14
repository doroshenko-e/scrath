
jQuery ->
  subcategories = undefined
  $('#listing_subcategory_id').parent().hide()
  subcategories = $('#listing_subcategory_id').html()
  console.log subcategories
  $('#listing_category_id').change ->
    category = undefined
    escaped_category = undefined
    options = undefined
    category = $('#listing_category_id :selected').text()
    escaped_category = category.replace(/([ #;&,.+*~\':"!^$[\]()=>|\/@])/g, '\\$1')
    options = $(subcategories).filter('optgroup[label=' + escaped_category + ']').html()
    console.log options
    if options
      $('#listing_subcategory_id').html options
      $('#listing_subcategory_id').parent().show()
    else
      $('#listing_subcategory_id').empty()
      $('#listing_subcategory_id').parent().hide()
