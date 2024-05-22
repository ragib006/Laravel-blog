<x-app-layout>
  


    <div class="container">

<h2 style="font-weight: bold;font-size:20px">Dashboard</h2>
 
    
 <a href="{{ route('addpost') }}" class="btn btn-primary" style="margin-top: 20px">Add Post</a>


 <form method="GET" action="{{ route('filter') }}" style="margin-top: 20px">
            <div class="row">
                <div class="col-md-4">
                    <input type="date" name="date" class="form-control" >
                </div>
                <div class="col-md-4">
                    <button type="submit" class="btn btn-primary">Filter</button>
                </div>
            </div>
        </form>







        <table class="table" style="margin-top: 20px">
  <thead>
    <tr>
      <th scope="col">Id</th>
      <th scope="col">Post Title</th>
      <th scope="col">Post Image</th>
      <th scope="col">Authore Name</th>
       <th scope="col">Post Date</th>
       <th scope="col">Status</th>
       <th scope="col">ON/OFF</th>
       <th scope="col">Action</th>
    </tr>
  </thead>
  <tbody>

  @foreach($posts as $post)
    <tr>
      <th scope="row">{{ $post->id }}</th>
       <td>{{ $post->post_title }}</td>
      <td>   <img src="{{ asset('image/' . $post->post_image) }}" style="width:50px;height: 50px"   class="card-img-top" alt="{{ $post->post_title }}"></td>




         <td style=""> {{ $post->post_author }} </td>
           <td style=""> {{ $post->post_date }} </td>

      <td>

          
 @if($post->post_status==1)

           <span style="" class="label label-success">{{'Active'}}</span>

          @else

            <span style=""  class="label label-danger" >{{'Not Active'}}</span>

          @endif

      </td>



    <td style="">

          @if($post->post_status==1)

          <a style="" class="btn btn-primary btn-sm"  href="{{URL::to('/active_post_unactive/'.$post->id)}}">ON</a>

           @else

         <a style="" class="btn btn-success btn-sm" href="{{URL::to('/unactive_post_active/'.$post->id)}}">OFF</a>

          @endif
     </td>



       <td>




      <a class="btn btn-warning btn-sm"  href="{{URL::to('/single_post/'.$post->id)}}"><i class="fa fa-eye" aria-hidden="true"></i></i></a>
  <a class="btn btn-primary btn-sm"  href="{{URL::to('/edit_post/'.$post->id)}}"><i class="fa fa-edit" aria-hidden="true"></i></a>
  <a class="btn btn-danger btn-sm"  href="{{URL::to('/delete_post/'.$post->id)}}"><i class="fa fa-trash" aria-hidden="true"></i></a>


    </td>




    </tr>

  @endforeach


  </tbody>
</table>



    </div>


</x-app-layout>
