//remover os detalhes
$(document).on('turbolinks:load', function () {
  $('.ctable').bootstrapTable({
    pagination: true,
    pageSize: 8,
    classes: 'table table-hover table-no-bordered',
    formatRecordsPerPage: function () {
      return ''
    },
    formatShowingRows: function () {
      return ''
    }
  })
});