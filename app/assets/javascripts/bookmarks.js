// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

$(document).ready(function() {
  var $grid = $('.grid').isotope({
    itemSelector: '.grid-item',
    percentPosition: true,
    layoutMode: 'masonry',
    getSortData: {
      name: function(itemElem) {
        return $(itemElem).find('.card-title').text().toUpperCase();
      }
    }
  });

  $('.sort-by-button-group').on('click', 'button', function() {
    var sortValue = $(this).attr('data-sort-value');
    var layoutModeAttr = $(this).attr('layout-mode');
    $grid.isotope({ sortBy: sortValue, layoutMode: layoutModeAttr });
  });

  $('.button-group').each(function(i, buttonGroup) {
    var $buttonGroup = $(buttonGroup);
    $buttonGroup.on('click', 'button', function() {
      $buttonGroup.find('.is-checked').removeClass('is-checked');
      $(this).addClass('is-checked');
    });
  });

  $('.filters-button-group').on('click', 'button', function() {
    var filterValue = $(this).attr('data-filter');
    $grid.isotope({ filter: filterValue });
  });

  $('.button-group').each( function(i, buttonGroup) {
    var $buttonGroup = $( buttonGroup );
    $buttonGroup.on('click', 'button', function() {
      $buttonGroup.find('.is-checked').removeClass('is-checked');
      $(this).addClass('is-checked');
    });
  });
})
