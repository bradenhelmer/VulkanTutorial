CFLAGS = -std=c++17 -O2
LDFLAGS = -lglfw3 -lvulkan -ldl -lpthread -lX11 -lXxf86vm -lXrandr -lXi
DBGFLAGS = -DNDEBUG -std=c++17 -g3

VulkanTest: triangle.cpp
	g++ $(CFLAGS) -o VulkanTest triangle.cpp $(LDFLAGS)

VulkanDBG: triangle.cpp
	g++ $(DBGFLAGS) -o VulkanTest triangle.cpp $(LDFLAGS)

.PHONY: test clean dbg

test: VulkanTest
	./VulkanTest

dbg: VulkanDBG
	./VulkanTest

clean:
	rm ./VulkanTest

