/* data - toggle="table" data - pagination="true" data - page - size="8" data - show - footer="false" */

//remover os detalhes
$(function () {
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