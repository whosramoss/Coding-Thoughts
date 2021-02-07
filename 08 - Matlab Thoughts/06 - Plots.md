# Plots 

## Curves 

### The plot (x, y) function can be used to plot vectors of the same size. When used with only one vector, the plot function uses the index of the elements in variable x and the values of the vector in variable y

- Plotting a rad vector that goes from -pi to pi, with increments of pi / 90.
```matlab
rad = −pi : pi/90 : pi
plot(rad)
```
- Plotting the rad vector on variable x and its cosine on variable y
```matlab
rad = −pi : pi/90 : pi
plot(rad, cos(rad))
```

### Whenever a chart is plotted, the previous one goes away. To keep the previous chart, use the "hold on" command. To release the chart, use "hold off". The line color, shape and thickness can be changed with additional parameters in the plot() function.

- Plotting the sine and cosine of rad on the same graph, with the
'go' and 'r *' options as the third argument of the plot function
```matlab
rad = −pi : pi/90 : pi
plot(rad, sin(rad), 'go')
hold on
plot(rad, cos(rad, 'r∗'))
```
- Plotting the functions y = x; y = x^2 and y = x^3, for x ranging from -5 to 5, with a range of 0.01. Plot the three functions on the same chart with different colors and create a subtitle with the legend () function.
```matlab
x = −5 : 0.01 : 5;
plot(x, x, 'b') % b = blue
hold on
plot(x, x.^2, 'r') % r = red
plot(x, x.^3, 'g') % g = green
legend('x', 'x^2', 'x^3')
```
## Surfaces 

### For visualization of parametric surfaces in R3, MATLAB has two functions, 'surf()' and 'mesh()'. In the same way of the plot(), these functions take as parameters 3 matrices X, Y and Z and display a polygonal reconstruction of the points p(i, j) = (x(i, j), y(i, j), z(i , j)). 

- Draw a sphere
```matlab
t = -pi : 0.5 : pi ; 
s =  -pi : 0.5 : pi; 
x = transpose(cos(t)) * sin(s);         % x(i,j) = cos(t(i))*sin(s(j)) 
y = transpose(sin(t)) * sin(s);         % y(i,j) = sin(t(i))*sin(s(j))
z = ones([1  length(t)])' * cos(s);     % z(i,j) = cos(s(j)) 
surf(x, y, z);
```
### The most common case of surface visualization is two-parameter function graphs - z = f(x, y). In this case the surf and mesh functions allow a relaxation in the input parameters. The x and y parameters no longer have to be arrays, they can be vectors. 

- Two-dimensional gaussian f(x, y) = exp(-x2)*exp (-y2) 
```matlab
x = -2:0.1:2 ; 
y = -2:0.1:2 ;
e =  exp(-(x. * x))) * exp(-(y. * y);
z = transpose(e); 
surf(x, y, z, 'FaceColor', 'red','EdgeColor','none' ); 
camlight left; lighting phong;      %  to increment the chart
```

## Images 

### MATLAB also allows arrays to be viewed as images. It is also possible to read images from BMP, JPEG, TIF, GIF ... files and save this image in a matrix, which enables image processing and processing.

- Gaussian of the example above, discretized in the matrix z.
```matlab
x = -2:0.1:2 ; 
y = -2:0.1:2 ; 
z = transpose(exp(-(x .* x))) * exp(-(y.* y)); 
imagesc(z) ;  % command for image preview
```
 