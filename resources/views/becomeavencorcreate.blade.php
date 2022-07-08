@extends('layouts.app')
@section('content')

@php
$data = DB::table('becomeavendor')->first();
// dd($data->url);
@endphp

<form class="form-horizontal" action="{{ route('pages.become') }}" method="POST" enctype="multipart/form-data">
    @csrf
    <div class="row">

<div class="col-sm-6" style="z-index: 99">
   <div class="panel">
      <div class="panel-heading">
         <h3 class="panel-title">{{__('Banner Section')}}</h3>
      </div>
      <!--Horizontal Form-->
      <!--===================================================-->

         <div class="panel-body">
            <div class="form-group">
               <label class="col-sm-3 control-label" for="banner">{{__('Banner image')}} <small>(1920x500)</small></label>
               <div class="col-sm-9">
                  <input type="file" id="image" name="image"  class="form-control">
               </div>
            </div>
            <div class="form-group">
               <label class="col-sm-3 control-label" for="name">{{__('Banner Main Heading')}}</label>
               <div class="col-sm-9">
                  <input type="text" placeholder="{{$data->h1}}" value="{{  $data->h1}}" id="h1" name="h1" class="form-control" required>
               </div>
            </div>



            <div class="form-group">
               <label class="col-sm-3 control-label" for="name">{{__('Banner Sub-Heading')}}</label>
               <div class="col-sm-9">
                  <input type="text"  placeholder="{{$data->h2}}" value="{{  $data->h2}}" id="h2" name="h2" class="form-control" required>
               </div>
            </div>
            <div class="form-group">
               <label class="col-sm-3 control-label" for="name">{{__('Banner Sub-Heading url')}}</label>
               <div class="col-sm-9">
                  <input type="text"  placeholder="{{$data->url}}" value="{{  $data->url}}" id="url" name="url" class="form-control" required>
               </div>
            </div>


            <div class="col-md-9" style="z-index: 99">
                <div class="panel">
                   <div class="panel-heading">
                      <h3 class="panel-title">{{__('About 2 Section')}}</h3>
                   </div>
                   <!--Horizontal Form-->
                   <!--===================================================-->

                      <div class="panel-body">



                         <div class="form-group">
                             <label class="col-sm-3 control-label" for="name">{{__('About Vendor Program')}}</label>
                             <div class="col-sm-9">
                                <input type="text" placeholder="{{$data->about2h}}" value="{{  $data->about2h}}" id="about2h" name="about2h" class="form-control" required>
                             </div>
                          </div>
                          <div class="form-group">
                             <label class="col-sm-3 control-label" for="name">{{__('About Vendor Sub heading')}}</label>
                             <div class="col-sm-9">
                                <input type="text"  placeholder="{{$data->about2}}" value="{{  $data->about2}}" id="about2" name="about2" class="form-control" required>
                             </div>
                          </div>
                          <div class="form-group">
                             <label class="col-sm-3 control-label" for="name">{{__('About Vendor Feature 1')}}</label>
                             <div class="col-sm-9">
                                <input type="text"  placeholder="{{$data->af1}}" value="{{  $data->af1}}" id="af1" name="af1" class="form-control" required>
                             </div>
                          </div>
                          <div class="form-group">
                            <label class="col-sm-3 control-label" for="name">{{__('About Vendor Feature sub 1')}}</label>
                            <div class="col-sm-9">
                               <input type="text"  placeholder="{{$data->afs1}}" value="{{  $data->afs1}}" id="afs1" name="afs1" class="form-control" required>
                            </div>
                         </div>
                          <div class="form-group">
                             <label class="col-sm-3 control-label" for="name">{{__('About Vendor Feature 2')}}</label>
                             <div class="col-sm-9">
                                <input type="text"  placeholder="{{$data->af2}}" value="{{  $data->af2}}" id="af2" name="af2" class="form-control" required>
                             </div>
                          </div>
                          <div class="form-group">
                            <label class="col-sm-3 control-label" for="name">{{__('About Vendor Feature sub 2')}}</label>
                            <div class="col-sm-9">
                               <input type="text"  placeholder="{{$data->afs2}}" value="{{  $data->afs2}}" id="afs2" name="afs2" class="form-control" required>
                            </div>
                         </div>
                          <div class="form-group">
                             <label class="col-sm-3 control-label" for="name">{{__('About Vendor Feature 3')}}</label>
                             <div class="col-sm-9">
                                <input type="text"  placeholder="{{$data->af3}}" value="{{  $data->af3}}" id="af3" name="af3" class="form-control" required>
                             </div>
                          </div>
                          <div class="form-group">
                            <label class="col-sm-3 control-label" for="name">{{__('About Vendor Feature sub 3')}}</label>
                            <div class="col-sm-9">
                               <input type="text"  placeholder="{{$data->afs3}}" value="{{  $data->afs3}}" id="afs3" name="afs3" class="form-control" required>
                            </div>
                         </div>
                          <div class="form-group">
                             <label class="col-sm-3 control-label" for="name">{{__('About Vendor Feature 4')}}</label>
                             <div class="col-sm-9">
                                <input type="text"  placeholder="{{$data->af4}}" value="{{  $data->af4}}" id="af4" name="af4" class="form-control" required>
                             </div>
                          </div>
                          <div class="form-group">
                            <label class="col-sm-3 control-label" for="name">{{__('About Vendor Feature sub 4')}}</label>
                            <div class="col-sm-9">
                               <input type="text"  placeholder="{{$data->afs4}}" value="{{  $data->afs4}}" id="afs4" name="afs4" class="form-control" required>
                            </div>
                         </div>
                          <div class="form-group">
                             <label class="col-sm-3 control-label" for="name">{{__('About Vendor Feature 5')}}</label>
                             <div class="col-sm-9">
                                <input type="text"  placeholder="{{$data->af5}}" value="{{  $data->af5}}" id="af5" name="af5" class="form-control" required>
                             </div>
                          </div>
                          <div class="form-group">
                            <label class="col-sm-3 control-label" for="name">{{__('About Vendor Feature sub 5')}}</label>
                            <div class="col-sm-9">
                               <input type="text"  placeholder="{{$data->afs5}}" value="{{  $data->afs5}}" id="afs5" name="afs5" class="form-control" required>
                            </div>
                         </div>
                          <div class="form-group">
                             <label class="col-sm-3 control-label" for="name">{{__('About Vendor Feature 6')}}</label>
                             <div class="col-sm-9">
                                <input type="text"  placeholder="{{$data->af6}}" value="{{  $data->af6}}" id="af6" name="af6" class="form-control" required>
                             </div>
                          </div>
                          <div class="form-group">
                             <label class="col-sm-3 control-label" for="name">{{__('About Vendor Feature sub 6')}}</label>
                             <div class="col-sm-9">
                                <input type="text"  placeholder="{{$data->afs6}}" value="{{  $data->afs6}}" id="afs6" name="afs6" class="form-control" required>
                             </div>
                          </div>









                      </div>
                   <!--===================================================-->
                   <!--End Horizontal Form-->
                </div>



             </div>

         </div>
      <!--===================================================-->
      <!--End Horizontal Form-->
   </div>



