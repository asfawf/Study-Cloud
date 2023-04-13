package study.cloud.stc;

import java.io.IOException;
import java.io.Reader;
import java.util.Properties;

import javax.mail.Message;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.mail.javamail.JavaMailSenderImpl;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.ctc.wstx.shaded.msv_core.util.Util;

@Controller
@RequestMapping("/sendmail")
public class mailSender {
	
	@GetMapping
	public ModelAndView changemailsend(ModelAndView mv,HttpServletRequest request, HttpServletResponse response, String division, String sendTo) throws Exception{

		String proId = WebUtil.getProperty("mail_id");
		String proPass = WebUtil.getProperty("mail_password");
		String proEmail = WebUtil.getProperty("mail_email"); // 보내는 사람
		
		System.out.println("proId: " + proId);
		System.out.println("propass: " + proPass);
		
		String host = "smtp.naver.com";
		final String username = proId;
		final String password = proPass;
		int port = 465;
		
		
		// 메일 내용
		
		String change = "";
		for (int i = 0; i < 12; i++) {
			change += (char) ((Math.random() * 26) + 97);
		}
		
		System.out.println();
		System.out.println("pw1: "+ change);
		
		// 받는 사람
		String recipient  = sendTo;
		
		String subject = "임시 비밀번호 발급 메일 입니다.";
		String body = "귀하의 변경된 비밀번호는 " + change + " 입니다.";

		Properties props = System.getProperties();
		
		props.put("mail.smtp.host", host);
		props.put("mail.smtp.port", port);
		props.put("mail.smtp.auth", true);
		props.put("mail.smtp.ssl.enable", true);
		props.put("mail.smtp.ssl.trust", host);
		
		Session session = Session.getDefaultInstance(props, new javax.mail.Authenticator() { 
            String un=username;
            String pw=password; 
            protected PasswordAuthentication getPasswordAuthentication() { 
                return new PasswordAuthentication(un, pw); 
            } 
        });
		session.setDebug(true);
		
		Message mimeMessage = new MimeMessage(session); 
	    mimeMessage.setFrom(new InternetAddress(proEmail)); 
	    mimeMessage.setRecipient(Message.RecipientType.TO, new InternetAddress(recipient)); 
	    mimeMessage.setSubject(subject); 
	    mimeMessage.setText(body); 
	    Transport.send(mimeMessage);
	        
	    mv.setViewName("/changemail");
	    
	   return mv;
		
	}

}
