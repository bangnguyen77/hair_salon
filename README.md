## HAIR SALON

### RUBY PRACTICE TEST ON JULY 15, 2016

##### By Bang Nguyen

## Description:
This is a web app that allows the owner to:
** add and remove stylists;
** add and remove clients;
** update information of clients

## Setup/Installation Requirements
In the terminal:
** open the project folder;
** type "postgres";
** type "psql" and then type the followings;
  *** CREATE DATABASE hair_salon;
  *** \c hair_salon ;
  *** CREATE TABLE stylists (id serial PRIMARY KEY, name varchar);
  *** CREATE TABLE clients (id serial PRIMARY KEY, name varchar, stylist_id int);
** run "ruby app.rb";
** visit http://localhost:4567 in the browser;


## Known Bugs

** No known bugs

## Technologies Used

** Ruby
** Sinatra
** SQL
** HTML, CSS and Boostrap

## Link to the webpage:


## Legal:
Copyright (c) 2016 Bang Nguyen
THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
