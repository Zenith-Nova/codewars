/*
Deoxyribonucleic acid (DNA) is a chemical found in the nucleus of cells and carries the "instructions" for the development and functioning of living organisms.

If you want to know more: http://en.wikipedia.org/wiki/DNA

In DNA strings, symbols "A" and "T" are complements of each other, as "C" and "G". Your function receives one side of the DNA (string, except for Haskell); you need to return the other complementary side. DNA strand is never empty or there is no DNA at all (again, except for Haskell).

More similar exercise are found here: http://rosalind.info/problems/list-view/ (source)

Example: (input --> output)

"ATTGC" --> "TAACG"
"GTAT" --> "CATA"
*/

-- solution
--# write your SQL statement here: you are given a table 'dnastrand' with column 'dna', return a table with column 'dna' and your result in a column named 'res'.
WITH ComplementaryDNA AS (
    SELECT
        dna,
        REPLACE(REPLACE(REPLACE(REPLACE(UPPER(dna), 'A', 'T'), 'T', 'A'), 'C', 'G'), 'G', 'C') AS res
    FROM
        dnastrand
)

SELECT * FROM ComplementaryDNA;


-- sample test
/*
DB[:dnastrand].multi_insert([
  {dna: "AAAA"},
  {dna: "ATTGC"},
  {dna: "GTAT"},
  {dna: "AAGG"},
  {dna: "CGCG"},
  {dna: "ATTGC"},
  {dna: "GTATCGATCGATCGATCGATTATATTTTCGACGAGATTTAAATATATATATATACGAGAGAATACAGATAGACAGATTA"}
])

results = run_sql

describe :columns do
   it "should return 2 columns" do
    expect(results.columns.count).to eq 2
   end
end

describe :column_names do
   it "should match column names" do
     expect(results.columns[0].to_s).to eq "dna"
     expect(results.columns[1].to_s).to eq "res"
   end
end

compare_with expected do end
*/