package co.grandcircus.expITAlumni.rest;

import java.io.BufferedReader;
import java.io.IOException;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;

import co.grandcircus.expITAlumni.model.Login;
import co.grandcircus.expITAlumni.rest.HttpHelper;





@Service
public class SlackService {
	
	@Value("${CLIENT_ID}")
	private  String CLIENT_ID;
	
	@Value("${CLIENT_SECRET}")
	private  String CLIENT_SECRET;
		
		public Login getAccessTokenAt(String code) {
			String url = "https://slack.com/api/oauth.access?client_id=" +CLIENT_ID+ "&client_secret="+CLIENT_SECRET+"&code="+code+"&FcstType=json";
			// Use HTTP GET with the above URL
			try (BufferedReader reader = HttpHelper.doGet(url)) { // try with resources will auto close the reader
				if (reader == null) {
					throw new RuntimeException("Not found: " + url);
				}
				
				// parse the HTTP response body to JSON
				JsonElement root = new JsonParser().parse(reader);
				
				JsonObject jObject = root.getAsJsonObject();

				Login login = new Login();
				
				login.setAccessToken(jObject.get("access_token").getAsString());
				System.out.println(login.getAccessToken());
				login = getCurrentUserAt(login.getAccessToken());
				
				return login;
			} catch (IOException ex) {
				throw new RuntimeException("Error reading from URL: " + url, ex);
			}
		}
		
		public Login getCurrentUserAt(String accessToken){
			String url = "https://slack.com/api/users.identity?&token="+accessToken;
			// Use HTTP GET with the above URL
			try (BufferedReader reader = HttpHelper.doGet(url)) { // try with resources will auto close the reader
				if (reader == null) {
					throw new RuntimeException("Not found: " + url);
				}
				
				// parse the HTTP response body to JSON
				JsonElement root = new JsonParser().parse(reader);
				System.out.println(root);
				
				JsonObject user = root.getAsJsonObject().get("user").getAsJsonObject();

				Login login = new Login();
				
				login.setName(user.get("name").getAsString());
				login.setId(user.get("id").getAsString());
				login.setEmail(user.get("email").getAsString());
				login.setImage(user.get("image_192").getAsString());
				
				return login;
			} catch (IOException ex) {
				throw new RuntimeException("Error reading from URL: " + url, ex);
			}
			
			

			
			
		}

}

