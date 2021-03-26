import java.util.*;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.io.*;

public class per2 {

	 public static int hashCode(String email)
		{
			
			int p=31;
			int m=1000000009;
			long pow=1;
			long hash=0;
			for(char c:email.toCharArray()) {
				hash=(hash+(c-'a'+1)*pow)%m;
				pow=(pow*p)%m;
			}
			
			Long longg=new Long(hash);

			return longg.hashCode();
		}
		
	//exec usp_createUser '203','pradeep',NULL,'123@gmail.com','pradeep1234','chennai','1999-01-1' --, --'gaming','bike','sleep'

	    public static void main(String arfs[]){
	        Random rnd= new Random();
	        String loc[]={"Mumbai","Delhi","Bangalore","Hyderabad","Ahmedabad","Chennai","Kolkata","Surat","Pune","Jaipur","Lucknow","Kanpur","Nagpur","Indore","Thane","Bhopal","Visakhapatnam","Pimpri","Patna","Vadodara","Ghaziabad","Ludhiana","Agra","Nashik","Ranchi","Faridabad","Meerut","Rajkot","Kalyan","Vasai","Varanasi","Srinagar","Aurangabad","Dhanbad","Amritsar","Navi","Allahabad","Howrah","Gwalior","Jabalpur","Coimbatore","Vijayawada","Jodhpur","Madurai","Raipur","Kota","Chandigarh","Guwahati","Solapur","Hubli–Dharwad","Mysore","Tiruchirappalli","Bareilly","Aligarh","Tiruppur","Gurgaon","Moradabad","Jalandhar","Bhubaneswar","Salem","Warangal","Mira","Jalgaon","Guntur","Thiruvananthapuram","Bhiwandi","Saharanpur","Gorakhpur","Bikaner","Amravati","Noida","Jamshedpur","Bhilai","Cuttack","Firozabad","Kochi","Nellore","Bhavnagar","Dehradun","Durgapur","Asansol","Rourkela","Nanded","Kolhapur","Ajmer","Akola","Gulbarga","Jamnagar","Ujjain","Loni","Siliguri","Jhansi","Ulhasnagar","Jammu","Sangli","Mangalore","Erode","Belgaum","Kurnool","Ambattur","Rajahmundry","Tirunelveli","Malegaon","Gaya","Tirupati","Udaipur","Kakinada","Davanagere","Kozhikode","Maheshtala","Rajpur","Bokaro","South","Bellary","Patiala","Gopalpur","Agartala","Bhagalpur","Muzaffarnagar","Bhatpara","Panihati","Latur","Dhule","Rohtak","Sagar","Korba","Bhilwara","Berhampur","Muzaffarpur","Ahmednagar","Mathura","Kollam","Avadi","Kadapa","Anantapuram","Kamarhati","Bilaspur","Sambalpur","Shahjahanpur","Satara","Bijapur","Rampur","Shimoga","Chandrapur","Junagadh","Thrissur","Alwar","Bardhaman","Kulti","Nizamabad","Parbhani","Tumkur","Khammam","Uzhavarkarai","Bihar","Panipat","Darbhanga","Bally","Aizawl","Dewas","Ichalkaranji","Karnal","Bathinda","Jalna","Eluru","Barasat","Kirari","Purnia","Satna","Mau","Sonipat","Farrukhabad","Durg","Imphal","Ratlam","Hapur","Arrah","Anantapur","Karimnagar","Etawah","Ambarnath","North","Bharatpur","Begusarai","New","Gandhidham","Baranagar","Tiruvottiyur","Pondicherry","Sikar","Thoothukudi","Rewa","Mirzapur","Raichur","Pali","Ramagundam","Silchar","Haridwar","Vijayanagaram","Tenali","Nagercoil","Sri","Karawal","Mango","Thanjavur","Bulandshahr","Uluberia","Katni","Sambhal","Singrauli","Nadiad","Secunderabad","Naihati","Yamunanagar","Bidhannagar","Pallavaram","Bidar","Munger","Panchkula","Burhanpur","Raurkela","Kharagpur","Dindigul","Gandhinagar","Hospet","Nangloi","Malda","Ongole","Deoghar","Chapra","Haldia","Khandwa","Nandyal","Morena","Amroha","Anand","Bhind","Bhalswa","Madhyamgram","Bhiwani","Berhampore","Ambala","Morbi","Fatehpur","Raebareli","Khora","Chittoor","Bhusawal","Orai","Bahraich","Phusro","Vellore","Mehsana","Raiganj","Sirsa","Danapur","Serampore","Sultan","Guna","Jaunpur","Panvel","Shivpuri","Surendranagar","Unnao","Chinsurah","Alappuzha","Kottayam","Machilipatnam","Shimla","Adoni","Udupi","Katihar","Proddatur","Mahbubnagar","Saharsa","Dibrugarh","Jorhat","Hazaribagh","Hindupur","Nagaon","Sasaram","Hajipur","Port","Giridih","Bhimavaram","Kumbakonam","Bongaigaon","Dehri","Madanapalle","Siwan","Bettiah","Ramgarh","Tinsukia","Guntakal","Srikakulam","Motihari","Dharmavaram","Medininagar","Gudivada","Phagwara","Pudukkottai","Hosur","Narasaraopet","Suryapet","Miryalaguda","Tadipatri","Karaikudi","Kishanganj","Jamalpur","Ballia","Kavali","Tadepalligudem","Amaravati","Buxar","Tezpur","Jehanabad","Aurangabad","Gangtok","Vasco"};
	        try{
	        File fr=new File("C:\\Users\\WhysoseriousONI\\Desktop\\4thyearproject\\finalYearproject\\Project_main\\src\\python\\data_fill\\person.txt");
	        Scanner ss=new Scanner(fr);
	        while (ss.hasNextLine()){
	            String person=ss.nextLine();
	            String fname=person;
	            String lname="";
	            
	            for(int i=person.length()-1;i>=0;i--) {
	            	lname+=person.charAt(i);
	            }
	            
	            String mail=person+lname+"@gmail.com";
	            String pwd=lname+"123"+fname+Integer.toString(rnd.nextInt(15));
	            int hc=hashCode(mail);
	            String phno="";
	            for(int i=0;i<10;i++){
	                phno+=Integer.toString(rnd.nextInt(9));
	            }
	            String date="199"+Integer.toString(rnd.nextInt(9))+"-"+Integer.toString(1)+Integer.toString(rnd.nextInt(1))+"-"+Integer.toString(1)+Integer.toString(rnd.nextInt(9));
	            String location=loc[rnd.nextInt(loc.length)];
	            
	            System.out.println(hc+"  "+fname+"  "+lname+"  "+mail+"  "+pwd+"  "+location+"  "+ new Date(0).valueOf(date)); 
	            
	            try {
	            	Class.forName("com.mysql.jdbc.Driver");  
	            	Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/social_network","root","");  
	                if (conn != null) {
	                	String sql="insert into user_details_table (uid,First_name,"
	                			+ "Last_name,email,password,location) values (?,?,?,?,?,?,?)";
	                	PreparedStatement ps=conn.prepareStatement(sql);
	                	ps.setInt(1,hc );
	                	ps.setString(2, fname);
	                	ps.setString(3, lname);
	                	ps.setString(4, mail);
	                	ps.setString(5, pwd);
	                	ps.setString(6, location);
	                	ps.setDate(7,new Date(0).valueOf(date));
	                	try {
	                		ps.execute();
	                	}
	                	catch(Exception e) {System.out.println(e);}
	                }
	                //exec usp_createUser '203','pradeep',NULL,'123@gmail.com','pradeep1234','chennai','1999-01-1' --, --'gaming','bike','sleep'
	     
	            } catch (SQLException ex) {
	                ex.printStackTrace();
	            }
	            
	        	}
	        }
	        catch(Exception E){
	            System.out.println(E);
	        }

	    }
}
