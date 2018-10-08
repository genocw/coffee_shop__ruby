### Online Coffee Shop

Interface for customers, not employees.
Browse Coffee selection, filter by Roaster, Region or Tasting Notes.
See best sellers.


#### MVP

* Track individual coffees, inc name, roaster, region, process, esp/filter, tasting notes, in-stock/not, number sold.
* Track roaster, inc name, location, coffees sold.
* Be able to create, edit and delete roasters and coffees separately.
* Show a list of all coffees, perhaps listings for those in stock and those coming soon.
* Filter list by Roaster, Region, Tasting Notes, Process, Best seller, esp/filter
* price attribute? order by..

  * CRUD
  * view for showing all coffees
  * be able to click on each coffee for more info
  * view for showing all roasters
  * be able to click on each roaster for more info
  * filter view of all coffees by roaster_id / profile / region / process / ?
  * filter view of roasters by location

  RESTful ROUTES
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

* Reviews feature: 1 customer, 1 coffee. List reviews, add new review, filter list by region/roaster/taste.
* Add option to filter coffee list/roaster list by top rated.
* Coming Soon section?
* Owner views Vs User views? (eg add new coffee, update out_of_stock)
* Glossary of terms? go to section upon clicking link

  * add third class and table: Reviews
  * give coffee rating attribute, and roaster average rating attribute, which change for each new review
  * view all reviews
  * filter/sort all coffees/roasters by popularity
  * owner views: add new coffee/roaster
