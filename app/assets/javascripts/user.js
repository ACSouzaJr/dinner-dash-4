//remover os detalhes
$(document).on('turbolinks:load', function () {
  $('#table').bootstrapTable({
    pagination: true,
    pageSize: 8,
    classes: 'table-no-bordered',
    formatRecordsPerPage: function () {
      return ''
    },
    formatShowingRows: function () {
      return ''
    }
  })
});