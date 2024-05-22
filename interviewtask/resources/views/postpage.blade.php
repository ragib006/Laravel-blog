<x-app-layout>
   


    <div class="container">

    <h1 style="margin-top: 10px;margin-bottom: 10px">Create Post</h1>


    <div class="card"  style="color:gray; width:700px;padding: 15px">

    

         <form  enctype="multipart/form-data" method="POST" action="{{ route('poststore') }}">
        @csrf
         

  <div class="mb-3" style="padding-bottom: 15px">
  <label for="exampleFormControlInput1" class="form-label">Post Title</label>
  <input type="text" class="form-control" id="exampleFormControlInput1" name="post_title" placeholder="Enter Post Title" required>
</div>

<div class="input-group mb-3">

  <input type="file" class="form-control" id="inputGroupFile02" name="post_image" required>
  <label class="input-group-text" for="inputGroupFile02" >Upload</label>
</div>




<div class="mb-3">
  <label for="exampleFormControlTextarea1" class="form-label">Description</label>
  <textarea class="form-control" id="exampleFormControlTextarea1" rows="3" name="post_description" required></textarea>
</div>


  <div class="mb-3" style="padding-bottom: 15px">
  <label for="exampleFormControlInput1" class="form-label">Post Date</label>
  <input type="date" class="form-control" id="exampleFormControlInput1" name="post_date"  required>
</div>


<button class="btn btn-success" type="submit">Submit</button>

      </form>


    </div>
    
 

    </div>

</x-app-layout>
