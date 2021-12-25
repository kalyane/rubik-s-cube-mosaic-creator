# Creating Mosaics with Rubik's Cubes and Neural Networks

This creative repository was developed as the Final Project of CS156 - Machine Learning for Data Science and Profit at Minerva University.

The idea is that people that doesn't have much knowledge about Rubik's cubes would be able to create a mosaic. Each cubie represents a pixel in the mosaic. For that reason, if you have a limited amount of cubes, it is better to create a pixel art with the smallest number of details so that the image is comprehensive.

## 1. How the system works?

It considers that all cubes are initially solved, with all faces with the same color. It uses the westernized Rubik's cube configuration. Always use the cube with the white facing you and the red facing up.

It creates a 2D representation of the Rubik's cube, where each line represents a face and each row the position of a color varing from 0 to 5.

It has the 12 possible moviments and with that it was generated a dataset containing more than 10 million data points representing a possible combination of the Rubik's cube and the depth (how many moviments to get to that configuration).

There are two main Artificial Neural Networks, the first receives a 3x3 matrix representing the pixels of the mosaic for one cube. It outputs a possible cube configuration that contains those final pixels. The second receives a full cube configuration and returns the amount of steps it is away from the solved Rubik's cube.

After getting the final configuration, the algorithm will try to find the path (sequence of moviments) so that you can transform a solved cube into an arrangement that constains the 3x3 pixels from your mosaic.

## 2. How can I use it?

You need to use the [creator file](creating_mosaic.ipynb) where you can use the trained models to find the sequence of steps to create your mosaic.

Just change the variable matrix where you define the 3x3 configuration of one face of your final Rubik's cube.

## 3. Next steps

A website will be developed so that people without coding knowledge would be able to create mosaics in a more intuitive way.

I will also try to implement an algorithm to create a two-sided mosaic with that Neural Network.

## How to contact me?

Kalyane - Junior Minerva Student 
<kalyane@uni.minerva.edu>