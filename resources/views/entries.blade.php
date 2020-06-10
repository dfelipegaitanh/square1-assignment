@extends('layouts.app')

@section('content')
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-9 col-sm-3 blog-main">

                @include('sort_by')

                @foreach ($entries as $entry)
                    <div class="blog-post">
                        <h2 class="blog-post-title">{{ $entry->title }}</h2>
                        <p class="blog-post-meta">{!!$entry->date_and_user !!}</p>
                        <p>{!!$entry->description!!}</p>
                    </div>
                @endforeach

                @include('sort_by')

            </div>
        </div>
    </div>
@endsection
