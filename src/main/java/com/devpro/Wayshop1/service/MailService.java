package com.devpro.Wayshop1.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.stereotype.Service;

@Service
public class MailService {
	@Autowired
	private JavaMailSender javaMailSender;
	public void sendEmailResetPass(String emailResetPass, String newPass) {

		SimpleMailMessage msg = new SimpleMailMessage();
		msg.setTo(emailResetPass);

		msg.setSubject("Reset password");
		msg.setText("Mật khẩu tạm cho email " + emailResetPass + " là " + newPass
				+ "\n\nVui lòng đổi mật khẩu của mình để đảm bảo an toàn");
//		msg.setText("Mật khẩu tạm cho email " + emailResetPass + " là " + newPass
//				+ "\n\nKèm lời nhắn: DMM, đổi mật khẩu đi thằng mặt lồn");
		javaMailSender.send(msg);

	}
}
