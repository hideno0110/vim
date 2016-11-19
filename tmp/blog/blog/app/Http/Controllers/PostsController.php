<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Post;
use App\Http\Requests;

class PostsController extends Controller
{
  //一覧画面のアクション
  public function index() {

    $posts = Post::all();
    return view('posts.index', ['posts'=>$posts]); 
  }
  //記事詳細ページのアクション
  public function show($id) {
    //記事データを取得
    $post = Post::find($id);
    return view('posts.show')->with('post',$post);
  }

  //記事作成のフォーム
  public function create() {
    return view('posts.create');
  }

  //記事データ保存
  public function store (Request $request) {

    $this->validate($request,[
      'title'=>'required|min:3',
      'body'=>'required'
    ]);


    $post = new Post();
    $post->title = $request->title;
    $post->body = $request->body;
    $post->author = $request->author;
    $post->save();
    return redirect('/posts')->with('flash_message','記事データを作成しました。');  
  
  }
  
  //記事編集のフォーム 
  public function edit($id) {
    $post = Post::findOrFail($id);
    return view('posts.edit')->with('post',$post);
  }
  
  //記事の更新
  public function update(Request $request, $id) {
    $post = Post::findOrFail($id);
    $post->title = $request->title;
    $post->body = $request->body;
    $post->author = $request->author;
    $post->save();
    return redirect('/posts')->with('flash_message','Post Updated!');
  }
  
  //記事の削除
  public function destroy($id) {
    $post = Post::findOrFail($id);
    $post->delete();
    return redirect('/posts')->with('flash_message', 'Post delete');
      
  
  }

}
