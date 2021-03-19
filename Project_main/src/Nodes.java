import java.util.*;;



public class Nodes {
	int pid;
	String Name;
	int age;
	String place;
	ArrayList<String> interest=new ArrayList<>();
	Nodes(int pid,String Name,int age,String place,ArrayList<String> interest)
	{
		this.pid=pid;
		this.Name=Name;
		this.age=age;
		this.place=place;
		this.interest=interest;
	}
	@Override
	public int hashCode()
	{
		return ((Integer)pid).hashCode();
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
