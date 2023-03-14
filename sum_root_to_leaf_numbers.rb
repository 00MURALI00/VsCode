class TreeNode
    attr_accessor :val, :left, :right
    def initialize(val = 0, left = nil, right = nil)
        @val = val
        @left = left
        @right = right
    end
end
class TreeNodeDemo
    attr_accessor :root, :size
    def insert(value)
        if @root == nil
            @root =  TreeNode.new(value)
            @size = 1
        else
            head = @root
            queue = []
            queue << head
            while(!queue.empty?)
                temp = queue.shift
                if head.left == nil
                    head.left = TreeNode.new(value)
                    break;
                elsif head.right == nil
                    head.right = TreeNode.new(value)
                    break;
                else
                    queue << head.left
                    queue << head.right
                end
            end
            @size += 1
        end
    end

    def display head
        return if head == nil
        display(head.left)
        print head.val.to_s + " "
        display(head.right)
    end

end

def sum_numbers(root)
    if root.left == nil && root.right == nil
        return root.val
    end
    res = Array.new
    get_numbers(root, res, 0)
    res.sum
end

def get_numbers root, res, num
    get_numbers(root.left, res, num * 10 + root.val) if root.left != nil
    get_numbers(root.right, res, num * 10 + root.val) if root.right != nil
    res << num * 10 + root.val if root.left == nil && root.right == nil
end

tree = TreeNodeDemo.new
n = gets.chomp.to_i
for i in (1..n)
    tree.insert(gets.chomp.to_i)
end

# tree.display(tree.root)
# print "\n"

puts sum_numbers(tree.root)2