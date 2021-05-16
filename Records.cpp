#include <iostream>
#include <fstream>

using namespace std;

class accountInfo{

private:
    char password[20];
    char firstName[20];
    char lastName[20];
    char username[20];
    float uniqueID;

public:
    void getInformation();
    void storeInformation();
    void editInformation();
    void displayInformation();
    void searchInformation();
};


void accountInfo::getInformation()
{
    cout<<"Please enter your first name: ";
    cin >> firstName;
    cout<<"Please enter your second name: ";
    cin >>lastName;
    cout << "Please create a password: ";
    cin >> password;
    cout << "Please choose your username: ";
    cin >> username;
    cout << "Please enter your ID number to open an account: ";
    cin >> uniqueID;
}

void accountInfo::storeInformation()
{
    string option;
    string yes("Y");
    string no("N");

    cout <<"Would like to save this information? "<<"\n Y/N";
    cout << endl;
    cin >> option;

    if (option == yes)
    {
        ofstream  MyFile;
        MyFile.open("Records.txt"); //open file before writing to it.
        MyFile << firstName << " "; //added space between each data field within record.
        MyFile << lastName << " ";
        MyFile << password << " ";
        MyFile << uniqueID << " ";
        MyFile << username << " ";
        MyFile.close();
    }
    else if (option == no)
    {cout <<"Information not saved";}
    else
        cout <<"Please choose Y or N";
}

void accountInfo::displayInformation()
{
    string myText;
    ifstream MyFile("Records.txt");
    if(MyFile.is_open())
    {
        while (getline(MyFile, myText)) { cout << myText; }
        MyFile.close();
    }
    else
        cout << "Sorry, Unable to open file at this time";
}

void accountInfo::editInformation()
{
    char *newFirstName = firstName;
    char *newLastName = lastName;
    char *newPassword = password;

    cout <<"NOTE: Username cannot be changed";
    cout <<" \nPlease enter update for first name: ";
    cin >> newFirstName;
    cout << "Please enter update for last name: ";
    cin >> newLastName;
    cout << "Please enter update for the password: ";
    cin >> newPassword;

    cout << "\nUpdated first name is: "<< newFirstName;
    cout << "\nUpdated last name is: "<< newLastName;
    cout << "\nUpdated password is : "<< newPassword;

}

void accountInfo::searchInformation()
{
    ifstream file;
    string searchUsername,g;

    cout<<"Enter the username to be searched: ";
    cin>> searchUsername;
    searchUsername = " "+searchUsername+" "; //made space separated searchUsername string because find function will search it in whole record

    file.open("Records.txt", ios::in);
    if(!file.is_open())
    {
        cout<<"Cannot find the Records file\nProgram will now exit\n";

        exit(0);
    }

    else
    {
        while (isalnum(file.peek()))
        {
            getline(file, g);
            if ( g.find(searchUsername, 0) != string:: npos)
            {
                cout << "Username " << searchUsername <<" is present and valid in the system"<< endl;
            }
            else
            {  // if username not present in system
                cout <<"Username"<< searchUsername << "is not present in the system"<<endl;
            }
        }
        file.close();
    }

}

int main() {
    int choice;
    accountInfo Instruction{};

    cout << "**WELCOME TO PINNACLE BANK**";
    cout << endl;

    cout << "\n\tMAIN MENU: " << endl;
    while (true) {
        cout << "\nPlease choose from the following options: ";
        cout << "\nEnter 1 to create a new bank account";
        cout << "\nEnter 2 to show account information";
        cout << "\nEnter 3 to update account information";
        cout << "\nEnter 4 to search information of the account";
        cout << "\nEnter 5 to quit program";
        cout << endl;
        cin >> choice;

        switch (choice) {
            case 1:
                Instruction.getInformation();
                Instruction.storeInformation();
                cout<<"\n-----Taking you back to main menu----";
                break;
            case 2:
                Instruction.displayInformation();
                cout<<"\n-----Taking you back to main menu----";
                break;
            case 3:
                Instruction.editInformation();
                cout<<"\n-----Taking you back to main menu----";
                break;
            case 4:
                Instruction.searchInformation();
                cout<<"\n-----Taking you back to main menu----";
                break;
            case 5:
                cout << "\nTHANK YOU FOR USING PINNACLE, \n **YOUR TRUSTED BANK** ";
                exit(0);
            default:
                cout << "\nPlease enter the correct choice: ";
        }
    }
}