<header class="navbar navbar-inverse navbar-fixed-top wet-asphalt" role="banner">
    <div class="container">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="{!! url('/' . getLang()) !!}"><img src="{!! url('frontend/images/logo.png') !!}" alt="logo"></a>
        </div>
        <div class="collapse navbar-collapse">
            {!! $menus !!}
        </div>
        <div>
            @if(Sentinel::check())
                @include ('frontend.layout.userinfo')
                @else
                @include ('frontend.layout.login')
                @endif

            {{--<ul>
            <li class="dropdown user user-menu">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                    <img src="{{ gravatarUrl(Sentinel::getUser()->email) }}" class="user-image" alt="User Image"/>
                    <span class="hidden-xs">{{ Sentinel::getUser()->first_name . ' ' . Sentinel::getUser()->last_name }}</span> </a>
                <ul class="dropdown-menu">
                    <!-- User image -->
                    <li class="user-header">
                        <img src="{{ gravatarUrl(Sentinel::getUser()->email) }}" class="img-circle" alt="User Image"/>

                        <p>
                        <p> {{ Sentinel::getUser()->first_name . ' ' . Sentinel::getUser()->last_name }} - Web Developer
                            <small>Member since Nov. 2012</small>
                        </p>
                    </li>
                    <!-- Menu Body -->
                    <li class="user-body">
                        <div class="col-xs-4 text-center">

                        </div>
                        <div class="col-xs-4 text-center">

                        </div>
                        <div class="col-xs-4 text-center">

                        </div>
                    </li>
                    <!-- Menu Footer-->
                    <li class="user-footer">
                        <div class="pull-left">
                            <a href="{{ url(getLang() . '/admin/user/' . Sentinel::getUser()->id) }}" class="btn btn-default btn-flat">Profile</a>
                        </div>
                        <div class="pull-right">
                            <a href="{{ url('/admin/logout') }}" class="btn btn-default btn-flat">Sign out</a></div>

                    </li>
                </ul>
            </li>
            </ul>--}}
        </div>
    </div>
</header><!--/header-->