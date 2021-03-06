@extends('web.index_master')
@section('list-box-question')
    @include('web.filter')
    <div class="list-box-question">
        @foreach($allsurvey as $su)
            @if(($su->id_session % 2) != 0)
                <div style="background: #fff" class="box-question row">
                    @else
                        <div  class="box-question row">
                            @endif
                            <div class="col-md-8">
                                <div class="content-box">
                                    <strong id="title-sesison"><a href="{{route('handle.survey',$su->id)}}">{{$su->title}}</a></strong>
                                    <p>{{$su->description}}</p>
                                </div>
                                <div class="related-content row">
                                    <ul class="question-tag">
                                      <!--  <li><a href="#">aas</a></li>-->
                                    </ul>
                                </div>
                                <div class="user-post row">
                                    <img  id="avatar_default" src="{{asset('images/web/avatar_default.png')}}" alt="">
                                    <p id="chutoa"><a href="{{route('profile_user',$su->user_id)}}">{{DB::table('users')->where('id',$su->user_id)->value('name')}}</a></p>
                                    <!--  <p class="user-badge">Train </p>-->
                                    <p id="created_at">Asked on {{$su->created_at}}</p>

                                </div>
                            </div>
                            <div class="col-md-4 view-question">
                            </div>
                        </div>
                        @endforeach
                </div>
@stop
