var gulp = require('gulp');

gulp.task('html', function() {
    return gulp.src('./src/*.html')
        .pipe(gulp.dest('./public/'));
});

gulp.task('default', function() {
    gulp.watch('./src/*.html', ['html']);
});
