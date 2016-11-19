@extends('layouts.default')

@section('title', 'Blog Post')

@section('content')
  <h1>
    <a href="/posts" class="pull-right fs12">Back</a>
    {{ $post->title }}
  </h1>
  <p>{{ $post->author }}</p>
  <p>{!! nl2br(e($post->body)) !!}</p>

  <h2>Comments</h2>
  <ul>
    @forelse($post->comments as $comment)
      <li>
        {{ $comment->body }}
        <form action="{{ action('CommentsController@destroy', [$comment->post_id, $comment->id]) }}" method="post">
          {{ method_field('delete') }}
          {{ csrf_field() }}
          <input type="submit" value="[x]">
        </form>
      </li>
    @empty
      <li>No Comment yet</li>
    @endforelse
  </ul>

  <h2>Add New Comment</h2>
  <form method="post" action="{{ action('CommentsController@store', $post->id) }}">
     {{ csrf_field() }}
    <p>
      <input type="text" name="body" placeholder="body" value="{{ old('body') }}">
      @if($errors->has('body'))
        <span class="error">{{ $errors->first('body') }}</span>
      @endif
    </p>
    <p>
      <input type="submit" value="Add Comment">
    </p>
  </form>


@endsection
