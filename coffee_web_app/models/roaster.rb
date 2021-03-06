require_relative("../db/sql_runner.rb")

class Roaster

  attr_accessor :id, :name, :location, :rating, :blurb_sml, :blurb_lrg, :image

  def initialize(options)
    @id = options["id"].to_i if options["id"]
    @name = options["name"]
    @location = options["location"]
    @rating = 0
    @blurb_sml = options["blurb_sml"]
    @blurb_lrg = options["blurb_lrg"]
    @image = options["image"]
  end

  # .save
  def save()
    sql = "
      INSERT INTO roasters (
        name,
        location,
        rating,
        blurb_sml,
        blurb_lrg,
        image
      )
      VALUES ($1, $2, $3, $4, $5, $6)
      RETURNING id;
    "
    values = [@name, @location, @rating, @blurb_sml, @blurb_lrg, @image]
    results = SqlRunner.run(sql, values)
    @id = results[0]["id"].to_i
  end

  def update()
    sql = "
      UPDATE roasters
      SET (
        name,
        location,
        rating,
        blurb_sml,
        blurb_lrg,
        image
      ) = ($1, $2, $3, $4, $5, $6)
      WHERE id = $7;
    "
    values = [@name, @location, @rating, @blurb_sml, @blurb_lrg, @image, @id]
    SqlRunner.run(sql, values)
  end

  def delete
    sql = "
      DELETE FROM roasters
      WHERE id = $1;
    "
    values = [@id]
    SqlRunner.run(sql, values)
  end

  def self.all()
    sql = "
      SELECT * FROM roasters;
    "
    results = SqlRunner.run(sql)
    return results.map { |roaster_hash| Roaster.new(roaster_hash) }
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

  def self.find(id)
    sql = "
      SELECT * FROM roasters
      WHERE id = $1;
    "
    values = [id]
    results = SqlRunner.run(sql, values)
    return Roaster.new(results[0])
  end

end
