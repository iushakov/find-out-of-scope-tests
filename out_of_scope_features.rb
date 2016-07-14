Dir.chdir( mydir )
%[cd mydir]

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
