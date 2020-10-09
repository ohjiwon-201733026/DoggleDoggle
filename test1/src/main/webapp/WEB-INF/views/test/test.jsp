<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body onload="init();">



<main id="js-page-content" role="main" class="page-content">
<input type="file" accept="video/*;capture=camcorder">

<h1>안녕 바보야 드디어 했다</h1>

<h1>Take a snapshot of the current video stream</h1>
   Click on the Start WebCam button.
     <p>
    <button onclick="startWebcam();">Start WebCam</button>
    <button onclick="stopWebcam();">Stop WebCam</button> 
       <button onclick="snapshot();">Take Snapshot</button> 
    </p>
    <video onclick="snapshot(this);" width=400 height=400 id="video" controls autoplay></video>
  <p>

        Screenshots : <p>
      <canvas  id="myCanvas" width="400" height="350"></canvas>  


    
    

</main>

    

</body>
<script type="text/javascript">

  //--------------------
      // GET USER MEDIA CODE
      //--------------------
          navigator.getUserMedia = ( navigator.getUserMedia ||
                             navigator.webkitGetUserMedia ||
                             navigator.mozGetUserMedia ||
                             navigator.msGetUserMedia);

      var video;
      var webcamStream;

      function startWebcam() {
        if (navigator.getUserMedia) {
           navigator.getUserMedia (

              // constraints
              {
                 video: true,
                 audio: false
              },

              // successCallback
              function(localMediaStream) {
                  video = document.querySelector('video');
                 video.src = window.URL.createObjectURL(localMediaStream);
                 webcamStream = localMediaStream;
              },

              // errorCallback
              function(err) {
                 console.log("The following error occured: " + err);
              }
           );
        } else {
           console.log("getUserMedia not supported");
        }  
      }

      function stopWebcam() {
          webcamStream.stop();
      }
      //---------------------
      // TAKE A SNAPSHOT CODE
      //---------------------
      var canvas, ctx;

      function init() {
        // Get the canvas and obtain a context for
        // drawing in it
        canvas = document.getElementById("myCanvas");
        ctx = canvas.getContext('2d');
      }

      function snapshot() {
         // Draws current image from the video element into the canvas
        ctx.drawImage(video, 0,0, canvas.width, canvas.height);
      }

      var stream, imageCapture; 

      function getMediaStream()
      { 
          window.navigator.mediaDevices.getUserMedia({video: true})
          .then(function(mediaStream)
          { 
              stream = mediaStream; 
              let mediaStreamTrack = mediaStream.getVideoTracks()[0];
              imageCapture = new ImageCapture(mediaStreamTrack);
              console.log(imageCapture);
          })
          .catch(error);
      }

      function error(error)
      { 
          console.error('error:', error); 
      }

      function takePhoto(img)
      { 
          const img = img || document.querySelector('img');

          imageCapture.takePhoto()
          .then(blob => {
              let url = window.URL.createObjectURL(blob);
              img.src = url;
              window.URL.revokeObjectURL(url); 
          })
          .catch(error);
      }; 

      /* just call */ 
      getMediaStream(); 

      /* and when you want to capture an image */ 
      takePhoto();

      
      </script>

</html>