# private-image

## To run image locally docker must be installed.

## Clone this image locally 
<pre><code>
git clone https://github.com/semyon1992/private-image/
</pre></code>
## Change current directory to downloaded repository 
<pre><code>
cd private-image
 
</code></pre>
## To build docker image type
<pre><code>
make 
</code></pre>

### after make commad is executed check that the image is apperaed in docker 
<pre><code>
docker images
</code></pre>
## To start container type 
<pre><code>
make install 
</code></pre>
## Check that container is created and allication is running 
<pre><code>
docker ps
</code></pre>
## if everything is success you should see in responce 
 <pre><code>
CONTAINER ID   IMAGE     COMMAND       CREATED         STATUS         PORTS                                                 NAMES
a8eea7bb89ac   jsapp     "npm start"   8 minutes ago   Up 8 minutes   0.0.0.0:3000->3000/tcp, :::3000->3000/tcp, 8080/tcp   jsapp
</code></pre>
