import 'dart:io';

void main(){
  // project path
  
  final projectPath = "${Directory.current.path}/lib";
  
  // folder creation
  
  final directories = [
    '$projectPath/common',
    '$projectPath/core',
    '$projectPath/core/configs',
    '$projectPath/core/configs/theme',
    '$projectPath/data',
    '$projectPath/domain',
    '$projectPath/presentation',
  ];
  
  for (var dir in directories ){
    final directory = Directory(dir);
    if (!directory.existsSync()){
      directory.createSync(recursive: true);
      print("Created: $dir ✔️");
    } else {
      print("Directory already exists: $dir ❌");
    }
  }
  print("creating Directories Successfully ✅");
}