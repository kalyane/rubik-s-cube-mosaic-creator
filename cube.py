import matplotlib.pyplot as plt
import matplotlib

def create_cube_visualization(cube):
    # color 6 is gray
    full_matrix = [ [ 6 for i in range(12) ] for j in range(9) ]

    # white face 
    count = 0
    for i in range(3):
        for j in range(3):
            full_matrix[3+i][3+j] = cube[0][count]
            count+=1

    # yellow face 
    count = 0
    for i in range(3):
        for j in range(3):
            full_matrix[3+i][9+j] = cube[1][count]
            count+=1

    # red face 
    count = 0
    for i in range(3):
        for j in range(3):
            full_matrix[i][3+j] = cube[2][count]
            count+=1

    # orange face 
    count = 0
    for i in range(3):
        for j in range(3):
            full_matrix[6+i][3+j] = cube[3][count]
            count+=1

    # blue face 
    count = 0
    for i in range(3):
        for j in range(3):
            full_matrix[3+i][j] = cube[4][count]
            count+=1
    
    # green face 
    count = 0
    for i in range(3):
        for j in range(3):
            full_matrix[3+i][6+j] = cube[5][count]
            count+=1

    cmap = matplotlib.colors.LinearSegmentedColormap.from_list("", ["white","yellow","red","orange","blue","green", "gray"])

    plt.imshow(full_matrix, cmap=cmap)

def right(cube):
    # creating blank rubiks cubes
    previous_cube = [ [0 for i in range(9)] for j in range(6) ]
    new_cube = [ [0 for i in range(9)] for j in range(6) ]

    for i in range(6):
        for j in range(9):
            previous_cube[i][j] = cube[i][j]
            new_cube[i][j] = cube[i][j]

    # red face (2) 2, 5, 8 receives white face (0) 2, 5, 8
    new_cube[2][2] = previous_cube[0][2]
    new_cube[2][5] = previous_cube[0][5]
    new_cube[2][8] = previous_cube[0][8]

    # yellow face (1) 6, 3, 0 receives red face (2) 2, 5, 8
    new_cube[1][6] = previous_cube[2][2]
    new_cube[1][3] = previous_cube[2][5]
    new_cube[1][0] = previous_cube[2][8]

    # orange face (3) 2, 5, 8 receives yellow face (1) 6, 3, 0
    new_cube[3][2] = previous_cube[1][6]
    new_cube[3][5] = previous_cube[1][3]
    new_cube[3][8] = previous_cube[1][0]

    # white face (0) 2, 5, 8 receives orange face (3) 2, 5, 8
    new_cube[0][2] = previous_cube[3][2]
    new_cube[0][5] = previous_cube[3][5]
    new_cube[0][8] = previous_cube[3][8]

    # turning the green face clockwise
    new_cube[5][0] = previous_cube[5][6]
    new_cube[5][1] = previous_cube[5][3]
    new_cube[5][2] = previous_cube[5][0]

    new_cube[5][2] = previous_cube[5][0]
    new_cube[5][5] = previous_cube[5][1]
    new_cube[5][8] = previous_cube[5][2]

    new_cube[5][8] = previous_cube[5][2]
    new_cube[5][7] = previous_cube[5][5]
    new_cube[5][6] = previous_cube[5][8]

    new_cube[5][6] = previous_cube[5][8]
    new_cube[5][3] = previous_cube[5][7]
    new_cube[5][0] = previous_cube[5][6]

    return new_cube

