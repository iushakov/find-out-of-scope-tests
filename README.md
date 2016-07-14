# How to Use

**Description:** This script navigate thru folder and sub-folders and helps to find files, where were specified word are matched, and prints path to these files.

1. Open Terminal
2. Proceed to folder where script is stored
3. Write ruby find_files_by_matched_word and specify ARGVs: <br>
3.1. mydir = ARGV[0] - path to folder where you would like to Search<br>
3.2. extension = ARGV[1] - extension of file(s) that should be checked<br>
3.3. word = ARGV[2] - desired word to find<br>

**EXAMPLE:**
```
ruby find_files_by_matched_word.rb /Users/admin/calabash-android/ feature @out_of_scope
```
