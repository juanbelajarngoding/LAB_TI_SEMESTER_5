def bubbleSort(arr):
    n = len(arr)

    for i in range(n):
        for j in range(0, n-i-1):
            if arr[j] > arr[j+1] :
                arr[j], arr[j+1] = arr[j+1], arr[j]

arr = [29, 34, 12, 43, 67, 84]

bubbleSort(arr)

print("Sorted array is:", arr)