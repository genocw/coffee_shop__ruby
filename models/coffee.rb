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

  def delete()
    sql = "
      DELETE FROM coffees
      WHERE id = $1;
    "
    values = [@id]
    SqlRunner.run(sql, values)
  end

  def self.all()
    sql = "
      SELECT * FROM coffees;
    "
    results = SqlRunner.run(sql)
    return results.map { |coffee_hash| Coffee.new(coffee_hash) }
  end

# sort by roaster in sql:
  def self.all_by_roaster
    sql = "
    SELECT coffees.* FROM
    coffees INNER JOIN roasters
    ON coffees.roaster_id = roasters.id
    ORDER BY roasters.name ASC;
    "
    results = SqlRunner.run(sql)
    return results.map { |coffee_hash| Coffee.new(coffee_hash) }
  end

# sort by roaster in ruby:
  def self.all_by_roaster
    return self.all.sort {|a, b| a.roaster.name <=> b.roaster.name }
  end

  # # ordered all function
  # # Selection
  # SELECT coffees.* FROM
  # # Table
  # coffees INNER JOIN roasters
  # ON coffee.roaster_id = roaster.id
  # # Sort
  # ORDER BY roasters.name ASC;
  #
  # return self.all.sort {||}

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
