<x-app-layout>
  


    <div class="container">

     <div class="row">

       <div class="col-md-4">


          <img src="{{ asset('image/' . $post->post_image) }}" style="width:350px;height: 350px;margin-top:10px"   class="card-img-top" alt="{{ $post->post_title }}">

       </div>


  <div class="col-md-8">

<p style="margin-top:10px">

  <span style="margin-right: 10px;font-weight:bold;font-size:20px">Id :</span>  <span style="font-size:20px">{{ $post->id }}</span>

</p>

<p style="margin-top:10px">

  <span style="margin-right: 10px;font-weight:bold;font-size:20px">Post Title :</span>  <span style="font-size:20px">{{ $post->post_title }}</span>

</p>


<p style="margin-top:10px">

  <span style="margin-right: 10px;font-weight:bold;font-size:20px">Post Author :</span>  <span style="font-size:20px">{{ $post->post_author }}</span>

</p>


<p style="margin-top:10px">

  <span style="margin-right: 10px;font-weight:bold;font-size:20px">Post Date :</span>  <span style="font-size:20px">{{ $post->post_date }}</span>

</p>



<p style="margin-top:10px">

  <span style="margin-right: 10px;font-weight:bold;font-size:20px;text-align: justify;">Post Description :</span>  <span style="font-size:20px">{{ $post->post_description }}</span>

</p>



       </div>


    
      </div>



    </div>


</x-app-layout>
