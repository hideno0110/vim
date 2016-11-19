<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Post;
use App\Comment;
use App\Http\Requests;
use App\Http\Controllers\Controller;

class CommentsController extends Controller
{

  public function store(Request $requrest, $postId) {

      $this->validate($requrest, [
        'body' => 'required' 
      ]);

      $comment = new Comment(['body' => $requrest->body]);
      $post = Post::findOrFail($postId);
      $post->comments()->save($comment);

      return redirect()
        ->action('PostsController@show', $post->id);
  
  }

  public function destroy($id) {
  
    $comment = Comment::findOrFail($id);
    $post_id = $comment->post_id;
    $comment->delete();
    return redirect()
      ->action('PostsController@show', $post_id)->with('flash_message', 'Comment delete');
  }





}
