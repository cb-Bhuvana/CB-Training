import java.util.*;
import java.lang.Math;

public class MapPrefixWords{

	public static void main(String args[]){

		String[] words = {"application","apple" , "hello" , "tall" , "tallest" , "three" , "six" ,"sixteen" ,"eleven" , "seven" ,"seventeen" , "twenty","short"};

		Map<String, ArrayList<String>> wordsMap = new TreeMap<String, ArrayList<String>>();
		
		for(String str : words){
			String prefix = str.substring(0, Math.min(str.length(), 3));
			ArrayList<String> wordList = wordsMap.get(prefix);	
			if(wordList == null){
				wordsMap.put(prefix,wordList = new ArrayList<String>());				
			}
			wordList.add(str);
		}

		for(String key : wordsMap.keySet()){
			ArrayList<String> values = wordsMap.get(key);
			Collections.sort(values);
			System.out.println(key +  " - " + values);	
		}
		

	}
}