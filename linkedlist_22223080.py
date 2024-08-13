#class Node
class Node:
    def __init__(self,item=None,next=None):
        self.item=item
        self.next=next
class SLL:
    #IS CREATE START
    def __init__(self,start=None):
        self.start=start
        #IS EMPTY
    def is_empty(self):
        return self.start==None
    #insert at first
    def insert_at_start(self,data):
        n=Node(data,self.start)
        self.start=n
    #insert at last
    def insert_at_last(self,data):
        n=Node(data)
        if not self.is_empty():
            temp=self.start
            while temp.next is not None:
                temp=temp.next
            temp.next=n
        else:
            self.start=n
    #search element
    def search(self,data):
        temp=self.start
        while temp is not None:
            if temp.item==data:
                return temp
            temp=temp.next
        return None
    # insert after
    def insert_after(self,temp,data):
        if temp is not None:
            n=Node(data,temp.next)
            temp.next=n
    # print
    def print_list(self):
        temp=self.start
        while temp is not None:
            print(temp.item,end=" ") 
            temp=temp.next
# driver code
mylist=SLL()
mylist.insert_at_start(20)
mylist.insert_at_last(10)
mylist.insert_after(mylist.search(20),25)
mylist.print_list()                   


                



           
