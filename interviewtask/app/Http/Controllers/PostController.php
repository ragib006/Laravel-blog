<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Post;
//use App\Http\Controllers\Auth;

//use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;

class PostController extends Controller
{
    


public function createpost(Request $request){


$post = new Post();
    $post->post_title = $request->input('post_title');
    $post->post_description = $request->input('post_description');
     $post->post_date = $request->input('post_date');
    $post->post_author = Auth::user()->name;

    // Handle the image upload
    if ($request->hasFile('post_image')) {
        $image = $request->file('post_image');
        $imageName = time() . '.' . $image->getClientOriginalExtension();
        $image->move(public_path('image'), $imageName);
        $post->post_image = $imageName;
    } 

    // Save the new post
    $post->save();

    // Redirect to the dashboard or any other route
    return redirect()->route('dashboard');

}



public function mydashboard(){



	$name=Auth::user()->name;

	//return $name;

	//return $data;

$posts = Post::where(['post_author'=>$name])->get();


return view('dashboard', compact('posts'));

}


public function filterdata(Request $request){

 $date = $request->query('date');

    // Build the query
    $query = Post::query();

    $name=Auth::user()->name;

    // Apply date filtering if the date parameter is provided
    if ($date) {
        $query->whereDate('post_date', $date);

    }

      $query->where('post_author', $name);

    // Get the filtered or unfiltered list of posts
    $posts = $query->get();

    // Pass the posts and filter parameter to the view
    return view('dashboard', compact('posts', 'date'));



}





public function postunactive($id){

   
    Post::where(['id'=>$id])->update(['post_status'=> 0]);
return redirect('dashboard');


}




public function postactive($id){


    Post::where(['id'=>$id])->update(['post_status'=> 1]);
return redirect('dashboard');


}




public function singlepost($id){


 $post = Post::where(['id'=>$id])->first();

  return view('singlepost', compact('post'));



}


public function editpost($id){


 $post = Post::where(['id'=>$id])->first();

  return view('editpost', compact('post'));


}




public function updatepost(Request $request, $id){


 $post = Post::findOrFail($id);

   
    $post->post_title = $request->input('post_title');
    $post->post_description = $request->input('post_description');
    $post->post_date = $request->input('post_date');

    // Handle the image upload
    if ($request->hasFile('post_image')) {
    
        if ($post->post_image && file_exists(public_path('image/' . $post->post_image))) {
            unlink(public_path('image/' . $post->post_image));
        }

        $image = $request->file('post_image');
        $imageName = time() . '.' . $image->getClientOriginalExtension();
        $image->move(public_path('image'), $imageName);

       
        $post->post_image = $imageName;
    }

    $post->save();

    return redirect()->route('dashboard');


}






public function deletepost($id){

   Post::where(['id'=>$id])->delete();

     return redirect()->route('dashboard');


}





public function homepage(){


$date = date("Y-m-d");
$posts = Post::where(['post_date'=>$date,'post_status'=>1])->get();


return view('homepage', compact('posts'));


}



public function dateauthorfilter(Request $request){

$query = Post::query();


  if ($request->filled('author')) {
            $author = strtolower($request->input('author'));
            $query->whereRaw('LOWER(post_author) LIKE ?', ["%{$author}%"]);
        }

        // Filter by post date if provided
        if ($request->filled('date')) {
            $query->whereDate('post_date', $request->input('date'));
        }

        $posts = $query->get();

        return view('homepage', compact('posts'));



}













}
