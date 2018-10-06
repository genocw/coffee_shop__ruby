require_relative("../db/sql_runner.rb")

class Coffee

  attr_accessor :id, :name, :roaster_id, :profile, :region, :process, :primary_taste, :in_stock, :total_sold

  def initialize(options)
    @id = options["id"].to_i if options["id"]
    @name = options["name"]
    @roaster_id = options["roaster_id"].to_i if options["roaster_id"]
    @profile = options["profile"]
    @region = options["region"]
    @process = options["process"]
    @primary_taste = options["primary_taste"]
    @in_stock = options["in_stock"]
    @total_sold = 0
  end

# .in_stock? method to get boolean.
      # will be distinct from attribute?
  def in_stock?()
    if @in_stock == "true" || true
      return true
    end
    return false
  end

# .save
  def save()
    sql = "
      INSERT INTO coffees (
        name,
        roaster_id,
        profile,
        region,
        process,
        primary_taste,
        in_stock,
        total_sold
      )
      VALUES ($1, $2, $3, $4, $5, $6, $7, $8)
      RETURNING id;
    "
    values = [@name, @roaster_id, @profile, @region, @process, @primary_taste, @in_stock, @total_sold]
    results = SqlRunner.run(sql, values)
    @id = results[0]["id"].to_i
  end

# update?
    # needed?

  def self.all()
    sql = "
      SELECT * FROM coffees;
    "
    results = SqlRunner.run(sql)
    return results.map { |coffee_hash| Coffee.new(coffee_hash) }
  end

# self.delete_all

# .roaster

end
