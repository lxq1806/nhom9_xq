package com.hoangminh;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.TimeZone;

@SpringBootApplication
public class HoangMinhWebApplication {
	public static void main(String[] args) {
		SpringApplication.run(HoangMinhWebApplication.class, args);
		TimeZone.setDefault(TimeZone.getTimeZone("UTC+7"));
		// TimeZone vietnamTimeZone = TimeZone.getTimeZone("Asia/Ho_Chi_Minh");
		// TimeZone.setDefault(vietnamTimeZone);
	}
}
