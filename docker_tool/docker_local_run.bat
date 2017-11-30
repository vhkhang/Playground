docker build --tag=xpergolden_rest_api .
docker run -it -p 8080:8080 -p 9990:9990 -it xpergolden_rest_api
pause