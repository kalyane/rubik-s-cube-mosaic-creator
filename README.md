# Creating Mosaics with Rubik's Cubes and Neural Networks

This creative repository was developed as the Final Project of CS156 - Machine Learning for Data Science and Profit at Minerva University.

The idea is that people that doesn't have much knowledge about Rubik's cubes would be able to create a mosaic. Each cubie represents a pixel in the mosaic. For that reason, if you have a limited amount of cubes, it is better to create a pixel art with the smallest number of details so that the image is comprehensive.

## 1. How the system works?

It considers that all cubes are initially solved, with all faces with the same color. It uses the westernized Rubik's cube configuration. Always use the cube with the white facing you and the red facing up.

It creates a 2D representation of the Rubik's cube, where each line represents a face and each row the position of a color varing from 0 to 5.

It has the 12 possible moviments and with that it was generated a dataset containing more than 10 million data points representing a possible combination of the Rubik's cube and the depth (how many moviments to get to that configuration).

It was developed an Artificial Neural Network that receives a full cube configuration and returns the depth - amount of steps it is away from the solved Rubik's cube.

It is still needed to develop another Artificial Neural Network that receives a 3x3 matrix representing the pixels of the mosaic for one cube and outputs a possible valid cube configuration that contains those final pixels. 

After getting the final configuration, the algorithm will tries to find the path (sequence of moviments) so that you can transform a solved cube into an arrangement that constains the 3x3 pixels from your mosaic.

## 2. How to use it?

You need to use the [testing file](testing_neural_net.ipynb) where you can use the trained models to find the sequence of steps to create your mosaic.

Just change the mario_cube matrix on section 5 as the final configuration with the face of your final Rubik's cube.

## 3. Next steps

I aim to develop a website so that people without coding knowledge would be able to create mosaics in a more intuitive way.

I will also try to implement an algorithm to create a two-sided mosaic with that Neural Network.

## How to contact me?

Kalyane - Junior Minerva Student 
<kalyane@uni.minerva.edu>