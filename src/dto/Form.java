package dto;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.net.URL;

import javax.validation.constraints.Min;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import com.sendgrid.SendGrid;
import com.sendgrid.SendGrid.Email;
import com.sendgrid.SendGridException;
import org.apache.commons.io.IOUtils;
import org.hibernate.validator.constraints.NotEmpty;
import org.springframework.web.multipart.MultipartFile;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data @NoArgsConstructor @AllArgsConstructor
public class Form {
	@NotEmpty
	private String first;

	private String second;

	@NotEmpty
	private String name;

	@NotEmpty @org.hibernate.validator.constraints.Email
	private String email;

	private String hours = "2";

	private String payment = "cash";


	public void emailMe() {
		SendGrid sendgrid = new SendGrid(System.getenv("SENDGRID_USERNAME"), System.getenv("SENDGRID_PASSWORD"));

		Email email = new Email();
		email.addTo(System.getenv("RECEPIENT_EMAIL"));
		email.setFrom("no-reply@gmail.com");
		email.setSubject("New tutoring request!");


		try {
			email.setText(this.toString());
			SendGrid.Response response = sendgrid.send(email);
			System.out.println(response.getMessage());
		} catch (SendGridException e) {
			e.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		}

	}
}