def right_inverse(cube):
    # creating blank rubiks cubes
    previous_cube = [ [0 for i in range(9)] for j in range(6) ]
    new_cube = [ [0 for i in range(9)] for j in range(6) ]

    for i in range(6):
        for j in range(9):
            previous_cube[i][j] = cube[i][j]
            new_cube[i][j] = cube[i][j]

    # red face (2) 2, 5, 8 receives yellow face (1) 0, 3, 6
    new_cube[2][2] = previous_cube[1][6]
    new_cube[2][5] = previous_cube[1][3]
    new_cube[2][8] = previous_cube[1][0]

    # yellow face (1) 6, 3, 0 receives orange face (3) 2, 5, 8
    new_cube[1][6] = previous_cube[3][2]
    new_cube[1][3] = previous_cube[3][5]
    new_cube[1][0] = previous_cube[3][8]

    # orange face (3) 2, 5, 8 receives white face (0) 2, 5, 8
    new_cube[3][2] = previous_cube[0][2]
    new_cube[3][5] = previous_cube[0][5]
    new_cube[3][8] = previous_cube[0][8]

    # white face (0) 2, 5, 8 receives red face (2) 2, 5, 8
    new_cube[0][2] = previous_cube[2][2]
    new_cube[0][5] = previous_cube[2][5]
    new_cube[0][8] = previous_cube[2][8]

    # turning the green face counter clockwise
    new_cube[5][0] = previous_cube[5][2]
    new_cube[5][1] = previous_cube[5][5]
    new_cube[5][2] = previous_cube[5][8]

    new_cube[5][2] = previous_cube[5][8]
    new_cube[5][5] = previous_cube[5][7]
    new_cube[5][8] = previous_cube[5][6]

    new_cube[5][6] = previous_cube[5][0]
    new_cube[5][7] = previous_cube[5][3]
    new_cube[5][8] = previous_cube[5][6]

    new_cube[5][0] = previous_cube[5][2]
    new_cube[5][3] = previous_cube[5][1]
    new_cube[5][6] = previous_cube[5][0]
    
    return new_cube

def left(cube):
    # creating blank rubiks cubes
    previous_cube = [ [0 for i in range(9)] for j in range(6) ]
    new_cube = [ [0 for i in range(9)] for j in range(6) ]

    for i in range(6):
        for j in range(9):
            previous_cube[i][j] = cube[i][j]
            new_cube[i][j] = cube[i][j]

    # red face (2) 0, 3, 6 receives yellow face (1) 8, 5, 2
    new_cube[2][0] = previous_cube[1][8]
    new_cube[2][3] = previous_cube[1][5]
    new_cube[2][6] = previous_cube[1][2]

    # yellow face (1) 2, 5, 8 receives orange face (3) 6, 3, 0
    new_cube[1][2] = previous_cube[3][6]
    new_cube[1][5] = previous_cube[3][3]
    new_cube[1][8] = previous_cube[3][0]

    # orange face (3) 0, 3, 6 receives white face (0) 0, 3, 6
    new_cube[3][0] = previous_cube[0][0]
    new_cube[3][3] = previous_cube[0][3]
    new_cube[3][6] = previous_cube[0][6]

    # white face (0) 0, 3, 6 receives red face (2) 0, 3, 6
    new_cube[0][0] = previous_cube[2][0]
    new_cube[0][3] = previous_cube[2][3]
    new_cube[0][6] = previous_cube[2][6]

    # turning the blue face clockwise
    new_cube[4][0] = previous_cube[4][6]
    new_cube[4][1] = previous_cube[4][3]
    new_cube[4][2] = previous_cube[4][0]

    new_cube[4][2] = previous_cube[4][0]
    new_cube[4][5] = previous_cube[4][1]
    new_cube[4][8] = previous_cube[4][2]

    new_cube[4][8] = previous_cube[4][2]
    new_cube[4][7] = previous_cube[4][5]
    new_cube[4][6] = previous_cube[4][8]

    new_cube[4][6] = previous_cube[4][8]
    new_cube[4][3] = previous_cube[4][7]
    new_cube[4][0] = previous_cube[4][6]
    
    return new_cube

def left_inverse(cube):
    # creating blank rubiks cubes
    previous_cube = [ [0 for i in range(9)] for j in range(6) ]
    new_cube = [ [0 for i in range(9)] for j in range(6) ]

    for i in range(6):
        for j in range(9):
            previous_cube[i][j] = cube[i][j]
            new_cube[i][j] = cube[i][j]

    # red face (2) 0, 3, 6 receives white face (0) 0, 3, 6
    new_cube[2][0] = previous_cube[0][0]
    new_cube[2][3] = previous_cube[0][3]
    new_cube[2][6] = previous_cube[0][6]

    # yellow face (1) 2, 5, 8 receives red face (2) 6, 3, 0
    new_cube[1][2] = previous_cube[2][6]
    new_cube[1][5] = previous_cube[2][3]
    new_cube[1][8] = previous_cube[2][0]

    # orange face (3) 0, 3, 6 receives yellow face (1) 8, 5, 2
    new_cube[3][0] = previous_cube[1][8]
    new_cube[3][3] = previous_cube[1][5]
    new_cube[3][6] = previous_cube[1][2]

    # white face (0) 0, 3, 6 receives orange face (3) 0, 3, 6
    new_cube[0][0] = previous_cube[3][0]
    new_cube[0][3] = previous_cube[3][3]
    new_cube[0][6] = previous_cube[3][6]

    # turning the blue face counter clockwise
    new_cube[4][0] = previous_cube[4][2]
    new_cube[4][1] = previous_cube[4][5]
    new_cube[4][2] = previous_cube[4][8]

    new_cube[4][2] = previous_cube[4][8]
    new_cube[4][5] = previous_cube[4][7]
    new_cube[4][8] = previous_cube[4][6]

    new_cube[4][6] = previous_cube[4][0]
    new_cube[4][7] = previous_cube[4][3]
    new_cube[4][8] = previous_cube[4][6]

    new_cube[4][0] = previous_cube[4][2]
    new_cube[4][3] = previous_cube[4][1]
    new_cube[4][6] = previous_cube[4][0]
    
    return new_cube

