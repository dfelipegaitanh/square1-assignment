@extends('layouts.app')

@section('content')
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-9 col-sm-3 blog-main">
                <form action="{{ route('entry_action.store') }}" method="POST">
                    @csrf

                    <div class="form-group row">
                        <label for="title" class="col-md-2 col-form-label text-md-right">{{ __('Title') }}</label>
                        <div class="col-md-10">
                            <input id="title" type="text" class="form-control @error('title') is-invalid @enderror" name="title" value="{{ old('title') }}" required autocomplete="name" autofocus>
                            @error('title')
                            <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                            @enderror
                        </div>
                    </div>

                    <div class="form-group row">
                        <label for="description" class="col-md-2 col-form-label text-md-right">{{ __('description') }}</label>
                        <div class="col-md-10">
                            <textarea id="description" type="text" class="form-control textarea_big @error('description') is-invalid @enderror" name="description" required>{{ old('description') }}</textarea>
                            @error('description')
                            <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                            @enderror
                        </div>
                    </div>

                    <div class="form-group row mb-0">
                        <div class="col-md-7 offset-md-5">
                            <button type="submit" class="btn btn-primary">
                                {{ __('Create') }}
                            </button>
                            <a class="btn btn-primary"  href="{{ route('myEntries') }}">
                                {{ __('View My Entries') }}
                            </a>
                        </div>
                    </div>

                </form>
            </div>
        </div>
    </div>
@endsection