</div>




<div class="col-sm-6" style="z-index: 99">
    <div class="panel">
       <div class="panel-heading">
          <h3 class="panel-title">{{__('About 1 Section')}}</h3>
       </div>
       <!--Horizontal Form-->
       <!--===================================================-->

          <div class="panel-body">
            <div class="form-group">
                <label class="col-sm-3 control-label" for="name">{{__('about1')}}</label>
                <div class="col-sm-9">
                   <input type="text"  placeholder="{{$data->about1}}" value="{{  $data->about1}}" id="about1" name="about1" class="form-control" required>
                </div>
             </div>
             <div class="form-group">
                <label class="col-sm-3 control-label" for="name">{{__('f1text')}}</label>
                <div class="col-sm-9">
                   <input type="text"  placeholder="{{$data->f1text}}" value="{{  $data->f1text}}" id="f1text" name="f1text" class="form-control" required>
                </div>
             </div>
             <div class="form-group">
                <label class="col-sm-3 control-label" for="name">{{__('f1subtext')}}</label>
                <div class="col-sm-9">
                   <input type="text"  placeholder="{{$data->f1subtext}}" value="{{  $data->f1subtext}}" id="f1subtext" name="f1subtext" class="form-control" required>
                </div>
             </div>
             <div class="form-group">
                <label class="col-sm-3 control-label" for="name">{{__('f2text')}}</label>
                <div class="col-sm-9">
                   <input type="text"  placeholder="{{$data->f2text}}" value="{{  $data->f2text}}" id="f2text" name="f2text" class="form-control" required>
                </div>
             </div>
             <div class="form-group">
                <label class="col-sm-3 control-label" for="name">{{__('f2subtext')}}</label>
                <div class="col-sm-9">
                   <input type="text"  placeholder="{{$data->f2subtext}}" value="{{  $data->f2subtext}}" id="f2subtext" name="f2subtext" class="form-control" required>
                </div>
             </div>
             <div class="form-group">
                <label class="col-sm-3 control-label" for="name">{{__('f3text')}}</label>
                <div class="col-sm-9">
                   <input type="text"  placeholder="{{$data->f3text}}" value="{{  $data->f3text}}" id="f3text" name="f3text" class="form-control" required>
                </div>
             </div>
             <div class="form-group">
                <label class="col-sm-3 control-label" for="name">{{__('f3subtext')}}</label>
                <div class="col-sm-9">
                   <input type="text"  placeholder="{{$data->f3subtext}}" value="{{  $data->f3subtext}}" id="f3subtext" name="f3subtext" class="form-control" required>
                </div>
             </div>
             <div class="form-group">
                <label class="col-sm-3 control-label" for="name">{{__('f4text')}}</label>
                <div class="col-sm-9">
                   <input type="text"  placeholder="{{$data->f4text}}" value="{{  $data->f4text}}" id="f4text" name="f4text" class="form-control" required>
                </div>
             </div>
             <div class="form-group">
                <label class="col-sm-3 control-label" for="name">{{__('f4subtext')}}</label>
                <div class="col-sm-9">
                   <input type="text"  placeholder="{{$data->f4subtext}}" value="{{  $data->f4subtext}}" id="f4subtext" name="f4subtext" class="form-control" required>
                </div>
             </div>
          </div>
       <!--===================================================-->
       <!--End Horizontal Form-->
    </div>



 </div>









 <div class="panel-footer text-right">
    <button class="btn btn-purple" type="submit">{{__('Save')}}</button>
 </div>

</div>
</form>





@endsection

