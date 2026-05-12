# ─────────────────────────────────────────
# Step 1: Read Student Details
# ─────────────────────────────────────────
print("=" * 50)
print("        STUDENT MARKS ENTRY SYSTEM")
print("=" * 50)

name = input("Enter Student Name : ")
roll_no = input("Enter Roll Number  : ")

# ─────────────────────────────────────────
# Step 2: Read 6 Subject Names and Marks
# ─────────────────────────────────────────
subjects = {}
print("\nEnter marks for 6 subjects (out of 100):")
print("-" * 50)

for i in range(1, 7):
    subject = input("Enter Subject {} Name  : ".format(i))
    
    while True:
        try:
            marks = float(input("Enter Marks for {}: ".format(subject)))
            
            if 0 <= marks <= 100:
                subjects[subject] = marks
                break
            else:
                print("  !! Marks must be between 0 and 100. Try again.")
        
        except ValueError:
            print("  !! Invalid input. Please enter a number.")

# ─────────────────────────────────────────
# Step 3: Sort Marks from Highest to Lowest
# ─────────────────────────────────────────
sorted_subjects = dict(
    sorted(subjects.items(), key=lambda item: item[1], reverse=True)
)

# ─────────────────────────────────────────
# Step 4: Calculate Statistics
# ─────────────────────────────────────────
total = sum(subjects.values())
average = total / 6
highest_mark = max(subjects.values())
lowest_mark = min(subjects.values())

# ─────────────────────────────────────────
# Step 5: Determine Grade
# ─────────────────────────────────────────
def get_grade(avg):
    if avg >= 90:
        return "A+"
    elif avg >= 80:
        return "A"
    elif avg >= 70:
        return "B"
    elif avg >= 60:
        return "C"
    elif avg >= 50:
        return "D"
    else:
        return "F"

def get_result(avg):
    return "PASS" if avg >= 50 else "FAIL"

grade = get_grade(average)
result = get_result(average)

# ─────────────────────────────────────────
# Step 6: Display the Report
# ─────────────────────────────────────────
print("\n")
print("=" * 55)
print("            STUDENT MARKS REPORT")
print("=" * 55)

print("  Student Name  : {}".format(name))
print("  Roll Number   : {}".format(roll_no))
print("=" * 55)

print("  {0:<6} {1:<20} {2:<10} {3:<6}".format("Rank", "Subject", "Marks", "Grade"))
print("-" * 55)

for rank, (subject, marks) in enumerate(sorted_subjects.items(), start=1):
    subj_grade = get_grade(marks)

    tag = ""
    if marks == highest_mark:
        tag = "<-- Highest"
    elif marks == lowest_mark:
        tag = "<-- Lowest"

    print("  {0:<6} {1:<20} {2:<10.1f} {3:<6} {4}".format(
        rank, subject, marks, subj_grade, tag
    ))

print("-" * 55)
print("  {0:<26} : {1:.1f} / 600".format("Total Marks", total))
print("  {0:<26} : {1:.2f} / 100".format("Average Marks", average))
print("  {0:<26} : {1:.1f}".format("Highest Score", highest_mark))
print("  {0:<26} : {1:.1f}".format("Lowest Score", lowest_mark))
print("  {0:<26} : {1}".format("Overall Grade", grade))
print("  {0:<26} : {1}".format("Result", result))
print("=" * 55)