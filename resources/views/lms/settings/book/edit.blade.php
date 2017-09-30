@extends('app')

@section('content')

	<h1 class="judul">Edit Book</h1>

	<div class="col-md-4">

		<a href="/settings/book" class="btn btn-danger">
			<span class="glyphicon glyphicon-chevron-left" ></span> BACK
		</a>
		
	</div>

		<div class="col-md-4" >
		
			{!! Form::model($book, ['method' => 'PATCH', 'route' => ['settings.book.update', $book->id]]) !!}

				@include('lms/settings/book/_form', ['submitButtonText' => 'Edit Book', 'selectedYear'=>$book->year])

			{!! Form::close() !!}

		</div>
		
		
		

@stop