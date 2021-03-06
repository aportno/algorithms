/**
 * Calculates the total disk usage (in bytes) of the portion of the file system rooted
 * at the given path, while printing a summary akin to the stand 'du' Unix tool.
 */

 public static long diskUsage(File root) {
     long total = root.length();
     if (root.isDirectory()) {
         for (String childname : root.list()) {
             File child = new File(root, childname);
             total += diskUsage(child);
         }
     }
     System.out.println(total + "\t" +  root);
     return total;
 }
