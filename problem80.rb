# Transcribe the given DNA strand into corresponding mRNA - a type of RNA, that will be formed from DNA
#  after transcription. DNA has the bases A, T, G and C, while RNA converts to U, A, C and G respectively.
# Examples
# dnaToRna("ATTAGCGCGATATACGCGTAC") ➞ "UAAUCGCGCUAUAUGCGCAUG" dnaToRna("CGATATA") ➞ "GCUAUAU"
# dnaToRna("GTCATACGACGTA") ➞ "CAGUAUGCUGCAU"
def dnaToRna(str)
  arr = str.split("")
  new_str = ""
  arr.map do |x|
    if x == "A"
      new_str << ("U")
    elsif x == "T"
      new_str << ("A")
    elsif x == "G"
      new_str << ("C")
    else
      new_str << ("G")
    end
  end
  return new_str
end

p dnaToRna("ATTAGCGCGATATACGCGTAC")
p dnaToRna("GTCATACGACGTA")
