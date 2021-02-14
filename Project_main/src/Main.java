import java.io.*;
import java.util.*;




public class Main {

	public static void main(String[] args) throws Exception{
		// TODO Auto-generated method stub
		File ff=new File("input.txt");
	Scanner s=new Scanner(ff);
	Nodes nodes[]=new Nodes[10];
	int pid;
	String Name;
	int age;
	String place;
	ArrayList<String> interest;
	
	int i=0;
	while(s.hasNextLine())
	{
		String temp=s.nextLine();
		String arr[]=temp.split("-");
		String base[]=arr[0].split(",");
		pid=Integer.parseInt(base[0]);
		Name=base[1];
		age=Integer.parseInt(base[2]);
		place=base[3];
		base=arr[1].split(",");
		interest=new ArrayList<>();
		Collections.addAll(interest, base);
		nodes[i]=new Nodes(pid,Name,age,place,interest);
		i++;
		
	}
	
	HashMap<String,HashSet<Nodes>> tags=new HashMap<>();
	HashMap<Nodes,HashSet<String>> people=new HashMap<>();
	for(int k=0;k<i;k++)
	{
		if(people.containsKey(nodes[k]))
		{
			continue;
		
		}
		else
		{
			HashSet<String> hs=new HashSet<>();
			hs.addAll(nodes[k].interest);
			people.put(nodes[k], hs);
			
			
		}
			
	}
	for(int k=0;k<i;k++)
	{
		ArrayList<String> al=nodes[k].interest;
		for(String h:al)
		{
			if(tags.containsKey(h))
			{
				HashSet<Nodes> hs=tags.get(h);
				hs.add(nodes[k]);
				tags.put(h, hs);
			}
			else
			{
				HashSet<Nodes> hs=new HashSet<>();
				hs.add(nodes[k]);
				tags.put(h, hs);
			}
		}
	}
	System.out.println("---------------------------------------------------------------------");
	System.out.println("Tags Graph");
	System.out.println("---------------------------------------------------------------------");
	for(Map.Entry<String, HashSet<Nodes>> e:tags.entrySet())
	{
		System.out.println(e.getKey()+" ==> "+e.getValue());
	}
	System.out.println("---------------------------------------------------------------------");
	System.out.println("People graph");
	System.out.println("---------------------------------------------------------------------");
	for(Map.Entry<Nodes, HashSet<String>> e:people.entrySet())
	{
		System.out.println(e.getKey()+" ==> "+e.getValue());
	}
	
	
	

	}

}
