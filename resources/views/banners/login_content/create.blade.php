<div class="panel">
    <div class="panel-heading">
        <h3 class="panel-title">{{__('Content Information')}}</h3>
    </div>

    <!--Horizontal Form-->
    <!--===================================================-->
    <form class="form-horizontal" action="{{ route('login_content.store') }}" method="POST" enctype="multipart/form-data">
        @csrf
        <div class="panel-body">
            <div class="form-group">
                <label class="col-sm-3" for="url">{{__('URL')}}</label>
                <div class="col-sm-9">
                    <input type="text" placeholder="{{__('URL')}}" id="url" name="url" class="form-control" required>
                </div>
            </div>
          <div class="form-group">
                <label class="col-sm-3" for="url">{{__('Header')}}</label>
                <div class="col-sm-9">
                    <input type="text" placeholder="{{__('Header')}}" id="head" name="head" class="form-control" required>
                </div>
            </div>
            <div class="form-group">
                <label class="col-sm-3" for="url">{{__('Sub Header')}}</label>
                <div class="col-sm-9">
                    <input type="text" placeholder="{{__('Sub Header')}}" id="subheader" name="subheader" class="form-control" required>
                </div>
            </div>
          <div class="form-group">
                <label class="col-sm-3" for="url">{{__('Body')}}</label>
                <div class="col-sm-9">
                    <textarea type="text" placeholder="{{__('Body')}}" id="body" name="body" class="form-control" rows="6" cols="50" required></textarea>
                </div>
            </div>
            <input type="hidden" name="position" value="{{ $position }}">
            {{-- <div class="form-group">
                <label class="col-sm-3" for="url">{{__('Banner Position')}}</label>
                <div class="col-sm-9">
                    <select class="form-control demo-select2" name="position" required>
                        <option value="1">{{__('Banner Position 1')}}</option>
                        <option value="2">{{__('Banner Position 2')}}</option>
                    </select>
                </div>
            </div> --}}
            <div class="form-group">
                <div class="col-sm-3">
                    <label class="control-label">{{__('Banner Images')}}</label>
                    <strong>(850px*420px)</strong>
                </div>
                <div class="col-sm-9">
                    <div id="photo">

                    </div>
                </div>
            </div>
        </div>
        <div class="panel-footer text-right">
            <button class="btn btn-purple" type="submit">{{__('Save')}}</button>
        </div>
    </form>
    <!--===================================================-->
    <!--End Horizontal Form-->

</div>

<script type="text/javascript">

    $(document).ready(function(){

        $('.demo-select2').select2();

        $("#photo").spartanMultiImagePicker({
            fieldName:        'photo',
            maxCount:         1,
            rowHeight:        '200px',
            groupClassName:   'col-md-4 col-sm-9 col-xs-6',
            maxFileSize:      '',
            dropFileLabel : "Drop Here",
            onExtensionErr : function(index, file){
                console.log(index, file,  'extension err');
                alert('Please only input png or jpg type file')
            },
            onSizeErr : function(index, file){
                console.log(index, file,  'file size too big');
                alert('File size too big');
            }
        });
    });

</script>
