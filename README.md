# Thermal-Controller

ペルチェ素子を用いて試料を冷却する。

P制御により目標温度値へと制御する。(PID制御しようとした形跡あるけど気にしない。)
目標温度値は20℃前後が目安。

回路設計はフリーの回路設計ソフトであるKiCad(version5.1.10)によって設計した。version6.0以降だと仕様の変更に伴い回路図が変化する可能性有。

冷却はヒートシンクにDCファンをつなげている。DCファンの制御をするかどうかはご自由に。


![Thermal Controller](https://user-images.githubusercontent.com/93374196/148498071-bb25758a-139b-424b-8cbc-57188628f428.jpg)
