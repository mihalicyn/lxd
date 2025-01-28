package temporal

import (
	"context"
	"fmt"
	"log"
	"sync"

	"github.com/canonical/lxd/lxd/db"
	"github.com/canonical/lxd/lxd/state"
	_ "github.com/mattn/go-sqlite3"
)

const (
	SQLDbName = "db"
)

var SQLDriverName string

var temporalServerReady *flagCond

var daemonState *state.State

func Init(s *state.State, ctx context.Context, db *db.DB) {
	var wg sync.WaitGroup

	nodeId := int(db.Cluster.GetNodeID())
	log.Printf("Initializing Temporal services... node id: %d", nodeId)

	// no serious reason behind this, only for simplicity sake
	if nodeId < 1 || nodeId > 9 {
		log.Fatalf("node_id must be in range 1..9")
	}

	// let's hardcode it for now
	clusterID := "4ba8c7f8-106d-4acd-9474-bf931219489d" // uuid.NewString()

	ip := "127.0.0.1"
	port := 5233 + 10*(nodeId-1)
	identity := fmt.Sprintf("node%d", nodeId)

	SQLDriverName = db.Cluster.DriverName

	temporalServerReady = NewFlagCond()

	// time for ugly hacks...
	daemonState = s

	wg.Add(3)
	go servermain(ctx, &wg, db, ip, port, clusterID, nodeId)
	go workermain(ctx, &wg, identity, fmt.Sprintf("%s:%d", ip, port))
	go clientmain(ctx, &wg, identity, fmt.Sprintf("%s:%d", ip, port))

	go func(wg *sync.WaitGroup) {
		wg.Wait()
		fmt.Println("Temporal shutdown.")
	}(&wg)
}
