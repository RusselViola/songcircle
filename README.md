![Build Status](https://codeship.com/projects/e8b357e0-76c1-0134-9322-463148144e7e/status?branch=master)
![Code Climate](https://codeclimate.com/github/RusselViola/songcircle.png)
[![Coverage Status](https://coveralls.io/repos/github/RusselViola/songcircle/badge.svg?branch=master)](https://coveralls.io/github/RusselViola/songcircle?branch=master)
# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby 2.3.1
* Rails 5.0.0.1

* ...
# Songcircle
* SongCircle is a songwriters utility that allows you to upload any .mp3, .mp4, .m4a, .aif, or .wav file and access them from anywhere.
* Uploading is performed using the Refile gem to amazon s3 bucket using CloudFront CDN.
* Web player and loading bars are made using WaveSurfer.js
* The web player is currently down due to issues with Cross Origin Resource sharing and permissions with AWS.
* Once the web player core functionality is fixed I will be implementing private circles of users and email invite functionality.

# songcircle
Check it out at:
https://songcircle.herokuapp.com
