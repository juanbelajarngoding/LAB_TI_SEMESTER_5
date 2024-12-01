def sequential_selection(arr, k):
    """
    Function to perform sequential selection
    """
    for i in range(k):
        min_index = i
        for j in range(i+1, len(arr)):
            if arr[j] < arr[min_index]:
                min_index = j
        arr[i], arr[min_index] = arr[min_index], arr[i]

    return arr[k-1]


# Test the function
arr = [7, 5, 2, 4, 3, 9]
k = 3

print("K'th smallest element is: ", sequential_selection(arr, k))