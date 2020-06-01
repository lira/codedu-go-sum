package main

import "testing"

func TestSum(t *testing.T) {
  result := sum (3,3)
  response := 6

  if (result != response) {
    t.Errorf("Invalid result! :( return %d, wanted %d", result, response)
  }
}
