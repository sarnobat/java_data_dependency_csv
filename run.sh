
#find /Users/ssarnobat/webservices/cmp/authentication-services/target/classes/ -iname "*class" \
#	|  /Library/Java/JavaVirtualMachines/jdk1.8.0_131.jdk/Contents/Home/bin/java -Dfile.encoding=UTF-8 -classpath /Users/ssarnobat/github/java_data_dependency_csv/java_csv_data_dependency/target/classes:/Users/ssarnobat/.m2/repository/com/google/guava/guava/19.0/guava-19.0.jar:/Users/ssarnobat/.m2/repository/org/apache/bcel/bcel/6.0/bcel-6.0.jar:/Users/ssarnobat/.m2/repository/commons-collections/commons-collections/3.2.2/commons-collections-3.2.2.jar:/Users/ssarnobat/.m2/repository/commons-io/commons-io/2.4/commons-io-2.4.jar com.rohidekar.Main
	
find /Users/ssarnobat/webservices/cmp/authentication-services/target/classes/ -iname "*class"      |  /Library/Java/JavaVirtualMachines/jdk1.8.0_131.jdk/Contents/Home/bin/java -Dfile.encoding=UTF-8 -classpath /Users/ssarnobat/github/java_data_dependency_csv/java_csv_data_dependency/target/classes:/Users/ssarnobat/.m2/repository/com/google/guava/guava/19.0/guava-19.0.jar:/Users/ssarnobat/.m2/repository/org/apache/bcel/bcel/6.0/bcel-6.0.jar:/Users/ssarnobat/.m2/repository/commons-collections/commons-collections/3.2.2/commons-collections-3.2.2.jar:/Users/ssarnobat/.m2/repository/commons-io/commons-io/2.4/commons-io-2.4.jar com.rohidekar.Main 2>/dev/null | perl -pe 's{\s*...depends on( variable)?....\s*}{","}g' | perl -pe 's{(^.*$)}{"$1"}g' | sort | tee variable_dependencies.csv	