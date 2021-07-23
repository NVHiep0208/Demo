<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<div class="left">
                    <span class="left__icon">
                        <span></span>
                        <span></span>
                        <span></span>
                    </span>
                    <div class="left__content">
                        <div class="left__logo">LOGO</div>
                        <div class="left__profile">
                            <div class="left__image"><img src="/admin-resource/icon/profile.jpg" alt=""></div>
                            <p class="left__name">${userLogined.email }</p>
                        </div>
                        <ul class="left__menu">
                            <li class="left__menuItem">
                                <a href="${base }/Admin" class="left__title"><img src="/admin-resource/icon/icon-dashboard.svg" alt="">Dashboard</a>
                            </li>
                            <li class="left__menuItem">
                                <div class="left__title"><img src="/admin-resource/icon/icon-tag.svg" alt="">Sản Phẩm<img class="left__iconDown" src="/admin-resource/icon/arrow-down.svg" alt=""></div>
                                <div class="left__text">
                                    <a class="left__link" href="${base }/admin/insert_product">Chèn Sản Phẩm</a>
                                    <a class="left__link" href="${base }/admin/view_product">Xem Sản Phẩm</a>
                                </div>
                            </li>
                            <li class="left__menuItem">
                                <div class="left__title"><img src="/admin-resource/icon/icon-edit.svg" alt="">Danh Mục SP<img class="left__iconDown" src="/admin-resource/icon/arrow-down.svg" alt=""></div>
                                <div class="left__text">
                                    <a class="left__link" href="${base }/admin/insert_p_category">Chèn Danh Mục</a>
                                    <a class="left__link" href="${base }/admin/view_p_category">Xem Danh Mục</a>
                                </div>
                            </li>
                            <li class="left__menuItem">
                                <div class="left__title"><img src="/admin-resource/icon/icon-book.svg" alt="">Thể Loại<img class="left__iconDown" src="/admin-resource/icon/arrow-down.svg" alt=""></div>
                                <div class="left__text">
                                    <a class="left__link" href="${base }/admin/insert_category">Chèn Thể Loại</a>
                                    <a class="left__link" href="${base }/admin/view_category">Xem Thể Loại</a>
                                </div>
                            </li>
                            <li class="left__menuItem">
                                <div class="left__title"><img src="/admin-resource/icon/icon-settings.svg" alt="">Slide<img class="left__iconDown" src="/admin-resource/icon/arrow-down.svg" alt=""></div>
                                <div class="left__text">
                                    <a class="left__link" href="${base }/admin/insert_slide">Chèn Slide</a>
                                    <a class="left__link" href="${base }/admin/view_slides">Xem Slide</a>
                                </div>
                            </li>
                            <li class="left__menuItem">
                                <div class="left__title"><img src="/admin-resource/icon/icon-book.svg" alt="">Coupons<img class="left__iconDown" src="/admin-resource/icon/arrow-down.svg" alt=""></div>
                                <div class="left__text">
                                    <a class="left__link" href="${base }/admin/insert_coupon">Chèn Coupon</a>
                                    <a class="left__link" href="${base }/admin/view_coupons">Xem Coupons</a>
                                </div>
                            </li>
                            <li class="left__menuItem">
                                <a href="${base }/admin/view_customers" class="left__title"><img src="/admin-resource/icon/icon-users.svg" alt="">Khách Hàng</a>
                            </li>
                            <li class="left__menuItem">
                                <a href="${base }/admin/view_orders" class="left__title"><img src="/admin-resource/icon/icon-book.svg" alt="">Đơn Đặt Hàng</a>
                            </li>
                            <%-- <li class="left__menuItem">
                                <a href="${base }/admin/edit_css" class="left__title"><img src="/admin-resource/icon/icon-pencil.svg" alt="">Chỉnh CSS</a>
                            </li> --%>
                            <li class="left__menuItem">
                                <div class="left__title"><img src="/admin-resource/icon/icon-pencil.svg" alt="">Role<img class="left__iconDown" src="/admin-resource/icon/arrow-down.svg" alt=""></div>
                                <div class="left__text">
                                    <a class="left__link" href="${base }/admin/add_roles">Thêm Roles</a>
                                    <a class="left__link" href="${base }/admin/view_roles">Xem Roles</a>
                                </div>
                            </li>
                            <li class="left__menuItem">
                                <div class="left__title"><img src="/admin-resource/icon/icon-user.svg" alt="">User<img class="left__iconDown" src="/admin-resource/icon/arrow-down.svg" alt=""></div>
                                <div class="left__text">
                                    <a class="left__link" href="${base }/admin/add_users">Thêm Users</a>
                                    <a class="left__link" href="${base }/admin/view_users">Xem Users</a>
                                </div>
                            </li>
                            <li class="left__menuItem">
                                <a href="${base }/logout" class="left__title"><img src="/admin-resource/icon/icon-logout.svg" alt="">Đăng Xuất</a>
                            </li>
                        </ul>
                    </div>
                </div>