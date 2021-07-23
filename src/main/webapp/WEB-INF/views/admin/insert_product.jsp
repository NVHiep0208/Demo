<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
	<!-- SPRING FORM -->
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Dashboard</title>
    <!-- CSS -->
    <jsp:include page="/WEB-INF/views/admin/layout/css.jsp"></jsp:include>
    <!-- /CSS -->
</head>
<body>
    <div class="wrapper">
        <div class="container">
            <div class="dashboard">
                <!-- Left  -->
					<jsp:include page="/WEB-INF/views/admin/layout/left.jsp"></jsp:include>
				<!--end Left  -->
                <div class="right">
                    <div class="right__content">
                        <div class="right__title">Bảng điều khiển</div>
                        <p class="right__desc">Thêm sản phẩm</p>
                        <div class="right__formWrapper">
                            <sf:form action="${base }/admin/insert_product" method="post" enctype="multipart/form-data" modelAttribute="product">
                            <sf:input path="id"/>
                                <div class="right__inputWrapper">
                                    <label for="title">Tiêu đề</label>
                                    <sf:input type="text" name="title" id="title" placeholder="Tiêu đề" path="title"/>
                                </div>
                                <div class="right__inputWrapper">
                                    <label for="p_category">Danh mục</label>
									<sf:select path="categories.id">
										<sf:options items="${categories }" itemValue="id"
											itemLabel="name" />
									</sf:select>
								</div>
								<!--path: properties    
									items:list categories  -->
                                <%-- <div class="right__inputWrapper">
                                    <label for="category">Thể loại</label>
                                    <sf:select name="" path="type">
                                        <option disabled selected>Chọn thể loại</option>
                                        <option value="Nữ">Nữ¯</option>
                                        <option value="Nam">Nam</option>
                                    </sf:select>
                                </div> --%>
                                <div class="right__inputWrapper">
                                    <label for="image">Hình ảnh 1</label>
                                    <input type="file" name="productAvatar"/>
                                </div>
                                <!-- name = thuộc tính trong requestParam  -->
                                <div class="right__inputWrapper">
                                    <label for="image">Hình ảnh 2</label>
                                    <input type="file" multiple="multiple" name="productPictures"/>
                                </div>
                                <%-- <div class="right__inputWrapper">
                                    <label for="image">Hình ảnh 3</label>
                                    <sf:input type="file" path="image"/>
                                </div> --%>
                                <%-- <div class="right__inputWrapper">
                                    <label for="label">Nhãn sản phẩm</label>
                                    <sf:select name="" path="label">
                                        <option disabled selected>Nhãn sản phẩm</option>
                                        <option value="new">Mới</option>
                                        <option value="sale">Giảm giá</option>
                                    </sf:select>
                                </div> --%>
                                <div class="right__inputWrapper">
                                    <label for="title">Giá sản phẩm</label>
                                    <sf:input type="text" placeholder="Giá sản phẩm" path="price" id="price"/>
                                </div>
                                <div class="right__inputWrapper">
                                    <label for="title">Giá giảm sản phẩm</label>
                                    <sf:input type="text" placeholder="Giá giảm sản phẩm" path="priceSale" id="priceSale"/>
                                </div>
								<div class="right__inputWrapper">
									<label for="quantity" class="col-sm-3 control-label">Số
										lượng</label>
									<div class="col-sm-3">
										<sf:input path="quantity" type="number"
											class="form-control" name="quantity" id="quantity"
											placeholder="Nhập số lượng sản phẩm" min="1" value="1" />
									</div>
								</div>
								<div class="right__inputWrapper">
                                    <label for="title">Từ khóa</label>
                                    <sf:input type="text" placeholder="Từ khóa" path="key_word"/>
                                </div>
                                <%-- <div class="right__inputWrapper">
                                    <label for="title">Seo</label>
                                    <sf:input type="text" placeholder="Nhập seo" path="seo"/>
                                </div> --%>
                                <div class="right__inputWrapper">
                                    <label for="shortDesc">Mô tả ngắn</label>
                                    <sf:textarea class="form-control summernote" name="shortDescription" id="shortDescription" path="shortDescription"></sf:textarea>
                                </div>
                                <div class="right__inputWrapper">
                                    <label for="desc">Mô tả</label>
                                    <sf:textarea class="form-control summernote" name="description" id="description" path="detailDescription"></sf:textarea>
                                </div>
                                <div class="form-group form-check">
								<sf:checkbox  class="form-check-input" path="is_hot"
									id="exampleCheck1" value=""/> <label class="form-check-label"
									for="exampleCheck1">Is hot?</label>
							</div>
                                <button class="btn" type="submit">Save</button>
                                <br>
                               <a href="${base }/admin/view_product" class="btn"
									role="button" aria-pressed="true" style="text-align: center; line-height: 42px;">Back to list</a>
                            </sf:form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- JS -->
    <jsp:include page="/WEB-INF/views/admin/layout/js.jsp"></jsp:include>
    <!-- JS -->
    <script type="text/javascript">
	    $('.summernote').summernote({
			height : 200, //set editable area's height
			codemirror : { // codemirror options
				theme : 'monokai'
			}
		});
    </script>
</body>
</html>