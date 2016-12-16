# Url Shortener Code Test

We'd like you to create a URL shortening service.
- It should have a route where you can send a POST request with a URL in the body, which
returns a short URL.
- When you send a GET request to a previously returned URL, it should redirect to the
POSTed URL.
- We'd also like a simple frontend that can create and display shortened URLs without
reloading the page.
- For simplicity, don't worry about persisting the URLs between restarts (ie, we don't
need it to talk to an external database).

Use whatever languages and frameworks you are comfortable with. Don't worry about getting
the whole thing working flawlessly, this is more to see how you structure a program. Please
don't spend more than a few hours on it.

## Submission

Please fork this repository, write some code and update this README with a guide of how to
run it.

## How To Run It

It is an easy rails web app. There is only one view where the user can type a (super-long) URL and without refreshing the page, the webapp gives another short URL that redirect to the long URL.
The redirection should be opened in another tab.
