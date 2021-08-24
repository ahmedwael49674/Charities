## PHP Technical task

Attached you will find a DB dump
Seed the DB based on the dump

In the resulted DB you will have these 4 tables: `users`, `charities, `countries` and `user_roles`.
```
* users: id, email, password, token
* charities: id, name, country_id
* countries: id, name, code
* user_roles: id, role
```
1. You can choose to either build an API or use templates.
2. We do not require you to provide any authentication logic for this test, so don’t worry about having an employee or admin area.

## Tasks
1. Develop an Application model which represents the application a user has made.
    * The application should belong to a user.
    * The user it belongs to should have the employee role.
    * The application should have an associated charity.
    * The application will have a date it was created. This should be in the past.
    * The application will have a stage property. This will represent the following stages:
        * Organisation Approval - The application will enter this stage if the charity it is associated with is not approved.
        * Allow to Proceed - The application will enter this stage if the charity it is associated with is approved.
        * Paid - The application will enter this stage if an admin with the admin_applications moves it here.

2. Develop an endpoint to create an application Develop an endpoint that is able to create an application based on the details above.

3. Write a method for validating if a user can take certain
actions:

    Develop a method that can be used in endpoints for validating that a user has the appropriate permission level to take certain actions. Details of the conditions can be found in the UserRole schema section above. You should cover the following use cases:
    * Move an application.
    * Approve a charity
    * See reports
    * Create an application

4. Write a method for validating that an application can
be moved

    Develop a method that can be used in endpoints for validating that an application can be moved.
    An application can be moved forwards if the following conditions are met:
    * If the application’s date is in the past.
    * The charity is in the UK.
    * The charity is approved.

5. Develop an endpoint for progressing an application

    Develop an endpoint that allows an admin user with the admin_applications permission to move an application from ‘allow’ to ‘proceed to paid’.

    * The method should validate the user’s permission level is suitable for moving the application using the method you’ve developed.
    * The method should validate the application can be moved using the method you’ve developed.

## Overview

Simple application with Authentication, Authorization and multiple user levels used to:
 * Create charities that should be associated with the country.
 * Update charities approval.
 * Create Applications.
 * Move the Applications between stages `organisationApproval` , `allowToProceed`, `paid`.

## Steps
1. Install Laravel.
2. Set up migrations based on provided database.sql file.
3. Set up seeders to seed provided data.
4. Implement Authentication (simple auth with generated token cause it wasn't required in the task).
5. Implement an Authorization system using laravel policies.
6. Add Routes.
7. Implement models and set up relationships.
8. Implement controllers.
9. Implement Form requests to apply simple validation and authorization.
10. Implement Services to handle the logic.
11. Implement Validators which is another layer of validation with more complexity.
12. Implement Repositories to contain the database layer.

## How to run

### Docker
For running with docker use [Laravel Sail](https://laravel.com/docs/8.x/sail) package which is already included in `composer.json`, simply it's a `docker-compose` came with PHP, MySQL, and Redis and it's ready to start with one single command.
1. Clone the project.
2. Run `composer install`
3. Run `sail up -d`

### Local

1. Clone the project.
2. Run `composer install`
3. Set up .env
4. Run `php artisan migrate --seed` which will seed the database exactly like `database.sql`
5. Run `php artisan serv`

## API's
1.Applications :
* GET `/api/applications` : index all applications (only admin authorized for this api).
* POST `/api/applications` : create new application (only admin employee for this api).
* Patch `/api/applications/{application}` : update application stage (only admin admin_applications for this api).

2. Reports :
    * GET `/api/reports` : index all reports (only admin admin_reports for this api).

3. charities :
    * Patch `/api/charities/{charity}/approve` : approve given charity (only admin admins for this api).


## Used technologies
* [Laravel 8](https://laravel.com/docs/8.x)