def back(cube):
    # creating blank rubiks cubes
    previous_cube = [ [0 for i in range(9)] for j in range(6) ]
    new_cube = [ [0 for i in range(9)] for j in range(6) ]

    for i in range(6):
        for j in range(9):
            previous_cube[i][j] = cube[i][j]
            new_cube[i][j] = cube[i][j]

    # red face (2) 0, 1, 2 receives green face (5) 2, 5, 8
    new_cube[2][0] = previous_cube[5][2]
    new_cube[2][1] = previous_cube[5][5]
    new_cube[2][2] = previous_cube[5][8]

    # blue face (4) 0, 3, 6 receives red face (2) 2, 1, 0
    new_cube[4][0] = previous_cube[2][2]
    new_cube[4][3] = previous_cube[2][1]
    new_cube[4][6] = previous_cube[2][0]

    # orange face (3) 6, 7, 8 receives blue face (4) 0, 3, 6
    new_cube[3][6] = previous_cube[4][0]
    new_cube[3][7] = previous_cube[4][3]
    new_cube[3][8] = previous_cube[4][6]

    # green face (5) 2, 5, 8 receives orange face (3) 8, 7, 6
    new_cube[5][2] = previous_cube[3][8]
    new_cube[5][5] = previous_cube[3][7]
    new_cube[5][8] = previous_cube[3][6]

    # turning the yellow face clockwise
    new_cube[1][0] = previous_cube[1][6]
    new_cube[1][1] = previous_cube[1][3]
    new_cube[1][2] = previous_cube[1][0]

    new_cube[1][2] = previous_cube[1][0]
    new_cube[1][5] = previous_cube[1][1]
    new_cube[1][8] = previous_cube[1][2]

    new_cube[1][8] = previous_cube[1][2]
    new_cube[1][7] = previous_cube[1][5]
    new_cube[1][6] = previous_cube[1][8]

    new_cube[1][6] = previous_cube[1][8]
    new_cube[1][3] = previous_cube[1][7]
    new_cube[1][0] = previous_cube[1][6]

    return new_cube

def back_inverse(cube):
    # creating blank rubiks cubes
    previous_cube = [ [0 for i in range(9)] for j in range(6) ]
    new_cube = [ [0 for i in range(9)] for j in range(6) ]

    for i in range(6):
        for j in range(9):
            previous_cube[i][j] = cube[i][j]
            new_cube[i][j] = cube[i][j]

    # red face (2) 0, 1, 2 receives blue face (4) 6, 3, 0
    new_cube[2][0] = previous_cube[4][6]
    new_cube[2][1] = previous_cube[4][3]
    new_cube[2][2] = previous_cube[4][0]

    # blue face (4) 0, 3, 6 receives orange face (3) 6, 7, 8
    new_cube[4][0] = previous_cube[3][6]
    new_cube[4][3] = previous_cube[3][7]
    new_cube[4][6] = previous_cube[3][8]

    # orange face (3) 6, 7, 8 receives green face (5) 8, 5, 2
    new_cube[3][6] = previous_cube[5][8]
    new_cube[3][7] = previous_cube[5][5]
    new_cube[3][8] = previous_cube[5][2]

    # green face (5) 2, 5, 8 receives red face (2) 0, 1, 2
    new_cube[5][2] = previous_cube[2][0]
    new_cube[5][5] = previous_cube[2][1]
    new_cube[5][8] = previous_cube[2][2]

    # turning the yellow face counter clockwise
    new_cube[1][0] = previous_cube[1][2]
    new_cube[1][1] = previous_cube[1][5]
    new_cube[1][2] = previous_cube[1][8]

    new_cube[1][2] = previous_cube[1][8]
    new_cube[1][5] = previous_cube[1][7]
    new_cube[1][8] = previous_cube[1][6]

    new_cube[1][6] = previous_cube[1][0]
    new_cube[1][7] = previous_cube[1][3]
    new_cube[1][8] = previous_cube[1][6]

    new_cube[1][0] = previous_cube[1][2]
    new_cube[1][3] = previous_cube[1][1]
    new_cube[1][6] = previous_cube[1][0]

    return new_cube

