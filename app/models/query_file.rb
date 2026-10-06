# One .sql file in queries/: the question on its first line (-- Q: ...),
# the SQL, and the verdict line (-- verdict: ...) once someone has written it.
class QueryFile
  DIRECTORY = Rails.root.join("queries")
  QUESTION = /\A--\s*Q:\s*/i
  VERDICT = /\A--\s*verdict:\s*/i

  attr_reader :path

  def self.all
    DIRECTORY.glob("*.sql").sort.map { |path| new(path) }
  end

  def initialize(path)
    @path = Pathname(path)
  end

  def name = path.basename.to_s

  def question = comment_matching(QUESTION)

  def verdict = comment_matching(VERDICT)

  def sql
    lines.reject { |line| line.match?(QUESTION) || line.match?(VERDICT) }.join.strip
  end

  def query
    @query ||= Query.new(path.read).run(read_only: true)
  end

  private

  def lines = path.readlines

  def comment_matching(pattern)
    line = lines.find { |l| l.match?(pattern) }
    line&.sub(pattern, "")&.strip
  end
end
