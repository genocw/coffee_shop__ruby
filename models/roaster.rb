class Roaster

  attr_accessor :id, :name, :loaction, :total_sold

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
        location
      )
      VALUES ($1, $2, $3)
      RETURNING id;
    "
    values = [@name, @location]
    results = SqlRunner.run(sql, values)
    @id = results[0]["id"].to_i
  end

  # update?
      # needed?

  # self.all

  # self.delete_all


end
