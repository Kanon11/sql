DELETE p1 FROM Person p1,Person p2
        where (p1.Id>p2.Id and p1.Email=p2.Email)
