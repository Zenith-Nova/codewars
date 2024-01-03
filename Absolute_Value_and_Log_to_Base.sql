-- Challange
-- Given the following table 'decimals'
-- schema: id number1 number2
-- Return a table with two columns (abs, log) where
-- the values in abs are the absolute values of number1
-- and the values in log are values from number2 in
-- logarithm to base 64
-- concepts:[fundamentals, mathematics, sql]

/**sql**/
-- Selects absolute values of number1 and logarithms to base 64 of number2
SELECT
  ABS(number1) AS abs, -- Calculate the absolute value of number1
  LOG(number2, 64) AS log -- Calculate the logarithm to base 64 of number2
FROM
  decimals; -- Specify the source table as 'decimals'


--  smaple test
-- ruby
/*
# Assuming you have a run_sql method that executes SQL queries and returns the results
def run_sql(query)
  # Implement your logic to execute the SQL query and return the results
  # This could be using a database connection or any other mechanism
end

# Example SQL query
$sql = "SELECT ABS(number1) AS abs, LOG(number2, 64) AS log FROM decimals"

# Execute the SQL query
results = run_sql($sql)

# RSpec tests
describe :query do
  describe "should contain keywords" do
    it "should contain SELECT" do
      expect($sql.upcase).to include("SELECT")
    end

    it "should contain FROM" do
      expect($sql.upcase).to include("FROM")
    end
  end

  describe :columns do
    it "should return 2 columns" do
      expect(results.first.keys.count).to eq 2
    end

    it "should return an 'abs' column" do
      expect(results.first.keys).to include("abs".to_sym)
    end

    it "should return a 'log' column" do
      expect(results.first.keys).to include("log".to_sym)
    end
  end
end
*/