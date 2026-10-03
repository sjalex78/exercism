"""Functions used in preparing Guido's gorgeous lasagna.

Learn about Guido, the creator of the Python language:
https://en.wikipedia.org/wiki/Guido_van_Rossum

This is a module docstring, used to describe the functionality
of a module and its functions and/or classes.
"""


EXPECTED_BAKE_TIME=40
PER_LAYER_BAKE_TIME=2

def bake_time_remaining(baking_time_so_far):
    """Calculate the bake time remaining.

    Parameters:
        elapsed_bake_time (int): The baking time already elapsed.

    Returns:
        int: The remaining bake time (in minutes) derived from 'EXPECTED_BAKE_TIME'.

    Function that takes the actual minutes the lasagna has been in the oven as
    an argument and returns how many minutes the lasagna still needs to bake
    based on the `EXPECTED_BAKE_TIME`.
    """

    return EXPECTED_BAKE_TIME - baking_time_so_far


# To avoid the use of magic numbers (see: https://en.wikipedia.org/wiki/Magic_number_(programming)), you should define a PREPARATION_TIME constant.
# You can do that on the line below the 'EXPECTED_BAKE_TIME' constant.
# This will make it easier to do calculations, and make changes to your code.
def preparation_time_in_minutes(number_of_layers):
    """Calculate the preparation time in minutes.
    
    Parameters:
        number_of_layers (int): The number of layers in the lasagna.
    
    Returns:
        int: The total time needed based on the number of layers(in minutes).

    This function takes one integer representing the number of lasagna 
    layers. It calculates the total additioanl minutes required for the layers (baking)
    based on the PER_LAYER_BAKE_TIME constant.
    
    """
    return number_of_layers * PER_LAYER_BAKE_TIME


def elapsed_time_in_minutes(number_of_layers, elapsed_bake_time):
    """Calculate the elapsed cooking time.
    
    Parameters:
        number_of_layers (int): The number of layers in the lasagna.
        elapsed_bake_time (int): Time the lasagna has been baking in the oven.
    
    Returns:
        int: The total time elapsed (in minutes) preparing and baking.

    This function takes two integers representing the number of lasagna 
    layers and the time already spent baking the lasagna. It calculates 
    the total elapsed minutes spent cooking (preparing + baking).
    
    """
    return preparation_time_in_minutes(number_of_layers) + elapsed_bake_time



# def main():
#     """this ia a way to print and run separate methods for check as we go.
#     """
#     # print("hi")
#     print("bake time remaining:", bake_time_remaining(2))
#     print("preparation time in minutes", preparation_time_in_minutes(10))
#     print("elapsed time in minutes", elapsed_time_in_minutes(10,3))

# if __name__ == "__main__":
#     main()