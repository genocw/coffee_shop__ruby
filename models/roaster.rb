require_relative("../db/sql_runner.rb")

class Roaster

  attr_accessor :id, :name, :location, :total_sold

  def initialize(options)
    @id = options["id"].to_i if options["id"]
    @name = options["name"]
    @location = options["location"]
    @total_sold = 0
  end

  # .save
  def save()
    sql = "
      INSERT INTO roasters (
        name,
        location,
        total_sold
      )
      VALUES ($1, $2, $3)
      RETURNING id;
    "
    values = [@name, @location, @total_sold]
    results = SqlRunner.run(sql, values)
    @id = results[0]["id"].to_i
  end

  # update?
      # needed?

  def self.all()
    sql = "
      SELECT * FROM roasters;
    "
    results = SqlRunner.run(sql)
    return results.map { |roaster_hash| Coffee.new(roaster_hash) }
  end

  def self.delete_all()
    sql = "
      DELETE FROM roasters;
    "
    SqlRunner.run(sql)
  end

  def coffees()
    sql = "
    SELECT * FROM coffees
    WHERE roaster_id = $1;
    "
    values = [@id]
    results = SqlRunner.run(sql, values)
    return results.map { |coffee_hash| Coffee.new(coffee_hash) }
  end

end
