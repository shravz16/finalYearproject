import java.io.*;
import java.util.*;
import org.apache.commons.exec.*;

public class Main {

	public static void main(String[] args) throws Exception {
		// TODO Auto-generated method stub
		File ff = new File("input.txt");
		Scanner s = new Scanner(ff);
		Nodes nodes[] = new Nodes[30];
		int pid;
		String Name;
		String email;
		int age;
		String place;
		ArrayList<String> interest;

		int i = 0;
		while (s.hasNextLine()) {
			String temp = s.nextLine();
			String arr[] = temp.split("-");
			String base[] = arr[0].split(",");
			pid = Integer.parseInt(base[0]);
			Name = base[1];
			email = base[2];
			age = Integer.parseInt(base[3]);
			place = base[4];
			base = arr[1].split(",");
			interest = new ArrayList<>();
			Collections.addAll(interest, base);
			nodes[i] = new Nodes(pid, Name, email, age, place, interest);
			i++;

		}

		HashMap<String, HashSet<Nodes>> tags = new HashMap<>();
		HashMap<Nodes, HashSet<String>> people = new HashMap<>();
		for (int k = 0; k < i; k++) {
			if (people.containsKey(nodes[k])) {

				continue; // -106369780

			} else {
				HashSet<String> hs = new HashSet<>();
				hs.addAll(nodes[k].interest);
				people.put(nodes[k], hs);

			}

		}
		for (int k = 0; k < i; k++) {
			ArrayList<String> al = nodes[k].interest;
			for (String h : al) {
				if (tags.containsKey(h)) {
					HashSet<Nodes> hs = tags.get(h);
					hs.add(nodes[k]);
					tags.put(h, hs);
				} else {
					HashSet<Nodes> hs = new HashSet<>();
					hs.add(nodes[k]);
					tags.put(h, hs);
				}
			}
		}
		
		System.out.println("---------------------------------------------------------------------");
		System.out.println("Tags Graph");
		System.out.println("---------------------------------------------------------------------");
		for (Map.Entry<String, HashSet<Nodes>> e : tags.entrySet()) {
			System.out.println(e.getKey() + " ==> " + e.getValue());
		}
		try {
			File tempNode = new File("tempnode.txt");
			if (tempNode.exists()) {
				tempNode.delete();
			}
			tempNode.createNewFile();

			FileWriter writer2 = new FileWriter(tempNode);
		
		System.out.println("---------------------------------------------------------------------");
		System.out.println("People graph");
		System.out.println("---------------------------------------------------------------------");
		for (Map.Entry<Nodes, HashSet<String>> e : people.entrySet()) {
//			System.out.println(e.getKey() + " ==> " + e.getValue());
			writer2.write(e.getKey().pid+"\n");
		}
		
		} catch (Exception E) {
			System.out.println(E);
		}
		System.out.println("---------------------------------------------------------------------");
		System.out.println("Connected Set");
		System.out.println("---------------------------------------------------------------------");
		try {
			File temp = new File("temp.txt");
			if (temp.exists()) {
				temp.delete();
			}
			temp.createNewFile();

			FileWriter writer = new FileWriter(temp);

			for (Map.Entry<Nodes, HashSet<String>> e : people.entrySet()) {

				for (String hss : e.getValue()) {
					HashSet<Nodes> hst = tags.get(hss);
					for (Nodes ptr : hst) {
						if (e.getKey().pid != ptr.pid)
							writer.write(e.getKey().pid + " " + ptr.pid + "\n");
						// System.out.println(e.getKey().pid+" "+ptr.pid);
					}
				}
			}
			writer.close();
		} catch (Exception E) {
			System.out.println(E);
		}
		String toExecInCmd = "python c:\\Users\\WhysoseriousONI\\Desktop\\4thyearproject\\finalYearproject\\Project_main\\bin\\python\\people_graph.py";
		CommandLine cmd = CommandLine.parse(toExecInCmd);
		DefaultExecutor executor = new DefaultExecutor();
		executor.execute(cmd);

	}

}