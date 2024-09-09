#include <iostream>
#include <string>

class Furniture {

protected:
    std::string name;
    double price;
    int quantity;

public:
    Furniture(std::string n, double p, int q)
        : name(n), price(p), quantity(q) {}
    std::string getName() const { return name; }
    double getPrice() const { return price; }
    int getQuantity() const { return quantity; }
    void setName(const std::string& n) { name = n; }
    void setPrice(double p) { price = p; }
    void setQuantity(int q) { quantity = q; }
    virtual void display() const {
        std::cout << "Name: " << name << ", Price: $" << price
                  << ", Quantity: " << quantity << std::endl;
    }
};
