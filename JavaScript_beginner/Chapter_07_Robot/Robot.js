function createRandomGraph(size, symmetric = false) {
    let mat = [];
    for (let i = 0; i < size; i++) {
        let current_row = []
        for (let j = 0; j < size; j++) {
            current_row.push(Math.floor(Math.random() * 2))
        }
        mat.push(current_row);
    }
    if (symmetric) {
        for (let i = 0; i < size; i++) {
            for (let j = 0; j < size; j++) {
                mat[i][j] = mat[i][j] || mat[j][i]

            }
        }

    }
    return mat;
}

function printMat(mat) {
    for (let row of mat) {
        console.log(row);
    }
}

function createSampleProblem(citySize = 10) {
    let graph = createRandomGraph(citySize, true);
    let parcels = [];
    for (let i = 0; i < citySize; i++) {
        if (Math.random() < 0.4) {
            parcels.push({ idx: i, dest: -1, delivered: false })
        } else {
            parcels.push({ idx: i, dest: Math.floor(Math.random() * citySize), delivered: false })
        }
    }
    return { graph: graph, parcels: parcels };
}


function detectPaths(graph, origin, destination,) {
    let allPaths = []
    function findPath(...path) {
        let current_pos = path[path.length - 1]
        if (current_pos == destination) return path
        for (let i = 0; i < graph.length; i++) {
            if (graph[current_pos][i] == 1) {
                if (path.indexOf(i) != -1) continue
                path.push(i)
                let result = findPath(...path)
                if (result != null)  allPaths.push(result)
            }
        }

    }
    findPath(origin);
    let pathSizes = allPaths.map(x => x.length)
    // console.log(pathSizes, Math.min(...pathSizes), pathSizes.indexOf(Math.min(...pathSizes)))
    return allPaths[pathSizes.indexOf(Math.min(...pathSizes))]
}

// let m = createRandomGraph(3);
// printMat(m)

let city = createSampleProblem(10);

printMat(city.parcels)

printMat(city.graph)
// let p = detectPaths(city.graph, 0, 5)
// console.log(p)

console.log("**********************************")
for (let p of city.parcels) {
    if (p.idx >= 0) {
        let shortestPath = detectPaths(city.graph, p.idx, p.dest)
        console.log("origin: ", p.idx, "\t destination: ", p.dest)
        console.log(shortestPath)
    }
}

x = []
