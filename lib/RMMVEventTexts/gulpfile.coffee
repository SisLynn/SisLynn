gulp = require 'gulp'
merge = require 'merge-stream'
rename = require 'gulp-rename'
coffee = require 'gulp-coffee'
uglify = require 'gulp-uglify'
insert = require 'gulp-insert'
include = require 'gulp-include'

iefo = ->
  insert.wrap """
    (function(){
  """, """
    })();
  """

qmlwrapper = ->
  insert.wrap """
    .pragma library
    var instance=(function(){var exports;
  """, """
    return exports})();
  """

gulp.task 'coffee', ->
  gulp.src './main.coffee'
    .pipe include()
    .pipe coffee bare: true
    .pipe iefo()
    .pipe rename 'RMMVEventTexts.js'
    .pipe gulp.dest './dist/'

gulp.task 'uglify', ['coffee'], ->
  gulp.src './dist/RMMVEventTexts.js'
    .pipe uglify()
    .pipe rename 'RMMVEventTexts.min.js'
    .pipe gulp.dest './dist/'

gulp.task 'qmljs', ['uglify'], ->
  qmlwrapper = ->
    insert.wrap """
      .pragma library
      var instance=(function(){var exports;
    """, """
      return exports})();
    """

  gulp.src './dist/RMMVEventTexts*.js'
    .pipe qmlwrapper()
    .pipe gulp.dest './dist-qml/'

gulp.task 'default', ['qmljs']