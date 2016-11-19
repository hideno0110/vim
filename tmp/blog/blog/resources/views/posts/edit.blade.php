@extends('layouts.default')

@section('title','記事編集')

@section('content')
<h1>
  <a href="/posts" class="{{url('/posts',$post->id)}}">Back</a>
  記事編集
</h1>
<form method="post" action="{{url('/posts',$post->id)}}">
  {{csrf_field()}}
  {{method_field('patch')}}
  <p>
    <input type="text" name="title" placeholder="title" value="{{ old('title', $post->title)}}">
    @if ($errors->has('title'))
      <span class="error">{{$errors->has('title')}}</span>
    @endif
  </p>
  <p>
    <textarea name="body" placeholder="body">{{ old('body', $post->body) }}</textarea>
    @if ($errors->has('body'))
      <span class="error">{{$errors->has('body')}}</span>
    @endif
  </p>
 


 <p>
    <input type="text" name="author" placeholder="author" value="{{old('author',$post->author)}}"> 
  </p>
  <p>
    <input type="submit" value="送信">
  </p>
</form>

@endsection

