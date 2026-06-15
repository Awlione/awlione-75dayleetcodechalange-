class Solution:
    def removeDuplicates(self, nums: List[int]) -> int:
        k = 1  # first element is always unique, start write pointer at 1

        for i in range(1, len(nums)):
            if nums[i] != nums[k - 1]:  # new unique value found
                nums[k] = nums[i]
                k += 1

        return k