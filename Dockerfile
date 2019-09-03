#1 Use an existing docker image as a base
FROM alpine

#2 Download and install a dependency
RUN apk add --update redis
RUN apk add --update gcc        # just some other dependency to install (gnu c in this case)

#3 Tell the image what to do when it d'start as a container
CMD ["redis-server"]