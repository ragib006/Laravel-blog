<x-app-layout>
  


    <div class="container">




        <form method="GET" action="{{ route('date_author_filter') }}" class="mb-4" style="margin-top: 10px">
            <div class="row">
                <div class="col-md-4">
                    <input type="text" name="author" class="form-control" placeholder="Filter by Author" value="{{ request('author') }}">
                </div>
                <div class="col-md-4">
                    <input type="date" name="date" class="form-control" placeholder="Filter by Date" value="{{ request('date') }}">
                </div>
                <div class="col-md-4">
                    <button type="submit" class="btn btn-primary">Filter</button>
                </div>
            </div>
        </form>



       @foreach($posts as $post)

       <div class="card" style="padding: 10px;margin-top:15px">


            <div class="row">
               <div class="col-md-4">


                <img src="{{ asset('image/' . $post->post_image) }}" style="width:300px;height: 300px"   class="card-img-top" alt="{{ $post->post_title }}">
                 

               </div>

                <div class="col-md-8">


        <p>
          
         <span style="margin-right: 10px;font-weight: bold">Post Title :</span>   <span style="font-weight: bold">{{$post->post_title}}</span>

        </p>

        <p>
          
         <span style="margin-right: 10px;font-weight: bold">Post Author :</span>   <span>{{$post->post_author}}</span>

        </p>

           <p>
          
         <span style="margin-right: 10px;font-weight: bold">Date :</span>   <span>{{$post->post_date}}</span>

        </p>


              <p>
          
         <span style="margin-right: 10px;font-weight: bold">Description :</span>   <span style="text-align: justify">{{$post->post_description}}</span>

        </p>
                 

               </div>

            </div>

   

         </div>
      
        @endforeach

    </div>


</x-app-layout>
