@extends('layouts.app')

@section('content')
    <div class="container">
        <div class="row">
            <div class="col-md-10 col-md-offset-1">


                <!-- Start Forloop -->
                @foreach($products as $product)
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h3> {{ $product->id }}. {{ $product->product_name }}</h3>
                        </div>

                        <div class="panel-body">
                            <select class="form-control" onchange='getNewVariant("{{ $product->id }}")' id="variant_{{ $product->id }}" >
                                @foreach($product->variant as $variant)
                                    <option value="{{ $variant->product_variant_id }}">{{ $variant->product_variant_color }}</option>
                                @endforeach
                            </select>
                                <br>
                            <div class="col-md-10 col-md-offset-1">
                                <div class="row">
                                    <div class="panel panel-default">
                                        <div class="panel-body">
                                            <ul>
                                                <li>
                                                    product variant id = <span id="product_variant_id_{{ $product->id }}">{{ $product->variant->first()->product_variant_id }} </span>
                                                </li>
                                                <li>
                                                    product variant position = <span id="product_variant_position_{{ $product->id }}">  {{ $product->variant->first()->product_variant_position }} </span>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                @endforeach
                <!-- end forloop -->
            </div>
        </div>
    </div>
@endsection

@section('script')
    <script>
        function getNewVariant(id){
{{--            alert("{{url("getvariant")}}")--}}
//            alert($('#variant_'+id).val())
            $.ajax({
                url: '{{url("getvariant")}}' ,
                type: "get",
                data: {
                    'variantId':$('#variant_'+id).val() ,
                },
                success: function(data){
                    $("#product_variant_id_"+id).html(data['product_variant_id'])
                    $("#product_variant_position_"+id).html(data['product_variant_position'])
                }
                ,
                error: function(msg)
                {
                }
            });
        }
    </script>
    @stop
