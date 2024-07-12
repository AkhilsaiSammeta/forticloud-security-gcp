
from fortinet_api import FortiGateClient, FortiWebClient, FortiCASBClient

fortigate_client = FortiGateClient(api_key="your-api-key", region="us-west1")
fortigate_client.create_firewall_policy(...)

forticasb_client = FortiCASBClient(api_key="your-api-key", region="us-west1")
forticasb_client.scan_gcp_assets(...)
