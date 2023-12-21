@extends('admin.layout.app')

@section('heading', 'Customers')

@section('main_content')
<div class="section-body">
    <div class="row">
        <div class="col-12">
            <div class="card">
                <div class="card-body">
                    <div class="table-responsive">
                        <table class="table table-bordered" id="example1">
                            <thead>
                                <tr>
                                    <th class="text-center">No</th>
                                    <th class="text-center">Photo</th>
                                    <th class="text-center">Name</th>
                                    <th class="text-center">Email</th>
                                    <th class="text-center">Phone</th>
                                    <th class="text-center">Action</th>
                                </tr>
                            </thead>
                            <tbody>
                                @foreach($customers as $row)
                                <tr>
                                    <td class="text-center">{{ $loop->iteration }}</td>
                                    <td class="text-center">
                                        @if($row->photo!='')
                                            <img src="{{ asset('uploads/'.$row->photo) }}" alt="" class="w_100">
                                        @else
                                            <img src="{{ asset('uploads/default.png') }}" alt="" class="w_100">
                                        @endif
                                        
                                    </td>
                                    <td class="text-center">{{ $row->name }}</td>
                                    <td class="text-center">{{ $row->email }}</td>
                                    <td class="text-center">{{ $row->phone }}</td>
                                    <td class="text-center" class="pt_10 pb_10">
                                        @if($row->status == 1)
                                            <a href="{{ route('admin_customer_change_status',$row->id) }}" class="btn btn-success">Active</a>
                                        @else
                                            <a href="{{ route('admin_customer_change_status',$row->id) }}" class="btn btn-danger">Pending</a>
                                        @endif
                                    </td>
                                </tr>
                                @endforeach
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection