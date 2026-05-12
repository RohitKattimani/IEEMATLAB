# Class to represent a complex number
class Complex:
    def __init__(self, real, imag):
        self.real = real
        self.imag = imag

    # Method to display complex number
    def display(self):
        print("{} + {}i".format(self.real, self.imag))


# Function to add two complex numbers
def add_complex(c1, c2):
    real_part = c1.real + c2.real
    imag_part = c1.imag + c2.imag
    return Complex(real_part, imag_part)


# Main program
N = int(input("Enter number of complex numbers (N >= 2): "))

if N < 2:
    print("Please enter at least 2 complex numbers.")
else:
    complex_list = []

    # Read complex numbers
    for i in range(N):
        print("\nComplex number {}".format(i + 1))
        r = float(input("Enter real part: "))
        im = float(input("Enter imaginary part: "))
        complex_list.append(Complex(r, im))

    # Add all complex numbers
    result = complex_list[0]
    for i in range(1, N):
        result = add_complex(result, complex_list[i])

    # Display result
    print("\nSum of complex numbers is:")
    result.display()