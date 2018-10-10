    ### Online Coffee Shop

    Interface combines functionality for owner and user.
    Browse Coffee selection, filter by Roaster, Origin or Taste (ext: Rating).
    See best sellers (if total_sold implemented).


    #### MVP

    * Track individual coffees, inc name, roaster, origin, process, esp/filter, tasting notes, in-stock/not, number sold.
    √
    * Track roaster, inc name, location, coffees sold.
    √
    * Be able to create, edit and delete roasters and coffees separately.
    √
    * Show a list of all coffees and all roasters separately.
    √
    * Filter list by Roaster, Region, Tasting Notes, Process, Profile, (ext: Rating)
          * price attribute? order by..

      * CRUD
      √
      * view for showing all coffees
      √
      * be able to click on each coffee for more info
      √
      * view for showing all roasters
      √
      * be able to click on each roaster for more info
---->
      * filter view of all coffees by roaster / profile / origin / process / taste / (ext: Rating)
---->
      * filter view of roasters by rating? (ext)
---->

√     RESTful ROUTES
      GET       /coffees                 INDEX
      GET       /coffees/:id             SHOW
      GET       /coffees/new             NEW
      POST      /coffees                 CREATE
      GET       /coffees/:id/edit        EDIT
      POST      /coffees/:id             UPDATE
      POST      /coffees/:id/delete      DESTROY

      GET       /roasters                INDEX
      GET       /roasters/:id            SHOW
      GET       /roasters/new            NEW
      POST      /roasters                CREATE
      GET       /roasters/:id/edit       EDIT
      POST      /roasters/:id            UPDATE
      POST      /roasters/:id/delete     DESTROY

    #### Possible Extensions

    * Reviews feature: name / coffee / roaster / date. Log reviews, add new review.
    * Add option to filter coffee list/roaster list by top rated.

      * add third class and table: Reviews
      * give coffee rating attribute, and roaster average rating attribute, which change for each new review.
      * add info about "out of ___ reviews"
      * filter/sort all coffees/roasters by popularity
