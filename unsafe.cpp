#include <iostream>
#include <unistd.h>     // Forbidden
#include <sys/types.h>
#include <sys/wait.h>

int main() {
    pid_t pid = fork();

    if (pid == 0) {
        std::cout << "Child process" << std::endl;
    } else {
        wait(NULL);
        std::cout << "Parent process" << std::endl;
    }

    return 0;
}
