scores = [66, 90, 68, 59, 76, 60, 88, 74, 81, 65]

def is_a_students(scores):
    return scores > 75

over_75 = list(filter(is_a_students, scores))
print("the filter results are: ", over_75)