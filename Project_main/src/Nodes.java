import java.util.*;;



public class Nodes {
	int pid;
	String Name;
	String email;
	int age;
	String place;
	ArrayList<String> interest=new ArrayList<>();
	Nodes(int pid,String Name,String email,int age,String place,ArrayList<String> interest)
	{
		this.pid=pid;
		this.Name=Name;
		this.email=email;
		this.age=age;
		this.place=place;
		this.interest=interest;
	}
	@Override
	public int hashCode()
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
	
	@Override
	public boolean equals(Object o)
	{
		Nodes n=(Nodes) o;
		return pid==n.pid;
	}
	@Override
	public String toString() { 
	    String result = "["+pid+","+Name+","+age+","+place+"]";
	    return result;
	} 
}
