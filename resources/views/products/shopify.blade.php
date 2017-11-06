@extends('layouts.app')

@section('content')
    <style>
        .error{
            color: red;
        }
    </style>
    <div class="container">
        <div class="row">
            <div class="col-md-10 col-md-offset-1">
                {{-- Start Adding Form--}}
                <form class="form-horizontal" id="formSerialize" method="post" action="{{url('addproduct')}}">
                    {{ csrf_field() }}
                    <div class="panel panel-default">
                        <div class="panel-body">
                            <div class="form-group">
                                <label for="productName" class="col-sm-2 control-label">Product Name</label>
                                <div class="col-sm-10">
                                    <input type="text" required name="productName" class="form-control" id="productName" placeholder="product Name">
                                    <span class="error error_productName"></span>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="row">
                        <div  id="addProductResult" class="hidden">
                            <button type="button" class="close" onclick="hideAlertMessage()">
                                <span aria-hidden="true">&times;</span>
                            </button>
                            <p id="addProductResultText"></p>
                        </div>
                    </div>

                    <!-- Variants -->
                    <div class="row">
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                Variant
                            </div>
                            <div class="panel-body">
                                <div id="variantDevs">
                                    <div class="row">
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label for="position1">variant 1 position</label>
                                                <input type="number" required name="position1" class="form-control" id="position1" placeholder="variant 1 position">
                                                <span class="error error_position1"></span>
                                            </div>
                                        </div>

                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label for="color1">variant 1 color</label>
                                                <input type="text" required  name="color1" class="form-control" id="color1" placeholder="variant 1 color">
                                                <span class="error error_color1"></span>
                                            </div>
                                        </div>
                                    </div>

                                </div>
                                <div class="row">
                                    <a href="javascript:void(0)" onclick="addNewVariant()">add more variant</a>
                                </div>
                            </div>
                        </div>

                    </div>
                    <!-- end Variants -->
                    <div class="form-group">
                        <div class="col-sm-offset-2 col-sm-10">
                            <input type="hidden" name="variantNumber" id="variantNumber" value="1">
                            <button type="button" onclick="sendProduct()" class="btn btn-default pull-right">add Product</button>
                        </div>
                    </div>
                </form>
                {{-- end Adding Form --}}
            </div>
        </div>
    </div>
@endsection

@section('script')
    <script>
        var variantNumber = 2;
        function addNewVariant(){
            var newVariant = '';
            newVariant +='<div class="row" id="var_'+variantNumber+'">';
                newVariant +='<div class="col-md-6">';
                    newVariant +='<div class="form-group">';
                        newVariant +='<label for="position'+variantNumber+'">variant '+variantNumber+' position</label>';
                        newVariant +='<input type="number" required name="position'+variantNumber+'"  class="form-control" id="position'+variantNumber+'" placeholder="variant '+variantNumber+' position">';
                        newVariant +='<span class="error error_position'+variantNumber+'"></span>';
                    newVariant +='</div>';
                newVariant +='</div>';
                newVariant +='<div class="col-md-5">';
                    newVariant +='<div class="form-group">';
                        newVariant +='<label for="color'+variantNumber+'">variant '+variantNumber+' color</label>';
                        newVariant +='<input type="text"  required name="color'+variantNumber+'" class="form-control" id="color'+variantNumber+'" placeholder="variant '+variantNumber+' color">';
                        newVariant +='<span class="error error_color'+variantNumber+'"></span>';
                    newVariant +='</div>';
                newVariant +='</div>';
                newVariant +='<div class="col-md-1">';
                    newVariant +='<h1><a href="javascript:void" onclick="removeVariant()"><span class="glyphicon glyphicon-remove-circle" aria-hidden="true"></span></a></h1>';
                newVariant +='</div>';
            newVariant +='</div>';
            $("#variantDevs").append(newVariant);
            $("#variantNumber").val(variantNumber);
            variantNumber++;
        }

        function removeVariant(){
           --variantNumber;
            var lastVar = variantNumber-1;

            $("#var_"+variantNumber).remove();
            $("#variantNumber").val(lastVar);
            if(variantNumber > 1){
            }else{
                addNewVariant()
            }
        }

        function sendProduct(){
            var url = "{{url('addproduct')}}";
            var data = $("#formSerialize").serialize();
            var can_save = 1;
            $("#formSerialize input").each(function(){
                if($(this).attr('name') != '_token' && $(this).attr('name') != 'variantNumber'){
                    if($(this).val() == ''){
                        $("#"+$(this).attr('name')).attr('style', 'background:#fff9fb;border:solid 1px #e6075d;color:#e6075d');
                        $(".error_"+$(this).attr('name')).html("this field required");
                        can_save = 0;
                    }else{
                        $("#"+$(this).attr('name')).attr('style', '');
                        $(".error_"+$(this).attr('name')).html("");
                    }

                    if($(this).attr('type') == 'number'){
                        if(!$.isNumeric($(this).val())){
                            can_save = 0;
                            $("#"+$(this).attr('name')).attr('style', 'background:#fff9fb;border:solid 1px #e6075d;color:#e6075d');
                            $(".error_"+$(this).attr('name')).html("this field must be numeric");
                        }else{
                            $("#"+$(this).attr('name')).attr('style', '');
                            $(".error_"+$(this).attr('name')).html("");
                        }
                    }
                }
            });
            if(can_save == 1){
                $.ajax({
                    url: url,
                    method:'POST',
                    data:data,
                    success: function(result){
                        if(result == "1"){
                            var element =  document.getElementById("addProductResult");
                            var elementText =  document.getElementById("addProductResultText");
                            elementText.innerHTML = 'New Element Added Successfully';
                            element.className -=  'hidden';
                            element.className =  'alert alert-success';
                            removeVariant();
                            $("#productName").val('')
                            $("#position1").val('')
                            $("#color1").val('')
                        }else{
                            var element =  document.getElementById("addProductResult");
                            var elementText =  document.getElementById("addProductResultText");
                            elementText.innerHTML = 'Some thing wrong';
                            element.className -=  'hidden';
                            element.className =  'alert alert-danger';
                        }
                        console.log(result);
                    },
                    error: function(){
                        var element =  document.getElementById("addProductResult");
                        var elementText =  document.getElementById("addProductResultText");
                        elementText.innerHTML = 'Some thing wrong on Server';
                        element.className -=  'hidden';
                        element.className =  'alert alert-danger';
                    }
                });
            }

        }

        function hideAlertMessage(){
            var element =  document.getElementById("addProductResult");
            element.className =  'hidden';

        }
    </script>
    @stop
