<?php

namespace App\Http\Controllers;
use App\LoginContent;
use Illuminate\Http\Request;

class LoginContentController extends Controller
{
    public function create($position)
    {

      return view('banners.login_content.create',compact('position'));
    }
  
  	public function store(Request $request)
  	{
      if($request->hasFile('photo')){
            $banner = new LoginContent;
            $banner->photo = $request->photo->store('uploads/banners');
            $banner->url = $request->url;
        	$banner->head = $request->head;
        	$banner->subheader = $request->subheader;
        	$banner->body = $request->body;
            $banner->position = $request->position;
            $banner->save();
            flash(__('Content has been inserted successfully'))->success();
        }
        return redirect()->route('home_settings.index');
  	}
  	
  	public function edit($id)
  	{
      $banner = LoginContent::findOrFail($id);
      return view('banners.login_content.edit',compact('banner'));
  	}
  
  	public function update(Request $request, $id)
    {
        $banner = LoginContent::find($id);
        $banner->photo = $request->photo;
        if($request->hasFile('photo')){
            $banner->photo = $request->photo->store('uploads/banners');
        }
       $banner->url = $request->url;
      $banner->head = $request->head;
       $banner->subheader = $request->subheader;
       $banner->body = $request->body;
        $banner->save();
        flash(__('Content has been updated successfully'))->success();
        return redirect()->route('home_settings.index');
    }
   public function update_status(Request $request)
    {
        $banner = LoginContent::find($request->id);
        $banner->published = $request->status;
        if($request->status == 1){
            if(count(LoginContent::where('published', 1)->where('position', $banner->position)->get()) < 4)
            {
                if($banner->save()){
                    return '1';
                }
                else {
                    return '0';
                }
            }
        }
        else{
            if($banner->save()){
                return '1';
            }
            else {
                return '0';
            }
        }

        return '0';
    }
  	public function destroy($id)
    {
      $banner = LoginContent::findOrFail($id);
        if(LoginContent::destroy($id)){
            //unlink($banner->photo);
            flash(__('Content has been deleted successfully'))->success();
        }
        else{
            flash(__('Something went wrong'))->error();
        }
        return redirect()->route('home_settings.index');
    }
    
}
