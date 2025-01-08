simple_switch_CLI --thrift-port 9090 <<<  "table_add MyIngress.feature1_exact MyIngress.set_actionselect1 0->0x20 => 1 1";

simple_switch_CLI --thrift-port 9090 <<< "table_add MyIngress.feature2_exact MyIngress.set_actionselect2 0->0xb87 => 1 1";
simple_switch_CLI --thrift-port 9090 <<< "table_add MyIngress.feature2_exact MyIngress.set_actionselect2 0xb88->0x1386 => 2 1";
simple_switch_CLI --thrift-port 9090 <<< "table_add MyIngress.feature2_exact MyIngress.set_actionselect2 0x1387->0x9c71 => 3 1";
simple_switch_CLI --thrift-port 9090 <<< "table_add MyIngress.feature2_exact MyIngress.set_actionselect2 0x9c72->0xc02b => 4 1";
simple_switch_CLI --thrift-port 9090 <<< "table_add MyIngress.feature2_exact MyIngress.set_actionselect2 0xc02c->0xed54 => 5 1";
simple_switch_CLI --thrift-port 9090 <<< "table_add MyIngress.feature2_exact MyIngress.set_actionselect2 0xed55->0xffff => 6 1";

simple_switch_CLI --thrift-port 9090 <<< "table_add MyIngress.feature3_exact MyIngress.set_actionselect3 0x0->0x20fb => 1 1";
simple_switch_CLI --thrift-port 9090 <<< "table_add MyIngress.feature3_exact MyIngress.set_actionselect3 0x20fc->0xd2d6 => 2 1";
simple_switch_CLI --thrift-port 9090 <<< "table_add MyIngress.feature3_exact MyIngress.set_actionselect3 0xd2d7->0xffff => 3 1";

simple_switch_CLI --thrift-port 9090 <<< "table_add MyIngress.ipv4_exact MyIngress.ipv4_forward 1->1 1->3 1->1 => 0x0a000104 4 1";
simple_switch_CLI --thrift-port 9090 <<< "table_add MyIngress.ipv4_exact MyIngress.ipv4_forward 1->1 4->4 1->1 => 0x0a000103 3 1";
simple_switch_CLI --thrift-port 9090 <<< "table_add MyIngress.ipv4_exact MyIngress.ipv4_forward 1->1 5->5 1->1 => 0x0a000104 4 1";
simple_switch_CLI --thrift-port 9090 <<< "table_add MyIngress.ipv4_exact MyIngress.ipv4_forward 1->1 6->6 1->1 => 0x0a000103 3 1";
simple_switch_CLI --thrift-port 9090 <<< "table_add MyIngress.ipv4_exact MyIngress.ipv4_forward 1->1 1->1 2->2 => 0x0a000104 4 1";
simple_switch_CLI --thrift-port 9090 <<< "table_add MyIngress.ipv4_exact MyIngress.ipv4_forward 1->1 1->1 3->3 => 0x0a000104 4 1";
simple_switch_CLI --thrift-port 9090 <<< "table_add MyIngress.ipv4_exact MyIngress.ipv4_forward 1->1 2->2 2->3 => 0x0a000102 2 1";
simple_switch_CLI --thrift-port 9090 <<< "table_add MyIngress.ipv4_exact MyIngress.ipv4_forward 1->1 3->6 2->3 => 0x0a000104 4 1";
