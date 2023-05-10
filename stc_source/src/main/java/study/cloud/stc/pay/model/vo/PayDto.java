package study.cloud.stc.pay.model.vo;

import java.sql.Date;

import org.springframework.stereotype.Component;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;


@Component
@ToString
@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class PayDto {

	
	private Date RsvDate;
	private int proNum;
	
	private String rsvTime;
	private Date payDate;
	
	
	
	
	
}
