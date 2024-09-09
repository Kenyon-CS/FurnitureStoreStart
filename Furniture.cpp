class Chair : public Furniture {
private:
    bool hasArmrest;

public:
    Chair(std::string n, double p, int q, bool armrest)
        : Furniture(n, p, q), hasArmrest(armrest) {}
    bool getHasArmrest() const { return hasArmrest; }
    void setHasArmrest(bool armrest) { hasArmrest = armrest; }
    void display() const override {
        Furniture::display();
        std::cout << "Armrest: " << (hasArmrest ? "Yes" : "No") << std::endl;
    }
};

class Table : public Furniture {
private:
    int numOfLegs;

public:
    Table(std::string n, double p, int q, int legs)
        : Furniture(n, p, q), numOfLegs(legs) {}
    int getNumOfLegs() const { return numOfLegs; }
    void setNumOfLegs(int legs) { numOfLegs = legs; }
    void display() const override {
        Furniture::display();
        std::cout << "Number of Legs: " << numOfLegs << std::endl;
    }
};

class Sofa : public Furniture {
private:
    int numOfSeats;

public:
    Sofa(std::string n, double p, int q, int seats)
        : Furniture(n, p, q), numOfSeats(seats) {}
    int getNumOfSeats() const { return numOfSeats; }
    void setNumOfSeats(int seats) { numOfSeats = seats; }
    void display() const override {
        Furniture::display();
        std::cout << "Number of Seats: " << numOfSeats << std::endl;
    }
};
