<!doctype html>
<html lang="en">
@include('master.master')

<body style="background: #eef1f7">
    @include('master.header')
    <div class="container">
        <div class="chairman-session not-shadow row">
            <div class="col-md-2">
                <img src="{{asset("images/web/profile.png")}}" id="profile" alt="profile">
            </div>
            <div class="col-md-6">
                <ul class="profile-session">
                    <li id="title-session"><i class="fa fa-check"></i>{{$session[0]->name_session}}</li>
                    <li id="person-session"><i class="fa fa-edit"></i><a href="{{route('profile_user',$session[0]->id_user)}}">{{$name = (DB::table('users')->where('id',$session[0]->id_user))->value('name')}}</a></li>
                    <li id="des-session"><i class="far fa-sticky-note"></i>{{$session[0]->description}}</li>
                    <li id="time-session"><i class="fa fa-history"></i>{{$session[0]->created_at}}</li>
                    @if(\Illuminate\Support\Facades\Auth::check())
                        @if($session[0]->id_user == \Illuminate\Support\Facades\Auth::id())
                            <li id="time-session"><i class="fas fa-user-edit"></i><button class="btn btn-danger edit" data-toggle="modal" data-target="#exampleModal1">Edit</button></li>
                        @endif
                    @endif
                </ul>
            </div>

        </div>
        <div class="box-questions">
            <div class="who-posted">
                @if($question[0]->whoposted == "Hide")
                <h5>Đăng bởi: Thành viên ẩn danh</h5>
                @else
                <h5>Đăng bởi: <a href="#">{{$question[0]->whoposted}}</a></h5>
                @endif

            </div>
            <div class="list-questions">
                <a href="{{route('show_detail_session',$session[0]->id_session)}}">Trở về bảng câu hỏi</a>
                <div class="question">
                    <div class="content-question">
                        <div class="head-content-question">
                            <h5>Nội dung câu hỏi</h5>
                        </div>
                        <div class="body-content-question">
                            <p style="font-size: 18px">{{$question[0]->title_question}}</p>
                        </div>
                        <div class="quantity-like-question">
                            <span style="color: #606670"><i style="color: rgb(32, 120, 244)" class="far fa-thumbs-up"></i> {{$like->count()}} people like</span>
                        </div>
                        <div class="like-comment-content-question row">
                            <div class="col-md-6 col-sm-6 like-question">
                                @if((DB::table('like_question')->where('id_user',\Illuminate\Support\Facades\Auth::id())->where('id_question',$id_question))->count() > 0)
                                <a style="color: rgb(32, 120, 244)" href="{{route('un_like_question',$id_question)}}"><i class="far fa-thumbs-up"></i> Like</a>
                                @else
                                <a href="{{route('like_question',$id_question)}}"><i class="far fa-thumbs-up"></i> Like</a>
                                @endif
                            </div>
                            <div class="col-md-6 col-sm-6 comment-question">
                                <a href="#"><i class="far fa-comment"></i> Comment</a>
                            </div>
                        </div>
                        <div class="write-comment-question row">
                            <div class="col-md-1 avatar-people">
                                <img src="{{asset("images/web/profile.png")}}" alt="">
                            </div>
                            <div class="col-md-11 write-comment">
                                <form id="send_comment" action="{{route('add_comment',$id_question)}}" method="post">
                                    @csrf
                                    <input class="form-control" type="text" placeholder="Viết nhận xét..." name="comment_question">
                                    @if(\Illuminate\Support\Facades\Auth::check())
                                    <input type="text" name="name_cmt" value="{{\Illuminate\Support\Facades\Auth::user()->name}}" hidden>
                                    @endif
                                </form>
                            </div>
                        </div>

                        <div id="realtime_comment">
                            @foreach($comments_success as $comment)
                                <div class="list-comment row">
                                    <div class="col-md-1 avatar-people">
                                        <img src="{{asset("images/web/profile.png")}}" alt="">
                                    </div>
                                    <div style="background: #b9f1b9" class="col-md-10 el-comment">
                                        @if(\Illuminate\Support\Facades\Auth::check())
                                            <span style="color: #385898"><a href="{{route('profile_user',$comment->id_user)}}">{{\App\User::where('id',$comment->id_user)->value('name')}}</a></span><b> {{$comment->content}}</b>
                                        @else
                                            <span style="color: #385898">{{\App\User::where('id',$comment->id_user)->value('name')}}</span><b> {{$comment->content}}</b>
                                        @endif
                                        <ul class="like-comment-question">
                                            <li class="like-comment-{{$comment->id_comment}}"><a href="#">Like</a></li>
                                            @if(($comments_in=DB::table('comment_in')->where('id_comment',$comment->id_comment)->get())->count() == 0)
                                                <li class="res-comment-{{$comment->id_comment}}">Reply</li>
                                            @else
                                                <li class="res-comment-{{$comment->id_comment}}">Reply ({{$comments_in->count()}})</li>
                                            @endif
                                            @if(\Illuminate\Support\Facades\Auth::check())
                                                @if($session[0]->id_user == \Illuminate\Support\Facades\Auth::id())
                                                    <li class="set-success"><a href="{{route('confirm.comment',$comment->id_comment)}}"><i class="fas fa-check-circle"></i></a></li>
                                                @endif
                                            @endif

                                        </ul>

                                        @foreach( $comments_in = DB::table('comment_in')->where('id_comment',$comment->id_comment)->get() as $cmt)
                                            <div class="rep-comment-{{$comment->id_comment}} rep-comment col-md-12 row">
                                                <div class="col-md-1 avatar-people size-avatar">
                                                    <img src="{{asset("images/web/profile.png")}}" alt="">
                                                </div>
                                                <div class="col-md-11 content-rep-comment">
                                                    @if(\Illuminate\Support\Facades\Auth::check())
                                                        <span style="color: #385898"><a href="{{route('profile_user',$cmt->id_user)}}">{{\App\User::where('id',$cmt->id_user)->value('name')}}</a></span><b> {{$cmt->content}}</b>
                                                    @else
                                                        <span style="color: #385898">{{\App\User::where('id',$cmt->id_user)->value('name')}}</span><b> {{$cmt->content}}</b>
                                                    @endif
                                                </div>
                                            </div>
                                        @endforeach

                                        <div class="rep-comment-{{$comment->id_comment}} rep-comment col-md-12 row" id="show_rep_comment">
                                            <div class="col-md-1 avatar-people size-avatar">
                                                <img src="{{asset("images/web/profile.png")}}" alt="">
                                            </div>
                                            <div class="col-md-11 content-rep-comment">
                                                <form action="{{route('add_comment_in_comment',[$id_question,$comment->id_comment])}}" method="post">
                                                    @csrf
                                                    <input class="form-control" type="text" name="comment_rep" placeholder="viết phản hồi...">

                                                </form>

                                            </div>
                                        </div>
                                    </div>
                                </div>
                            @endforeach
                            @foreach($comments as $comment)
                            <div class="list-comment row">
                                <div class="col-md-1 avatar-people">
                                    <img src="{{asset("images/web/profile.png")}}" alt="">
                                </div>
                                <div class="col-md-10 el-comment">
                                        @if(\Illuminate\Support\Facades\Auth::check())
                                            <span style="color: #385898"><a href="{{route('profile_user',$comment->id_user)}}">{{\App\User::where('id',$comment->id_user)->value('name')}}</a></span><b> {{$comment->content}}</b>
                                        @else
                                            <span style="color: #385898">{{\App\User::where('id',$comment->id_user)->value('name')}}</span><b> {{$comment->content}}</b>
                                        @endif
                                    <ul class="like-comment-question">
                                        <li class="like-comment-{{$comment->id_comment}}"><a href="#">Like</a></li>
                                        @if(($comments_in=DB::table('comment_in')->where('id_comment',$comment->id_comment)->get())->count() == 0)
                                        <li class="res-comment-{{$comment->id_comment}}">Reply</li>
                                        @else
                                        <li class="res-comment-{{$comment->id_comment}}">Reply ({{$comments_in->count()}})</li>
                                        @endif
                                        @if(\Illuminate\Support\Facades\Auth::check())
                                            @if($session[0]->id_user == \Illuminate\Support\Facades\Auth::id())
                                                <li class="set-success"><a href="{{route('confirm.comment',$comment->id_comment)}}"><i class="fas fa-check-circle"></i></a></li>
                                            @endif
                                        @endif

                                    </ul>

                                    @foreach( $comments_in = DB::table('comment_in')->where('id_comment',$comment->id_comment)->get() as $cmt)
                                    <div class="rep-comment-{{$comment->id_comment}} rep-comment col-md-12 row">
                                        <div class="col-md-1 avatar-people size-avatar">
                                            <img src="{{asset("images/web/profile.png")}}" alt="">
                                        </div>
                                        <div class="col-md-11 content-rep-comment">
                                            @if(\Illuminate\Support\Facades\Auth::check())
                                            <span style="color: #385898"><a href="{{route('profile_user',$cmt->id_user)}}">{{\App\User::where('id',$cmt->id_user)->value('name')}}</a></span><b> {{$cmt->content}}</b>
                                            @else
                                                <span style="color: #385898">{{\App\User::where('id',$cmt->id_user)->value('name')}}</span><b> {{$cmt->content}}</b>
                                            @endif
                                        </div>
                                    </div>
                                    @endforeach

                                    <div class="rep-comment-{{$comment->id_comment}} rep-comment col-md-12 row" id="show_rep_comment">
                                        <div class="col-md-1 avatar-people size-avatar">
                                            <img src="{{asset("images/web/profile.png")}}" alt="">
                                        </div>
                                        <div class="col-md-11 content-rep-comment">
                                            <form action="{{route('add_comment_in_comment',[$id_question,$comment->id_comment])}}" method="post">
                                                @csrf
                                                <input class="form-control" type="text" name="comment_rep" placeholder="viết phản hồi...">

                                            </form>

                                        </div>
                                    </div>
                                </div>
                            </div>
                            @endforeach
                        </div>

                    </div>
                </div>
            </div>

        </div>
    </div>
    <div class="modal fade" id="exampleModal1" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel1" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Chỉnh sửa nội dụng:</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <form action="{{route("edit_session",$session[0]->id_session)}}" method="post">
                        @csrf
                        <input class="form-control" placeholder="Tiêu đề..." type="text" name="title_edit" minlength="6" maxlength="60"><br>
                        <input class="form-control" placeholder="Mô tả..." type="text" name="desc_edit" minlength="6" maxlength="60">
                        <input  type="submit" class="btn btn-primary" value="submit">
                    </form>
                </div>

            </div>
        </div>
    </div>




    <!-- Modal -->

    <script>
        $(document).ready(function() {
            $('input[name="comment_question"]').keypress(function(e) {
                if (e.which == 13) {
                    $('form#send_comment').submit();
                    return false; //<---- Add this line
                }
            });
            $("ul li:nth-child(2)").click(function() {
                var cl = $(this).attr('class');
                var id = cl.split('-')[2];
                $(".rep-comment-".concat(id)).toggleClass("show-rep-comment");
            });
        });
    </script>
    <script>
        // Enable pusher logging - don't include this in production
        Pusher.logToConsole = true;

        var pusher = new Pusher('edab6293e303ca06454e', {
            cluster: 'us2',
            forceTLS: true
        });

        var channel = pusher.subscribe('my-channel');
        var phantuchon = $("#realtime_comment");
        channel.bind('form-submitted', function(data) {
            // alert(JSON.stringify(data));
            const string = JSON.stringify(data);
            const obj = JSON.parse(string);
            @if(\Illuminate\Support\Facades\Auth::check())
            phantuchon.append("<div class='list-comment row'><div class='col-md-1 avatar-people'><img src='{{asset('images/web/profile.png')}}'></div><div class='col-md-10 el-comment'><span style='color: #385898'><a href='{{route('profile_user',\Illuminate\Support\Facades\Auth::id())}}'>"+obj.name_cmt+"</a></span><b> "+obj.text+"</b><ul class='like-comment-question'><li class='like-comment'><a href='#'>Thích</a></li><li class='res-comment'>Trả lời <i style='margin-left:3px' class=\"fas fa-check-circle\"></i></li></ul></div></div>");
            @endif
        });
    </script>
</body>

</html>
