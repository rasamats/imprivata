# imprivata
This repository contains the solution to interview questions from Imprivata:

The following coding test contains 4 questions. Please attempt all of them. We are leaving it to you to determine how you wish to provide inputs to the methods and display or test the results. We will review your solution with you, so please be prepared to discuss the choices you made.

Keep in mind that the majority of our code is written in C# and HTML/Javascript.

Bonus points will be given.

1. ====================================
You are given a function mergeArrays which takes in two sorted arrays a and b as parameters. The first array has M elements in it. The second one also has M elements, but it's capacity is 2M. The function mergeArrays takes both the arrays as parameters along with M. Merge the first array into the second array such that the resulting array is sorted.

Your task is to complete the body of mergeArrays with the signature provided, and to return the correct output. 

static void mergeArray(int []a, int []b, int M ){
}

2. ====================================
Brad wants to limber up his fingers to increase his typing speed for programming contests.  He read on Quorab" that this is best accomplished by typing the sentence "The quick brown fox jumps over the lazy dog" repeatedly, because it is a pangram. (Pangrams are sentences constructed by using every letter of the alphabet at least once.)
 
After typing the sentence several times, Brad became bored with it. So he started to look for other pangrams.
 
Given a sentence N, complete the function isPangram to tell Brad if it is a pangram or not.
 
Input Format
Input consists of a string containing N.
 
Output Format
Return 1, if N is a pangram, otherwise return 0.
 
Constraints
Length of N can be up to 103 ( 1 b	$ |N| b	$ 103 ) and it may contain spaces, lowercase and uppercase letters. Lowercase and uppercase instances of a letter are considered the same for the purposes of determining if the sentence is a pangram.
 
Sample Input #1
We promptly judged antique ivory buckles for the next prize    
 
Sample Output #1
1
 
Explanation #1:
Every letter of the alphabet is represented, so the sentence is a pangram.
 
Sample Input #2
We promptly judged antique ivory buckles for the prize    
 
Sample Output #2
0
 
Explanation #2
Eliminating the word "next" removed the only instance of the letter "x", so the sentence is no longer a pangram.

3. ====================================
Jumping Jack is standing at the bottom of a long flight of stairs. The bottom of the stairs has number 0, and the steps are numbered sequentially from 1 to infinity. Jack will perform N consecutively numbered actions. For each action X, Jack can either jump exactly X steps, or pass and stay where he was before. So if Jack is standing on step Y when it is time to perform action X, then he will end that turn either on step Y or on step Y+X. If X < N then action X+1 is performed next.
 
For example, if N=3, Jack will make three consecutive choices: whether or not to jump 1 step upwards, 2 steps upwards, and then 3 steps upwards.

There is exactly one step, numbered K, which is missing. Jack cannot jump onto this step. You are given the integers N and K. Compute and return the number of the topmost step that can be reached by Jack. 
 
Input 
Two integers N and K.
 
Output
One integer.
 
Constraints
N will be between 1 and 2,000, inclusive.
K will be between 1 and 4,000,000, inclusive.
 
Sample Input #1
2
2
 
Sample Output #1
3
 
Explanation #1
The optimal strategy is to jump upwards twice: from step 0 to step 1, and then from step 1 to step 3. This trajectory avoids the broken step.
        
Sample Input #2
2
1
 
Sample Output #2
2
In this case step 1 is broken, so Jack cannot jump upwards as his first action. The optimal strategy is to first stay on step 0, and then to jump from step 0 to step 2.

int maxstep(int N, int K) {
}

4. ====================================
The World Health Organization (WHO) wants to establish a total of B vaccination clinics across N cities to immunization people against fatal diseases. Every city must have at least 1 clinic, and a clinic can only vaccinate people in the same city where they live. The goal is to minimize the number of vaccination kits needed in the largest clinic. For example, suppose you have: 
2 cities and
7 clinics to be opened.
If 200,000 is the population of the first city and
500,000 is the population of the second city, then
two clinics can open in the first city and
five in the second. This way,
100,000 people can be immunized in each of the two clinics in the first city, and
100,000 can be immunized in each clinic in the second city. 
So the maximum number of people to be immunized in the largest clinic is 100,000

Input
Two integers: N, the number of cities, and B, the total number of clinics to be opened.
Each of the following N inputs contains an integer ai, the population of city i.

Output:
One integer representing the maximum number of people to be immunized in any single clinic.

Constraints:
1 b	$ N b	$ 500,000
N b	$ B b	$ 2,000,000
1 b	$ ai b	$ 5,000,000

Sample Input:
2 7
200,000
500,000
 

