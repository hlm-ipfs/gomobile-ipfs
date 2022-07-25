package ipfs.gomobile.example;

import android.os.AsyncTask;
import android.util.Log;

import org.json.JSONObject;

import java.lang.ref.WeakReference;
import java.util.ArrayList;

import ipfs.gomobile.android.IPFS;

final class StartIPFS extends AsyncTask<Void, Void, String> {
    private static final String TAG = "StartIPFS";

    private final WeakReference<MainActivity> activityRef;
    private boolean backgroundError;

    StartIPFS(MainActivity activity) {
        activityRef = new WeakReference<>(activity);
    }

    @Override
    protected void onPreExecute() {}

    @Override
    protected String doInBackground(Void... v) {
        MainActivity activity = activityRef.get();
        if (activity == null || activity.isFinishing()) {
            cancel(true);
            return null;
        }

        try {
            IPFS ipfs = new IPFS(activity.getApplicationContext());
            // 修改配置信息
            setConfig(ipfs);
            ipfs.start();

            ArrayList<JSONObject> jsonList = ipfs.newRequest("id").sendToJSONList();

            activity.setIpfs(ipfs);
            return jsonList.get(0).getString("ID");
        } catch (Exception err) {
            backgroundError = true;
            return MainActivity.exceptionToString(err);
        }
    }

    protected void onPostExecute(String result) {
        MainActivity activity = activityRef.get();
        if (activity == null || activity.isFinishing()) return;

        if (backgroundError) {
            activity.displayPeerIDError(result);
            Log.e(TAG, "IPFS start error: " + result);
        } else {
            activity.displayPeerIDResult(result);
            Log.i(TAG, "Your PeerID is: " + result);
        }
    }
    private void setConfig(IPFS ipfs) throws Exception {
        JSONObject config = new JSONObject("{\"Datastore\":{\"StorageMax\":\"10GB\",\"StorageGCWatermark\":90,\"GCPeriod\":\"1h\",\"Spec\":{\"mounts\":[{\"child\":{\"path\":\"blocks\",\"shardFunc\":\"/repo/flatfs/shard/v1/next-to-last/2\",\"sync\":true,\"type\":\"flatfs\"},\"mountpoint\":\"/blocks\",\"prefix\":\"flatfs.datastore\",\"type\":\"measure\"},{\"child\":{\"compression\":\"none\",\"path\":\"datastore\",\"type\":\"levelds\"},\"mountpoint\":\"/\",\"prefix\":\"leveldb.datastore\",\"type\":\"measure\"}],\"type\":\"mount\"},\"HashOnRead\":false,\"BloomFilterSize\":0},\"Addresses\":{\"Swarm\":[\"/ip4/0.0.0.0/udp/0/quic\",\"/ip6/::/udp/0/quic\",\"/ble/Qmeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee\"],\"Announce\":null,\"AppendAnnounce\":null,\"NoAnnounce\":null,\"API\":null,\"Gateway\":null},\"Mounts\":{\"IPFS\":\"/ipfs\",\"IPNS\":\"/ipns\",\"FuseAllowOther\":false},\"Discovery\":{\"MDNS\":{\"Enabled\":true,\"Interval\":10}},\"Routing\":{\"Type\":\"dhtclient\"},\"Ipns\":{\"RepublishPeriod\":\"\",\"RecordLifetime\":\"\",\"ResolveCacheSize\":128},\"Bootstrap\":[\"/ip4/47.109.55.137/udp/4001/quic/p2p/12D3KooWFrQucXUgMEptwaxhuzijmcL8pVhBjt1Jd8pPQ7iP3wb9\",\"/ip4/47.109.52.237/udp/4001/quic/p2p/12D3KooWDpnnY3QgaAAfGRbgbXuCfxmZRGwEcvTK3QEd2ndvp136\"],\"Gateway\":{\"HTTPHeaders\":null,\"RootRedirect\":\"\",\"Writable\":false,\"PathPrefixes\":null,\"APICommands\":null,\"NoFetch\":false,\"NoDNSLink\":false,\"PublicGateways\":null},\"API\":{\"HTTPHeaders\":{\"Access-Control-Allow-Credentials\":[\"true\"],\"Access-Control-Allow-Headers\":[\"Authorization\"],\"Access-Control-Allow-Methods\":[\"PUT\",\"GET\",\"POST\",\"OPTIONS\"],\"Access-Control-Allow-Origin\":[\"*\"],\"Access-Control-Expose-Headers\":[\"Location\"]}},\"Swarm\":{\"AddrFilters\":null,\"DisableBandwidthMetrics\":false,\"DisableNatPortMap\":false,\"RelayClient\":{\"Enabled\":true},\"RelayService\":{\"Enabled\":false},\"Transports\":{\"Network\":{\"TCP\":false},\"Security\":{},\"Multiplexers\":{}},\"ConnMgr\":{\"Type\":\"basic\",\"LowWater\":100,\"HighWater\":200,\"GracePeriod\":\"20s\"}},\"AutoNAT\":{},\"Pubsub\":{\"Router\":\"\",\"DisableSigning\":false},\"Peering\":{\"Peers\":null},\"DNS\":{\"Resolvers\":null},\"Migration\":{\"DownloadSources\":null,\"Keep\":\"\"},\"Provider\":{\"Strategy\":\"\"},\"Reprovider\":{\"Interval\":\"12h\",\"Strategy\":\"all\"},\"Experimental\":{\"FilestoreEnabled\":false,\"UrlstoreEnabled\":false,\"GraphsyncEnabled\":false,\"Libp2pStreamMounting\":false,\"P2pHttpProxy\":false,\"StrategicProviding\":false,\"AcceleratedDHTClient\":false},\"Plugins\":{\"Plugins\":null},\"Pinning\":{\"RemoteServices\":null},\"Internal\":{}}\"");
        // 读取默认Identity
        JSONObject identity = ipfs.getConfigKey("Identity");
        // 添加到新的配置文件中
        ipfs.setConfig(config.put("Identity", identity));
    }
}
