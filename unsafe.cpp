
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
