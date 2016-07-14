AGRV = "mydir" #desired folder path ~/*/project_path/

Dir.chdir( ARGV[0] )
%[cd ARGV[0]]

Dir.glob("**/*.feature") {|file|
  File.open file do |f|
    f.any? do |line|
      if line.include?('@out_of_scope')
        puts file
        break
      end
    end
  end
}