def down(cube):
    # creating blank rubiks cubes
    previous_cube = [ [0 for i in range(9)] for j in range(6) ]
    new_cube = [ [0 for i in range(9)] for j in range(6) ]

    for i in range(6):
        for j in range(9):
            previous_cube[i][j] = cube[i][j]
            new_cube[i][j] = cube[i][j]

    # blue face (4) 6, 7, 8 receives yellow face (1) 6, 7, 8
    new_cube[4][6] = previous_cube[1][6]
    new_cube[4][7] = previous_cube[1][7]
    new_cube[4][8] = previous_cube[1][8]

    # white face (0) 6, 7, 8 receives blue face (4) 6, 7, 8
    new_cube[0][6] = previous_cube[4][6]
    new_cube[0][7] = previous_cube[4][7]
    new_cube[0][8] = previous_cube[4][8]

    # green face (5) 6, 7, 8 receives white face (0) 6, 7, 8
    new_cube[5][6] = previous_cube[0][6]
    new_cube[5][7] = previous_cube[0][7]
    new_cube[5][8] = previous_cube[0][8]

    # yellow face (1) 6, 7, 8 receives green face (5) 6, 7, 8
    new_cube[1][6] = previous_cube[5][6]
    new_cube[1][7] = previous_cube[5][7]
    new_cube[1][8] = previous_cube[5][8]

    # turning the orange face clockwise
    new_cube[3][0] = previous_cube[3][6]
    new_cube[3][1] = previous_cube[3][3]
    new_cube[3][2] = previous_cube[3][0]

    new_cube[3][2] = previous_cube[3][0]
    new_cube[3][5] = previous_cube[3][1]
    new_cube[3][8] = previous_cube[3][2]

    new_cube[3][8] = previous_cube[3][2]
    new_cube[3][7] = previous_cube[3][5]
    new_cube[3][6] = previous_cube[3][8]

    new_cube[3][6] = previous_cube[3][8]
    new_cube[3][3] = previous_cube[3][7]
    new_cube[3][0] = previous_cube[3][6]

    return new_cube

def down_inverse(cube):
    # creating blank rubiks cubes
    previous_cube = [ [0 for i in range(9)] for j in range(6) ]
    new_cube = [ [0 for i in range(9)] for j in range(6) ]

    for i in range(6):
        for j in range(9):
            previous_cube[i][j] = cube[i][j]
            new_cube[i][j] = cube[i][j]

    # blue face (4) 6, 7, 8 receives white face (0) 6, 7, 8
    new_cube[4][6] = previous_cube[0][6]
    new_cube[4][7] = previous_cube[0][7]
    new_cube[4][8] = previous_cube[0][8]

    # white face (0) 6, 7, 8 receives green face (5) 6, 7, 8
    new_cube[0][6] = previous_cube[5][6]
    new_cube[0][7] = previous_cube[5][7]
    new_cube[0][8] = previous_cube[5][8]

    # green face (5) 6, 7, 8 receives yellow face (1) 6, 7, 8
    new_cube[5][6] = previous_cube[1][6]
    new_cube[5][7] = previous_cube[1][7]
    new_cube[5][8] = previous_cube[1][8]

    # yellow face (1) 6, 7, 8 receives blue face (4) 6, 7, 8
    new_cube[1][6] = previous_cube[4][6]
    new_cube[1][7] = previous_cube[4][7]
    new_cube[1][8] = previous_cube[4][8]

    # turning the orange face counter clockwise
    new_cube[3][0] = previous_cube[3][2]
    new_cube[3][1] = previous_cube[3][5]
    new_cube[3][2] = previous_cube[3][8]

    new_cube[3][2] = previous_cube[3][8]
    new_cube[3][5] = previous_cube[3][7]
    new_cube[3][8] = previous_cube[3][6]

    new_cube[3][6] = previous_cube[3][0]
    new_cube[3][7] = previous_cube[3][3]
    new_cube[3][8] = previous_cube[3][6]

    new_cube[3][0] = previous_cube[3][2]
    new_cube[3][3] = previous_cube[3][1]
    new_cube[3][6] = previous_cube[3][0]

    return new_cube

