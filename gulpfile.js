var gulp = require('gulp');

gulp.task('html', function() {
    return gulp.src('./src/*.html') .pipe(gulp.dest('./public/'));
});

gulp.task('js', function() {
    return gulp.src('./src/*.js') .pipe(gulp.dest('./public/'));
});

gulp.task('default', function() {
    gulp.watch('./src/*.html', ['html']);
    gulp.watch('./src/*.js', ['js']);
});
