package main

import (
	"context"
	"fmt"
	"log"
	"net"
	"sync"

	"google.golang.org/grpc"
	"google.golang.org/protobuf/types/known/emptypb"

	pb "sudagoarth.com/proto" // Update the import path
)

// ToDoService struct
type ToDoService struct {
	pb.UnimplementedToDoServiceServer
	todos []*pb.Task
	mu    sync.Mutex
}

// CreateTask function
func (s *ToDoService) CreateTask(ctx context.Context, req *pb.CreateTaskRequest) (*pb.Task, error) {
	s.mu.Lock()
	defer s.mu.Unlock()

	req.Task.Id = fmt.Sprintf("%d", len(s.todos)+1) // Simple ID generation
	s.todos = append(s.todos, req.Task)

	return req.Task, nil
}

// GetTask function
func (s *ToDoService) GetTask(ctx context.Context, req *pb.GetTaskRequest) (*pb.Task, error) {
	s.mu.Lock()
	defer s.mu.Unlock()

	for _, task := range s.todos {
		if task.Id == req.Id {
			return task, nil
		}
	}
	return nil, fmt.Errorf("task not found")
}

// UpdateTask function
func (s *ToDoService) UpdateTask(ctx context.Context, req *pb.UpdateTaskRequest) (*pb.Task, error) {
	s.mu.Lock()
	defer s.mu.Unlock()

	for i, task := range s.todos {
		if task.Id == req.Task.Id {
			s.todos[i] = req.Task
			return req.Task, nil
		}
	}
	return nil, fmt.Errorf("task not found")
}

// DeleteTask function
func (s *ToDoService) DeleteTask(ctx context.Context, req *pb.DeleteTaskRequest) (*pb.Task, error) {
	s.mu.Lock()
	defer s.mu.Unlock()

	for i, task := range s.todos {
		if task.Id == req.Id {
			s.todos = append(s.todos[:i], s.todos[i+1:]...) // Remove task
			return task, nil
		}
	}
	return nil, fmt.Errorf("task not found")
}

// ListTasks function
func (s *ToDoService) ListTasks(_ context.Context, _ *emptypb.Empty) (*pb.ListTasksResponse, error) {
	s.mu.Lock()
	defer s.mu.Unlock()

	response := &pb.ListTasksResponse{Tasks: s.todos}
	return response, nil
}

func main() {
	lis, err := net.Listen("tcp", ":50051")
	if err != nil {
		log.Fatalf("failed to listen: %v", err)
	}

	grpcServer := grpc.NewServer()
	pb.RegisterToDoServiceServer(grpcServer, &ToDoService{})

	log.Println("Server is running on port 50051...")
	if err := grpcServer.Serve(lis); err != nil {
		log.Fatalf("failed to serve: %v", err)
	}
}