def front(cube):
    # creating blank rubiks cubes
    previous_cube = [ [0 for i in range(9)] for j in range(6) ]
    new_cube = [ [0 for i in range(9)] for j in range(6) ]

    for i in range(6):
        for j in range(9):
            previous_cube[i][j] = cube[i][j]
            new_cube[i][j] = cube[i][j]

    # red face (2) 6, 7, 8 receives blue face (4) 8, 5, 2
    new_cube[2][6] = previous_cube[4][8]
    new_cube[2][7] = previous_cube[4][5]
    new_cube[2][8] = previous_cube[4][2]

    # blue face (4) 2, 5, 8 receives orange face (3) 0, 1, 2
    new_cube[4][2] = previous_cube[3][0]
    new_cube[4][5] = previous_cube[3][1]
    new_cube[4][8] = previous_cube[3][2]

    # orange face (3) 0, 1, 2 receives green face (5) 6, 3, 0
    new_cube[3][0] = previous_cube[5][6]
    new_cube[3][1] = previous_cube[5][3]
    new_cube[3][2] = previous_cube[5][0]

    # green face (5) 0, 3, 6 receives red face (2) 6, 7, 8
    new_cube[5][0] = previous_cube[2][6]
    new_cube[5][3] = previous_cube[2][7]
    new_cube[5][6] = previous_cube[2][8]

    # turning the white face clockwise
    new_cube[0][0] = previous_cube[0][6]
    new_cube[0][1] = previous_cube[0][3]
    new_cube[0][2] = previous_cube[0][0]

    new_cube[0][2] = previous_cube[0][0]
    new_cube[0][5] = previous_cube[0][1]
    new_cube[0][8] = previous_cube[0][2]

    new_cube[0][8] = previous_cube[0][2]
    new_cube[0][7] = previous_cube[0][5]
    new_cube[0][6] = previous_cube[0][8]

    new_cube[0][6] = previous_cube[0][8]
    new_cube[0][3] = previous_cube[0][7]
    new_cube[0][0] = previous_cube[0][6]

    return new_cube

def front_inverse(cube):
    # creating blank rubiks cubes
    previous_cube = [ [0 for i in range(9)] for j in range(6) ]
    new_cube = [ [0 for i in range(9)] for j in range(6) ]

    for i in range(6):
        for j in range(9):
            previous_cube[i][j] = cube[i][j]
            new_cube[i][j] = cube[i][j]

    # red face (2) 6, 7, 8 receives green face (5) 0, 3, 6
    new_cube[2][6] = previous_cube[5][0]
    new_cube[2][7] = previous_cube[5][3]
    new_cube[2][8] = previous_cube[5][6]

    # blue face (4) 2, 5, 8 receives red face (2) 8, 7, 6
    new_cube[4][2] = previous_cube[2][8]
    new_cube[4][5] = previous_cube[2][7]
    new_cube[4][8] = previous_cube[2][6]

    # orange face (3) 0, 1, 2 receives blue face (4) 2, 5, 8
    new_cube[3][0] = previous_cube[4][2]
    new_cube[3][1] = previous_cube[4][5]
    new_cube[3][2] = previous_cube[4][8]

    # green face (5) 0, 3, 6 receives orange face (3) 2, 1, 0
    new_cube[5][0] = previous_cube[3][2]
    new_cube[5][3] = previous_cube[3][1]
    new_cube[5][6] = previous_cube[3][0]

    # turning the white face counter clockwise
    new_cube[0][0] = previous_cube[0][2]
    new_cube[0][1] = previous_cube[0][5]
    new_cube[0][2] = previous_cube[0][8]

    new_cube[0][2] = previous_cube[0][8]
    new_cube[0][5] = previous_cube[0][7]
    new_cube[0][8] = previous_cube[0][6]

    new_cube[0][6] = previous_cube[0][0]
    new_cube[0][7] = previous_cube[0][3]
    new_cube[0][8] = previous_cube[0][6]

    new_cube[0][0] = previous_cube[0][2]
    new_cube[0][3] = previous_cube[0][1]
    new_cube[0][6] = previous_cube[0][0]

    return new_cube

