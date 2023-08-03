# find-java.bat

## Usages
- CMD
  ```cmd
  find-java.bat
  ```
- Powershell
  ```powershell
  ./find-java.bat
  ```
- Java
  ```java
  import java.io.BufferedReader;
  import java.io.IOException;
  import java.io.InputStreamReader;
  
  public class Main {
  
      public static void main(String[] args) throws IOException {
          Process ps = Runtime.getRuntime().exec("find-java.bat");
          BufferedReader reader = new BufferedReader(new InputStreamReader(ps.getInputStream()));
          String line;
          while ((line = reader.readLine()) != null) {
              System.out.println(line);
          }
      }
  
  }
  ```
## Samples
  ```shell
  C:\Program Files\Zulu\zulu-17\
  C:\Program Files\Zulu\zulu-17\
  C:\Program Files\Java\jre-1.8
  C:\Program Files\Java\jre-1.8
  C:\Program Files\Java\jre-1.8
  C:\Program Files\Zulu\zulu-17\
  C:\Program Files\Zulu\zulu-17\
  C:\Program Files\Eclipse Adoptium\jdk-11.0.20.8-hotspot\
  C:\Program Files\Eclipse Adoptium\jre-17.0.7.7-hotspot\
  C:\Program Files\Eclipse Adoptium\jre-8.0.372.7-hotspot\
  C:\Program Files\Microsoft\jdk-17.0.8.7-hotspot\
  C:\Program Files\Zulu\zulu-17\
  ```
