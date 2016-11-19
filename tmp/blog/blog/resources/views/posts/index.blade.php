@extends('layouts.default')

@section('title', 'Blog Posts')

@section('content')
  <h1><a href="{{url('/posts/create')}}" class="pull-right fs12">Add New</a>
      Posts
</h1>

<ul>
  @forelse($posts as $post)
    <li>
      <a href="{{ url('/posts', $post->id) }}">{{ $post->title }}</a>
      <a href="{{ action('PostsController@edit', $post->id) }}" class="fs12">[編集]</a>
      <form action="{{ action('PostsController@destroy', $post->id) }}" id="form_{{$post->id}}" method="post" style="display:inline">
      {{ csrf_field() }}
      {{ method_field('delete') }}
      <input type="submit" class="fs12" value="[x]">
    </form>
    </li>
  @empty
    <li>No posts yet</li>
  @endforelse
</ul>
@endsection

