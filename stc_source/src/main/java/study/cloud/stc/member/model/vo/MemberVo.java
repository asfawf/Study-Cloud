package study.cloud.stc.member.model.vo;

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
public class MemberVo {

	private String memId;
	private String memPasswd;
	private String memName;
	private int memPhone;
	private String memEmail;
	private int memQuit;
	private int memAuthority;
	private int memSns;


}
