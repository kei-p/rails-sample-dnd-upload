Dropzone.autoDiscover = false

$(document).on 'turbolinks:load', ->
  new Dropzone '#upload-dropzone',
    uploadMultiple: false
    paramName: 'upload[file]'
    init: ->
      @on 'success', (file, json) ->
        text = $("#input-form").val()
        $("#input-form").val(text + json.upload.title + "\n")
    dictDefaultMessage: '''
    <i class="fa fa-file-o fa-2x"></i><br>
    <br>
    ファイルをここにドロップするか<br>
    ここをクリックして下さい
    '''
    previewTemplate: '''
    <div class="dz-preview dz-file-preview">
      <div class="dz-progress"><span class="dz-upload" data-dz-uploadprogress></span></div>
    </div>
    '''
