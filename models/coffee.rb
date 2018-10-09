require_relative("../db/sql_runner.rb")

class Coffee

  attr_accessor :id, :name, :roaster_id, :profile, :origin, :process, :primary_taste, :in_stock, :total_sold, :image

  def initialize(options)
    @id = options["id"].to_i if options["id"]
    @name = options["name"]
    @roaster_id = options["roaster_id"].to_i if options["roaster_id"]
    @profile = options["profile"]
    @origin = options["origin"]
    @process = options["process"]
    @primary_taste = options["primary_taste"]
    @image = options["image"]
    @in_stock = true
    @total_sold = 0
  end

# .in_stock? method to get boolean.
      # will be distinct from attribute?
  def in_stock?()
    if @in_stock == "t" || true
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
        origin,
        process,
        primary_taste,
        in_stock,
        total_sold,
        image
      )
      VALUES ($1, $2, $3, $4, $5, $6, $7, $8, $9)
      RETURNING id;
    "
    values = [@name, @roaster_id, @profile, @origin, @process, @primary_taste, @in_stock, @total_sold, @image]
    results = SqlRunner.run(sql, values)
    @id = results[0]["id"].to_i
  end

  def update()
    sql = "
      UPDATE coffees
      SET (
        name,
        roaster_id,
        profile,
        origin,
        process,
        primary_taste,
        in_stock,
        total_sold,
        image
      ) = ($1, $2, $3, $4, $5, $6, $7, $8, $9)
      WHERE id = $10;
    "
    values = [@name, @roaster_id, @profile, @origin, @process, @primary_taste, @in_stock, @total_sold, @image, @id]
    SqlRunner.run(sql, values)
  end

  def self.all()
    sql = "
      SELECT * FROM coffees;
    "
    results = SqlRunner.run(sql)
    return results.map { |coffee_hash| Coffee.new(coffee_hash) }
  end

  def self.delete_all()
    sql = "
      DELETE FROM coffees;
    "
    SqlRunner.run(sql)
  end

  def roaster()
    sql = "
      SELECT * FROM roasters
      WHERE id =  $1;
    "
    values = [@roaster_id]
    results = SqlRunner.run(sql, values)
    return Roaster.new(results[0])

    # does it matter that total_sold by this roaster will now be 0?
  end

  def self.find(id)
    sql = "
      SELECT * FROM coffees
      WHERE id = $1;
    "
    values = [id]
    results = SqlRunner.run(sql, values)
    return Coffee.new(results[0]) if results.count > 0
    return nil
  end

end
