Build an app which allows a shop owner and customers to track the shop's produce.

### Online Coffee Shop
Interface will combine functionality for owner and customer, for example being able to browse a selection and add a new product.

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
  √
  * filter view of all coffees
  √
  * filter view of roasters by rating? (ext)
---->

√     RESTful ROUTES
  GET       /beans                 INDEX
  GET       /beans/:id             SHOW
  GET       /beans/new             NEW
  POST      /beans                 CREATE
  GET       /beans/:id/edit        EDIT
  POST      /beans/:id             UPDATE
  POST      /beans/:id/delete      DESTROY

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
