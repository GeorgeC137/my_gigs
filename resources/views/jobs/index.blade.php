@extends('layout')

@section('content')

@if (count($jobs) == 0)
    <h1 class="text-center font-bold text-red-500 mb-8">No Gigs Available</h1>
@endif

@include('partials._hero')
@include('partials._search')

<div class="lg:grid lg:grid-cols-2 gap-4 space-y-4 md:space-y-0 mx-4">

@foreach($jobs as $job)

    <x-jobs-card :Job='$job'/>

@endforeach

</div>

<div class="mt-6 p-4">
    {{$jobs->links()}}
</div>

@endsection