def up(cube):
    # creating blank rubiks cubes
    previous_cube = [ [0 for i in range(9)] for j in range(6) ]
    new_cube = [ [0 for i in range(9)] for j in range(6) ]

    for i in range(6):
        for j in range(9):
            previous_cube[i][j] = cube[i][j]
            new_cube[i][j] = cube[i][j]

    # blue face (4) 0, 1, 2 receives white face (0) 0, 1, 2
    new_cube[4][0] = previous_cube[0][0]
    new_cube[4][1] = previous_cube[0][1]
    new_cube[4][2] = previous_cube[0][2]

    # white face (0) 0, 1, 2 receives green face (5) 0, 1, 2
    new_cube[0][0] = previous_cube[5][0]
    new_cube[0][1] = previous_cube[5][1]
    new_cube[0][2] = previous_cube[5][2]

    # green face (5) 0, 1, 2 receives yellow face (1) 0, 1, 2
    new_cube[5][0] = previous_cube[1][0]
    new_cube[5][1] = previous_cube[1][1]
    new_cube[5][2] = previous_cube[1][2]

    # yellow face (1) 0, 1, 2 receives blue face (4) 0, 1, 2
    new_cube[1][0] = previous_cube[4][0]
    new_cube[1][1] = previous_cube[4][1]
    new_cube[1][2] = previous_cube[4][2]

    # turning the red face clockwise
    new_cube[2][0] = previous_cube[2][6]
    new_cube[2][1] = previous_cube[2][3]
    new_cube[2][2] = previous_cube[2][0]

    new_cube[2][2] = previous_cube[2][0]
    new_cube[2][5] = previous_cube[2][1]
    new_cube[2][8] = previous_cube[2][2]

    new_cube[2][8] = previous_cube[2][2]
    new_cube[2][7] = previous_cube[2][5]
    new_cube[2][6] = previous_cube[2][8]

    new_cube[2][6] = previous_cube[2][8]
    new_cube[2][3] = previous_cube[2][7]
    new_cube[2][0] = previous_cube[2][6]
    
    return new_cube

def up_inverse(cube):
    # creating blank rubiks cubes
    previous_cube = [ [0 for i in range(9)] for j in range(6) ]
    new_cube = [ [0 for i in range(9)] for j in range(6) ]

    for i in range(6):
        for j in range(9):
            previous_cube[i][j] = cube[i][j]
            new_cube[i][j] = cube[i][j]

    # blue face (4) 0, 1, 2 receives yellow face (1) 0, 1, 2
    new_cube[4][0] = previous_cube[1][0]
    new_cube[4][1] = previous_cube[1][1]
    new_cube[4][2] = previous_cube[1][2]

    # white face (0) 0, 1, 2 receives blue face (4) 0, 1, 2
    new_cube[0][0] = previous_cube[4][0]
    new_cube[0][1] = previous_cube[4][1]
    new_cube[0][2] = previous_cube[4][2]

    # green face (5) 0, 1, 2 receives white face (0) 0, 1, 2
    new_cube[5][0] = previous_cube[0][0]
    new_cube[5][1] = previous_cube[0][1]
    new_cube[5][2] = previous_cube[0][2]

    # yellow face (1) 0, 1, 2 receives green face (5) 0, 1, 2
    new_cube[1][0] = previous_cube[5][0]
    new_cube[1][1] = previous_cube[5][1]
    new_cube[1][2] = previous_cube[5][2]

    # turning the red face counter clockwise
    new_cube[2][0] = previous_cube[2][2]
    new_cube[2][1] = previous_cube[2][5]
    new_cube[2][2] = previous_cube[2][8]

    new_cube[2][2] = previous_cube[2][8]
    new_cube[2][5] = previous_cube[2][7]
    new_cube[2][8] = previous_cube[2][6]

    new_cube[2][6] = previous_cube[2][0]
    new_cube[2][7] = previous_cube[2][3]
    new_cube[2][8] = previous_cube[2][6]

    new_cube[2][0] = previous_cube[2][2]
    new_cube[2][3] = previous_cube[2][1]
    new_cube[2][6] = previous_cube[2][0]

    return new_cube

def static(cube):
    return cube