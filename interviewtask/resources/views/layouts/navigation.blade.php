<nav x-data="{ open: false }" class="bg-white border-b border-gray-100">
    <!-- Primary Navigation Menu -->





<nav class="navbar navbar-expand-lg bg-body-primary">
  <div class="container">
    <a class="navbar-brand" href="{{ route('home') }}" style="width:800px">Blog App</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="{{ route('home') }}">Home</a>
        </li>




           @if(Auth::check())
    @if(!is_null(Auth::user()->name))


        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
            {{ Auth::user()->name }}
          </a>
          <ul class="dropdown-menu">
     

 <li>
 <x-dropdown-link :href="route('profile.edit')">
                            {{ __('Profile') }}
                        </x-dropdown-link> </li>


                      <li>     <x-dropdown-link :href="route('dashboard')" :active="request()->routeIs('dashboard')">
                        {{ __('Dashboard') }}
                    </x-dropdown-link></li>

 <li>

                        <form method="POST" action="{{ route('logout') }}">
                    @csrf

                    <x-responsive-nav-link :href="route('logout')"
                            onclick="event.preventDefault();
                                        this.closest('form').submit();">
                        {{ __('Log Out') }}
                    </x-responsive-nav-link>
                </form>

 </li>

          
          </ul>
        </li>
        
    @else
          <li class="nav-item">
          <a class="nav-link" href="{{ route('login') }}">Login</a>
        </li>
            <li class="nav-item">
          <a class="nav-link" href="{{ route('register') }}">SingUp</a>
        </li>
    @endif
@else
      <li class="nav-item">
          <a class="nav-link" href="{{ route('login') }}">Login</a>
        </li>
            <li class="nav-item">
          <a class="nav-link" href="{{ route('register') }}">SingUp</a>
        </li>
@endif



      


    


      
      </ul>
   
    </div>
  </div>
</nav>









    <!-- Responsive Navigation Menu -->
    <div :class="{'block': open, 'hidden': ! open}" class="hidden sm:hidden">
     

    
        <div class="pt-4 pb-1 border-t border-gray-200">
        

            <div class="mt-3 space-y-1">
                <x-responsive-nav-link :href="route('profile.edit')">
                    {{ __('Profile') }}
                </x-responsive-nav-link>

                <!-- Authentication -->
                <form method="POST" action="{{ route('logout') }}">
                    @csrf

                    <x-responsive-nav-link :href="route('logout')"
                            onclick="event.preventDefault();
                                        this.closest('form').submit();">
                        {{ __('Log Out') }}
                    </x-responsive-nav-link>
                </form>
            </div>
        </div>
    </div>




</nav>
