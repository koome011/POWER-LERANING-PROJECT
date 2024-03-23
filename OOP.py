class Person:
    def __init__(self, name, age, gender):
        self.name = name
        self.age = age
        self.gender = gender
    
    def introduce(self):
        print("Name:", self.name, ", Age", self.age, "&& Gender", self.gender)
        
details = Person("Alex", 22, "Male")
details.introduce()