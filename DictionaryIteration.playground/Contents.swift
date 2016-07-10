/*: Outline
 # Iterating over a Dictionary

 ### Readings associated with this lab

 * [Dictionary](https://github.com/learn-co-curriculum/swift-dictionary-readme)
 * [Iterating over a Dictionary](https://github.com/learn-co-curriculum/swift-dictionaryIteration-readme)
 */
/*: question1
 ### 1. Create a dictionary _variable_ that maps band names to their highest-selling album.

 Here are some bands and albums you can use:

 * Nirvana: _Nevermind_
 * Blondie: _Parallel Lines_
 * The Kinks: _Low Budget_
 * The Beatles: _Sgt. Pepper's Lonely Hearts Club Band_
 */
// write your code here

var bands = ["Nirvana": "Nevermind",
             "Blondie": "Parallel Lines",
             "The Kinks": "Low Budget",
             "The Beatles": "Sgt. Pepper's Lonely Hearts Club Band"
]



/*: question2
 ### 2. Oops, we forgot an album! Add the Pixie's _Doolittle_ to the dictionary you created in Question 1.
 */
// write your code here

bands["Pixie"] = "Doolittle"
print(bands)


/*: question3
 ### 3. We don't care that much about The Kinks. Delete them from the dictionary you created in Question 1.
 */
// write your code here


bands["The Kinks"] = nil
print(bands)


/*: question4
 ### 4. A band name has been defined in the constant `bandName` below. Using this constant and the dictionary you created in Question 1, print "<Band>'s top-selling album was <Album>" to the console.
 */
let bandName = "Nirvana"
// write your code here
let album = bands[bandName]
if let album = album{
print("\(bandName) top-selling album was \(album)")
}
/*: question5
 ### 5. Iterate over the dictionary you created in Question 1 and print "<Band>'s top-selling album was <Album>" for each item in the dictionary.
 */
// write your code here


for (key, value) in bands {
print("\(key)'s top-selling album was \(value)")
}


/*: question6
 ### 6. What type of data structure is returned when you iterate over a dictionary?
 */
//[String : [String]]



/*: question7
 ### 7. Imagine every student in every grade in a high school took an exam. Each student got a letter grade based on their test results (A, B, C, D, and F). The results were averaged together per grade. How could you represent this mapping of grades to exam average?
 */
let grrades = ["a": 100,
               "b": 90,
               "c": 80,
               "d": 70,
               "f": 60]




/*: question8
 ### 8. Create a _constant_ dictionary to store the exam results described in Question 8. This dictionary should be of type `[Int: String]`. Here are the results you can use:

 * Grade 9: B
 * Grade 10: A
 * Grade 11: C
 * Grade 12: B
 */
// write your code here

let results = [9:"B",
               10:"A",
               11:"C",
               12:"B"]



/*: question9
 ### 9. Print the message "Grade <Grade> got <Score>" for each grade in the dictionary you created in Question 8.
 */
// write your code here

for(key, value) in results {
print("Grade \(key) got \(value)")
}


/*: question10
 ### 10. Find which grade got the highest score! Iterate through the dictionary to find the highest score, then print the message "Grade <Grade> got the highest score with <Score>!" to the console.
 */
// write your code here


var highGrade = 0
for (grade, score) in results {
    if let highScore = results[highGrade] {
        if score < highScore {
            highGrade = grade
        }
    } else {
        highGrade = grade
    }
}
if let resultScore = results[highGrade] {
    print("Grade \(highGrade) got the highest score with \(resultScore)!")
}



/*:
 [Solution](solution)
 */
// ❤️
