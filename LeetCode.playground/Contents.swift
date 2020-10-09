import UIKit



// October 9 Friday 01:30 AM 2020
// LeetCode Task 1 Two Sum

/*
 Given an array of integers nums and an integer target, return indices of the two numbers such that they add up to target.
 
 You may assume that each input would have exactly one solution, and you may not use the same element twice.

 You can return the answer in any order.

  

 Example 1:

 Input: nums = [2,7,11,15], target = 9
 Output: [0,1]
 Output: Because nums[0] + nums[1] == 9, we return [0, 1].
 Example 2:

 Input: nums = [3,2,4], target = 6
 Output: [1,2]
 Example 3:

 Input: nums = [3,3], target = 6
 Output: [0,1]
 */

class Task1 {
    
    // Brute force way, iterate over two arrays
    // Time complexity O(n^2)
    // Space complexity O(1)
    func twoSum_1(_ nums: [Int], _ target: Int) -> [Int] {
        for (index, _) in nums.enumerated() { // Also can use for index in 0..<nums.count as I showed below
            for index1 in 0..<nums.count {
                if nums[index] + nums[index1] == target && index != index1 {
                    return [index, index1]
                }
            }
        }
        return []
    }
    
    // Two pass Hash table
    /*
     Time complexity: O(n)
     Space complexity: O(n)
     */
    func twoSum_2(_ nums: [Int], _ target: Int) -> [Int] {
        var map: Dictionary<Int, Int> = Dictionary()
        
        for i in 0..<nums.count {
            map[nums[i]] = i
        }
        
        for i in 0..<nums.count {
            let complement = target - nums[i]
            if let targetValue = map[complement], targetValue != i {
                return [i, targetValue]
            }
        }
        
        return []
    }
    
    // One pass hash table
    // TODO
    
    
}


let task = Task1()
let arr = [1,2,3,4,5,6,7,9,10]
let target = 9

task.twoSum_1(arr, target)
task.twoSum_2(arr, target)
