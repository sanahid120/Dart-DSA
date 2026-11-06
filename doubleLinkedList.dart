class Node {
  int data;
  Node? next;
  Node? prev;

  Node(this.data);
}

class DoublyLinkedList {
  Node? head;
  Node? tail;

  // Add a new node at the beginning of the list
  void addFirst(int value) {
    Node newNode = Node(value);
    if (head == null) {
      head = newNode;
      tail = newNode;
    } else {
      newNode.next = head;
      head!.prev = newNode;
      head = newNode;
    }
  }

  // Add a new node at the end of the list
  void addLast(int value) {
    Node newNode = Node(value);
    if (head == null) {
      head = newNode;
      tail = newNode;
    } else {
      tail!.next = newNode;
      newNode.prev = tail;
      tail = newNode;
    }
  }

  // Remove the first node from the list
  void removeFirst() {
    if (head == null) {
      return;
    }
    if (head!.next == null) {
      head = null;
      tail = null;
    } else {
      head = head!.next;
      head!.prev = null;
    }
  }

  // Remove the last node from the list
  void removeLast() {
    if (head == null) {
      return;
    }
    if (head!.next == null) {
      head = null;
      tail = null;
    } else {
      tail = tail!.prev;
      tail!.next = null;
    }
  }

  // Search for a value in the list
  bool search(int value) {
    Node? current = head;
    while (current != null) {
      if (current.data == value) {
        return true;
      }
      current = current.next;
    }
    return false;
  }

  // Print the list
  void printList() {
    Node? current = head;
    while (current != null) {
      print(current.data);
      current = current.next;
    }
  }
}

void main() {
  DoublyLinkedList dll = DoublyLinkedList();
  dll.addFirst(10);
  dll.addFirst(20);
  dll.addLast(30);
  print("Doubly linked list:");
  dll.printList();
  print("\nSearch for 20: ${dll.search(20)}");
  print("\nSearch for 40: ${dll.search(40)}");
  dll.removeFirst();
  print("\nDoubly linked list after removing the first element:");
  dll.printList();
  dll.removeLast();
  print("\nDoubly linked list after removing the last element:");
  dll.printList();
}
