// A node stores a value and a reference to the next node in the list.
class Node {
  int value;
  Node? next;

  Node(this.value);
}

class LinkedList {
  // The first node; null means the list is empty.
  Node? head;

  // Add a new node at the beginning of the list.
  void addFirst(int value) {
    final newNode = Node(value);
    newNode.next = head;
    head = newNode;
  }

  // Add a new node at the end of the list.
  void addLast(int value) {
    final newNode = Node(value);

    // If there are no nodes yet, the new node becomes the head.
    if (head == null) {
      head = newNode;
      return;
    }

    // Follow next references until reaching the last node.
    Node current = head!;
    while (current.next != null) {
      current = current.next!;
    }
    current.next = newNode;
  }

  // Print each node's value from the head to the end of the list.
  void printList() {
    Node? current = head;
    while (current != null) {
      print(current.value);
      current = current.next;
    }
  }
}

void main() {
  final newList = LinkedList();
  newList.addFirst(10);
  newList.addFirst(20);
  newList.addFirst(30);
  newList.addLast(40);

  // Prints: 30, 20, 10, 40 (one value per line).
  newList.printList();
}
