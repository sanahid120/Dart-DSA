import 'dart:io';

class Node {
  int value;
  Node? next;

  Node(this.value);
}

class LinkedList {
  Node? head;
// Add a new node at the beginning of the list
  void addFirst(int value) {
    final newNode = Node(value);
    newNode.next = head;
    head = newNode;
  }

// Add a new node at the end of the list
  void addLast(int value) {
    final newNode = Node(value);
    if (head == null) {
      head = newNode;
      return;
    }
    Node current = head!;
    while (current.next != null) {
      current = current.next!;
    }
    current.next = newNode;
  }

// Remove the first node from the list
  void removeFirst() {
    if (head == null) {
      return;
    }
    head = head!.next;
  }

// Remove the last node from the list
  void removeLast() {
    if (head == null) {
      return;
    }
    if (head!.next == null) {
      head = null;
      return;
    }
    Node current = head!;
    while (current.next!.next != null) {
      current = current.next!;
    }
    current.next = null;
  }

// Search for a value in the list
  bool search(int value) {
    Node? current = head;
    while (current != null) {
      if (current.value == value) {
        return true;
      }
      current = current.next;
    }
    return false;
  }

// Get the size of the list
  int size() {
    int count = 0;
    Node? current = head;
    while (current != null) {
      count++;
      current = current.next;
    }
    return count;
  }

// Print all elements in the list
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
  stdout.writeln("Singly Linked List Implementation in Dart");

  print("Adding elements to the linked list:");
  newList.addFirst(10);
  newList.addFirst(20);
  newList.addFirst(30);
  newList.addLast(40);
  print("Current linked list:");
  newList.printList();
  newList.removeFirst();
  print("Linked list after removing the first element:");
  newList.printList();
  newList.removeLast();
  print("Linked list after removing the last element:");
  newList.printList();
  print("Size of the linked list: ${newList.size()}");
  print("Is 20 in the linked list? ${newList.search(20)}");
  print("Is 50 in the linked list? ${newList.search(50)}");
}
