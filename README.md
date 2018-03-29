# docker-nginx-redirect

A simple 301 redirect where you pass in an environment variable REDIRECT_URL to
the URL you want to 301 redirect to.

The main motivation for this was to use in an AWS ALB. In the nginx template, I
added the following:

```
    location /healthcheck {
        access_log off;
        return 200;
    }
```

This will allow the ALB to perform an HTTP healh check and not clunk up the
logs for the process.

## Notes

* I am primarily using this to redirect subdomains to a new URL. That means
    it will *not* append the request_uri.  So domain.com/my_request_uri would
    only redirect to `REDIRECT_URL` and NOT `REDIRECT_URL/my_request_uri`.

Author: Byron Kim
