package com.devpro.Wayshop1.util;

import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

import com.github.slugify.Slugify;

public class Ultilities {
	public static String seo(String text) {
		return new Slugify().slugify(text);
	}
	
	public static void main(String[] args) {
		System.out.println(new BCryptPasswordEncoder(4).encode("admin"));;
	}
}
