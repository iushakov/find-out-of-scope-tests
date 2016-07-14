### ruby out_of_scope_features.rb mydir extension word
### example: ruby out_of_scope_features.rb /Users/admin/calabash-android/ feature London
### AGRVs:
### mydir - path to folder that should be checked
### extension - extension of files that should be checked
### word - word that should be checked

mydir = ARGV[0]
extension = ARGV[1]
word = ARGV[2]

Dir.chdir( mydir )
%[cd mydir]

Dir.glob("**/*.#{extension}") {|file|
  File.open file do |f|
    f.any? do |line|
      if line.include?(word)
        puts file
        break
      end
    end
  end
}
