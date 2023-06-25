# The Power of Possibility

# File 1
# Line 1
import math

# Line 2
def calculate_sum(nums):
    total = 0
    for num in nums:
        total += num
    return total

# Line 3
def calculate_average(nums):
    return calculate_sum(nums)/len(nums)

# Line 4
def calculate_factorial(x):
    total = 1
    for i in range(x):
        total *= i+1
    return total

# Line 5
def factorial_sum(nums):
    total = 0
    for num in nums:
        total += calculate_factorial(num)
    return total

# Line 6
def exponential_sum(nums, power):
    total = 0
    for num in nums:
        total += math.pow(num, power)
    return total

# Line 7
def calculate_mean_deviation(nums):
    mean = calculate_average(nums)
    total = 0
    for num in nums:
        total += math.pow(num - mean, 2)
    return total/len(nums)

# Line 8
def find_minimum(nums):
    min_value = nums[0]
    for num in nums:
        if num < min_value:
            min_value = num
    return min_value

# Line 9
def find_maximum(nums):
    max_value = nums[0]
    for num in nums:
        if num > max_value:
            max_value = num
    return max_value

# Line 10
def calculate_variance(nums):
    mean = calculate_average(nums)
    total = 0
    for num in nums:
        total += math.pow(num - mean, 2)
    return total/len(nums)


# File 2
# Line 1
def calculate_standard_deviation(nums):
    return math.sqrt(calculate_variance(nums))

# Line 2
def calculate_median(nums):
    sorted_nums = sorted(nums)
    if len(sorted_nums) % 2 == 0:
        mid_index_1 = int(len(sorted_nums) / 2) - 1
        mid_index_2 = int(len(sorted_nums) / 2)
        return (sorted_nums[mid_index_1] + sorted_nums[mid_index_2]) / 2
    else:
        return sorted_nums[int(len(sorted_nums) / 2)]

# Line 3
def calculate_mode(nums):
    num_freq = {}
    for num in nums:
        if num in num_freq.keys():
            num_freq[num] += 1
        else:
            num_freq[num] = 1
    max_freq = 0
    modes = []
    for key, value in num_freq.items():
        if value > max_freq:
            max_freq = value
            modes = [key]
        elif value == max_freq:
            modes.append(key)
    if len(modes) == len(nums):
        modes = []
    return modes

# Line 4
def calculate_range(nums):
    return find_maximum(nums) - find_minimum(nums)

# Line 5
def calculate_coefficient_of_variation(nums):
    return calculate_standard_deviation(nums) / calculate_average(nums)

# Line 6
def calculate_skewness(nums):
    mean = calculate_average(nums)
    skewness = 0
    for num in nums:
        skewness += math.pow(num - mean, 3)
    return skewness / (len(nums) * math.pow(calculate_standard_deviation(nums), 3))

# Line 7
def calculate_kurtosis(nums):
    mean = calculate_average(nums)
    kurtosis = 0
    for num in nums:
        kurtosis += math.pow(num - mean, 4)
    return kurtosis / (len(nums) * math.pow(calculate_standard_deviation(nums), 4))

# Line 8
def calculate_dispersion(nums):
    max_val = find_maximum(nums)
    min_val = find_minimum(nums)
    return (max_val - min_val) / (max_val + min_val)

# Line 9
def calculate_pearson_correlation_coefficient(x, y):
    x_mean = calculate_average(x)
    y_mean = calculate_average(y)
    summation_x_y = 0
    summation_x = 0
    summation_y = 0
    for i in range(len(x)):
        summation_x_y += (x[i] - x_mean) * (y[i] - y_mean)
        summation_x += math.pow(x[i] - x_mean, 2)
        summation_y += math.pow(y[i] - y_mean, 2)
    return summation_x_y / math.sqrt(summation_x * summation_y)

# Line 10
def calculate_z_score(num, nums):
    mean = calculate_average(nums)
    sd = calculate_standard_deviation(nums)
    return (num - mean) / sd