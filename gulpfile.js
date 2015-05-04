var gulp = require('gulp');
var mocha = require('gulp-mocha');

gulp.task('mocha', function() {
    return gulp.src(['test/*.js'], { read: false })
        .pipe(mocha({ reporter: 'list' }));
});

gulp.task('html', function() {
    return gulp.src('./src/*.html') .pipe(gulp.dest('./public/'));
});

gulp.task('js', function() {
    return gulp.src('./src/*.js') .pipe(gulp.dest('./public/'));
});

gulp.task('default', function() {
    gulp.watch(['lib/**', 'test/**'], ['mocha']);
    gulp.watch('./src/*.html', ['html']);
    gulp.watch('./src/*.js', ['js']);
});
