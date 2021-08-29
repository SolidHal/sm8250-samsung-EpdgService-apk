.class synthetic Lcom/sec/erisclient/IPSecConnection$1;
.super Ljava/lang/Object;
.source "IPSecConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/erisclient/IPSecConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$sec$epdg$DataType$IWlanEnum$IkeDhGroup:[I

.field static final synthetic $SwitchMap$com$sec$epdg$DataType$IWlanEnum$IpSecDHGroup:[I


# direct methods
.method static constructor <clinit>()V
    .locals 21

    .line 483
    invoke-static {}, Lcom/sec/epdg/DataType/IWlanEnum$IkeDhGroup;->values()[Lcom/sec/epdg/DataType/IWlanEnum$IkeDhGroup;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/sec/erisclient/IPSecConnection$1;->$SwitchMap$com$sec$epdg$DataType$IWlanEnum$IkeDhGroup:[I

    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Lcom/sec/epdg/DataType/IWlanEnum$IkeDhGroup;->IKE_GROUP_MODP_768:Lcom/sec/epdg/DataType/IWlanEnum$IkeDhGroup;

    invoke-virtual {v2}, Lcom/sec/epdg/DataType/IWlanEnum$IkeDhGroup;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    const/4 v2, 0x2

    :try_start_1
    sget-object v0, Lcom/sec/erisclient/IPSecConnection$1;->$SwitchMap$com$sec$epdg$DataType$IWlanEnum$IkeDhGroup:[I

    sget-object v3, Lcom/sec/epdg/DataType/IWlanEnum$IkeDhGroup;->IKE_GROUP_MODP_1024:Lcom/sec/epdg/DataType/IWlanEnum$IkeDhGroup;

    invoke-virtual {v3}, Lcom/sec/epdg/DataType/IWlanEnum$IkeDhGroup;->ordinal()I

    move-result v3

    aput v2, v0, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    :goto_1
    const/4 v3, 0x3

    :try_start_2
    sget-object v0, Lcom/sec/erisclient/IPSecConnection$1;->$SwitchMap$com$sec$epdg$DataType$IWlanEnum$IkeDhGroup:[I

    sget-object v4, Lcom/sec/epdg/DataType/IWlanEnum$IkeDhGroup;->IKE_GROUP_MODP_1536:Lcom/sec/epdg/DataType/IWlanEnum$IkeDhGroup;

    invoke-virtual {v4}, Lcom/sec/epdg/DataType/IWlanEnum$IkeDhGroup;->ordinal()I

    move-result v4

    aput v3, v0, v4
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    :goto_2
    const/4 v4, 0x4

    :try_start_3
    sget-object v0, Lcom/sec/erisclient/IPSecConnection$1;->$SwitchMap$com$sec$epdg$DataType$IWlanEnum$IkeDhGroup:[I

    sget-object v5, Lcom/sec/epdg/DataType/IWlanEnum$IkeDhGroup;->IKE_GROUP_MODP_2048:Lcom/sec/epdg/DataType/IWlanEnum$IkeDhGroup;

    invoke-virtual {v5}, Lcom/sec/epdg/DataType/IWlanEnum$IkeDhGroup;->ordinal()I

    move-result v5

    aput v4, v0, v5
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    :catch_3
    move-exception v0

    :goto_3
    const/4 v5, 0x5

    :try_start_4
    sget-object v0, Lcom/sec/erisclient/IPSecConnection$1;->$SwitchMap$com$sec$epdg$DataType$IWlanEnum$IkeDhGroup:[I

    sget-object v6, Lcom/sec/epdg/DataType/IWlanEnum$IkeDhGroup;->IKE_GROUP_MODP_3072:Lcom/sec/epdg/DataType/IWlanEnum$IkeDhGroup;

    invoke-virtual {v6}, Lcom/sec/epdg/DataType/IWlanEnum$IkeDhGroup;->ordinal()I

    move-result v6

    aput v5, v0, v6
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_4

    :catch_4
    move-exception v0

    :goto_4
    const/4 v6, 0x6

    :try_start_5
    sget-object v0, Lcom/sec/erisclient/IPSecConnection$1;->$SwitchMap$com$sec$epdg$DataType$IWlanEnum$IkeDhGroup:[I

    sget-object v7, Lcom/sec/epdg/DataType/IWlanEnum$IkeDhGroup;->IKE_GROUP_MODP_4096:Lcom/sec/epdg/DataType/IWlanEnum$IkeDhGroup;

    invoke-virtual {v7}, Lcom/sec/epdg/DataType/IWlanEnum$IkeDhGroup;->ordinal()I

    move-result v7

    aput v6, v0, v7
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_5

    :catch_5
    move-exception v0

    :goto_5
    const/4 v7, 0x7

    :try_start_6
    sget-object v0, Lcom/sec/erisclient/IPSecConnection$1;->$SwitchMap$com$sec$epdg$DataType$IWlanEnum$IkeDhGroup:[I

    sget-object v8, Lcom/sec/epdg/DataType/IWlanEnum$IkeDhGroup;->IKE_GROUP_MODP_6144:Lcom/sec/epdg/DataType/IWlanEnum$IkeDhGroup;

    invoke-virtual {v8}, Lcom/sec/epdg/DataType/IWlanEnum$IkeDhGroup;->ordinal()I

    move-result v8

    aput v7, v0, v8
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    goto :goto_6

    :catch_6
    move-exception v0

    :goto_6
    const/16 v8, 0x8

    :try_start_7
    sget-object v0, Lcom/sec/erisclient/IPSecConnection$1;->$SwitchMap$com$sec$epdg$DataType$IWlanEnum$IkeDhGroup:[I

    sget-object v9, Lcom/sec/epdg/DataType/IWlanEnum$IkeDhGroup;->IKE_GROUP_MODP_8192:Lcom/sec/epdg/DataType/IWlanEnum$IkeDhGroup;

    invoke-virtual {v9}, Lcom/sec/epdg/DataType/IWlanEnum$IkeDhGroup;->ordinal()I

    move-result v9

    aput v8, v0, v9
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    goto :goto_7

    :catch_7
    move-exception v0

    :goto_7
    const/16 v9, 0x9

    :try_start_8
    sget-object v0, Lcom/sec/erisclient/IPSecConnection$1;->$SwitchMap$com$sec$epdg$DataType$IWlanEnum$IkeDhGroup:[I

    sget-object v10, Lcom/sec/epdg/DataType/IWlanEnum$IkeDhGroup;->IKE_GROUP_ECP_256:Lcom/sec/epdg/DataType/IWlanEnum$IkeDhGroup;

    invoke-virtual {v10}, Lcom/sec/epdg/DataType/IWlanEnum$IkeDhGroup;->ordinal()I

    move-result v10

    aput v9, v0, v10
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    goto :goto_8

    :catch_8
    move-exception v0

    :goto_8
    const/16 v10, 0xa

    :try_start_9
    sget-object v0, Lcom/sec/erisclient/IPSecConnection$1;->$SwitchMap$com$sec$epdg$DataType$IWlanEnum$IkeDhGroup:[I

    sget-object v11, Lcom/sec/epdg/DataType/IWlanEnum$IkeDhGroup;->IKE_GROUP_SUITE_B_GCM_128:Lcom/sec/epdg/DataType/IWlanEnum$IkeDhGroup;

    invoke-virtual {v11}, Lcom/sec/epdg/DataType/IWlanEnum$IkeDhGroup;->ordinal()I

    move-result v11

    aput v10, v0, v11
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    goto :goto_9

    :catch_9
    move-exception v0

    :goto_9
    const/16 v11, 0xb

    :try_start_a
    sget-object v0, Lcom/sec/erisclient/IPSecConnection$1;->$SwitchMap$com$sec$epdg$DataType$IWlanEnum$IkeDhGroup:[I

    sget-object v12, Lcom/sec/epdg/DataType/IWlanEnum$IkeDhGroup;->IKE_GROUP_ECP_384:Lcom/sec/epdg/DataType/IWlanEnum$IkeDhGroup;

    invoke-virtual {v12}, Lcom/sec/epdg/DataType/IWlanEnum$IkeDhGroup;->ordinal()I

    move-result v12

    aput v11, v0, v12
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_a

    goto :goto_a

    :catch_a
    move-exception v0

    :goto_a
    const/16 v12, 0xc

    :try_start_b
    sget-object v0, Lcom/sec/erisclient/IPSecConnection$1;->$SwitchMap$com$sec$epdg$DataType$IWlanEnum$IkeDhGroup:[I

    sget-object v13, Lcom/sec/epdg/DataType/IWlanEnum$IkeDhGroup;->IKE_GROUP_SUITE_B_GCM_256:Lcom/sec/epdg/DataType/IWlanEnum$IkeDhGroup;

    invoke-virtual {v13}, Lcom/sec/epdg/DataType/IWlanEnum$IkeDhGroup;->ordinal()I

    move-result v13

    aput v12, v0, v13
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_b

    goto :goto_b

    :catch_b
    move-exception v0

    :goto_b
    const/16 v13, 0xd

    :try_start_c
    sget-object v0, Lcom/sec/erisclient/IPSecConnection$1;->$SwitchMap$com$sec$epdg$DataType$IWlanEnum$IkeDhGroup:[I

    sget-object v14, Lcom/sec/epdg/DataType/IWlanEnum$IkeDhGroup;->IKE_GROUP_ECP_521:Lcom/sec/epdg/DataType/IWlanEnum$IkeDhGroup;

    invoke-virtual {v14}, Lcom/sec/epdg/DataType/IWlanEnum$IkeDhGroup;->ordinal()I

    move-result v14

    aput v13, v0, v14
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_c

    goto :goto_c

    :catch_c
    move-exception v0

    :goto_c
    const/16 v14, 0xe

    :try_start_d
    sget-object v0, Lcom/sec/erisclient/IPSecConnection$1;->$SwitchMap$com$sec$epdg$DataType$IWlanEnum$IkeDhGroup:[I

    sget-object v15, Lcom/sec/epdg/DataType/IWlanEnum$IkeDhGroup;->IKE_GROUP_MODP_1024_160:Lcom/sec/epdg/DataType/IWlanEnum$IkeDhGroup;

    invoke-virtual {v15}, Lcom/sec/epdg/DataType/IWlanEnum$IkeDhGroup;->ordinal()I

    move-result v15

    aput v14, v0, v15
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_d

    goto :goto_d

    :catch_d
    move-exception v0

    :goto_d
    const/16 v15, 0xf

    :try_start_e
    sget-object v0, Lcom/sec/erisclient/IPSecConnection$1;->$SwitchMap$com$sec$epdg$DataType$IWlanEnum$IkeDhGroup:[I

    sget-object v16, Lcom/sec/epdg/DataType/IWlanEnum$IkeDhGroup;->IKE_GROUP_MODP_2048_224:Lcom/sec/epdg/DataType/IWlanEnum$IkeDhGroup;

    invoke-virtual/range {v16 .. v16}, Lcom/sec/epdg/DataType/IWlanEnum$IkeDhGroup;->ordinal()I

    move-result v16

    aput v15, v0, v16
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_e

    goto :goto_e

    :catch_e
    move-exception v0

    :goto_e
    const/16 v16, 0x10

    :try_start_f
    sget-object v0, Lcom/sec/erisclient/IPSecConnection$1;->$SwitchMap$com$sec$epdg$DataType$IWlanEnum$IkeDhGroup:[I

    sget-object v17, Lcom/sec/epdg/DataType/IWlanEnum$IkeDhGroup;->IKE_GROUP_MODP_2048_256:Lcom/sec/epdg/DataType/IWlanEnum$IkeDhGroup;

    invoke-virtual/range {v17 .. v17}, Lcom/sec/epdg/DataType/IWlanEnum$IkeDhGroup;->ordinal()I

    move-result v17

    aput v16, v0, v17
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_f

    goto :goto_f

    :catch_f
    move-exception v0

    :goto_f
    const/16 v17, 0x11

    :try_start_10
    sget-object v0, Lcom/sec/erisclient/IPSecConnection$1;->$SwitchMap$com$sec$epdg$DataType$IWlanEnum$IkeDhGroup:[I

    sget-object v18, Lcom/sec/epdg/DataType/IWlanEnum$IkeDhGroup;->IKE_GROUP_ECP_192:Lcom/sec/epdg/DataType/IWlanEnum$IkeDhGroup;

    invoke-virtual/range {v18 .. v18}, Lcom/sec/epdg/DataType/IWlanEnum$IkeDhGroup;->ordinal()I

    move-result v18

    aput v17, v0, v18
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_10} :catch_10

    goto :goto_10

    :catch_10
    move-exception v0

    :goto_10
    const/16 v18, 0x12

    :try_start_11
    sget-object v0, Lcom/sec/erisclient/IPSecConnection$1;->$SwitchMap$com$sec$epdg$DataType$IWlanEnum$IkeDhGroup:[I

    sget-object v19, Lcom/sec/epdg/DataType/IWlanEnum$IkeDhGroup;->IKE_GROUP_ECP_224:Lcom/sec/epdg/DataType/IWlanEnum$IkeDhGroup;

    invoke-virtual/range {v19 .. v19}, Lcom/sec/epdg/DataType/IWlanEnum$IkeDhGroup;->ordinal()I

    move-result v19

    aput v18, v0, v19
    :try_end_11
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_11} :catch_11

    goto :goto_11

    :catch_11
    move-exception v0

    :goto_11
    :try_start_12
    sget-object v0, Lcom/sec/erisclient/IPSecConnection$1;->$SwitchMap$com$sec$epdg$DataType$IWlanEnum$IkeDhGroup:[I

    sget-object v19, Lcom/sec/epdg/DataType/IWlanEnum$IkeDhGroup;->IKE_GROUP_ANY:Lcom/sec/epdg/DataType/IWlanEnum$IkeDhGroup;

    invoke-virtual/range {v19 .. v19}, Lcom/sec/epdg/DataType/IWlanEnum$IkeDhGroup;->ordinal()I

    move-result v19

    const/16 v20, 0x13

    aput v20, v0, v19
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_12} :catch_12

    goto :goto_12

    :catch_12
    move-exception v0

    .line 266
    :goto_12
    invoke-static {}, Lcom/sec/epdg/DataType/IWlanEnum$IpSecDHGroup;->values()[Lcom/sec/epdg/DataType/IWlanEnum$IpSecDHGroup;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/sec/erisclient/IPSecConnection$1;->$SwitchMap$com$sec$epdg$DataType$IWlanEnum$IpSecDHGroup:[I

    :try_start_13
    sget-object v19, Lcom/sec/epdg/DataType/IWlanEnum$IpSecDHGroup;->IPSEC_GROUP_MODP_768:Lcom/sec/epdg/DataType/IWlanEnum$IpSecDHGroup;

    invoke-virtual/range {v19 .. v19}, Lcom/sec/epdg/DataType/IWlanEnum$IpSecDHGroup;->ordinal()I

    move-result v19

    aput v1, v0, v19
    :try_end_13
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_13} :catch_13

    goto :goto_13

    :catch_13
    move-exception v0

    :goto_13
    :try_start_14
    sget-object v0, Lcom/sec/erisclient/IPSecConnection$1;->$SwitchMap$com$sec$epdg$DataType$IWlanEnum$IpSecDHGroup:[I

    sget-object v1, Lcom/sec/epdg/DataType/IWlanEnum$IpSecDHGroup;->IPSEC_GROUP_MODP_1024:Lcom/sec/epdg/DataType/IWlanEnum$IpSecDHGroup;

    invoke-virtual {v1}, Lcom/sec/epdg/DataType/IWlanEnum$IpSecDHGroup;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_14} :catch_14

    goto :goto_14

    :catch_14
    move-exception v0

    :goto_14
    :try_start_15
    sget-object v0, Lcom/sec/erisclient/IPSecConnection$1;->$SwitchMap$com$sec$epdg$DataType$IWlanEnum$IpSecDHGroup:[I

    sget-object v1, Lcom/sec/epdg/DataType/IWlanEnum$IpSecDHGroup;->IPSEC_GROUP_MODP_1536:Lcom/sec/epdg/DataType/IWlanEnum$IpSecDHGroup;

    invoke-virtual {v1}, Lcom/sec/epdg/DataType/IWlanEnum$IpSecDHGroup;->ordinal()I

    move-result v1

    aput v3, v0, v1
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_15} :catch_15

    goto :goto_15

    :catch_15
    move-exception v0

    :goto_15
    :try_start_16
    sget-object v0, Lcom/sec/erisclient/IPSecConnection$1;->$SwitchMap$com$sec$epdg$DataType$IWlanEnum$IpSecDHGroup:[I

    sget-object v1, Lcom/sec/epdg/DataType/IWlanEnum$IpSecDHGroup;->IPSEC_GROUP_MODP_2048:Lcom/sec/epdg/DataType/IWlanEnum$IpSecDHGroup;

    invoke-virtual {v1}, Lcom/sec/epdg/DataType/IWlanEnum$IpSecDHGroup;->ordinal()I

    move-result v1

    aput v4, v0, v1
    :try_end_16
    .catch Ljava/lang/NoSuchFieldError; {:try_start_16 .. :try_end_16} :catch_16

    goto :goto_16

    :catch_16
    move-exception v0

    :goto_16
    :try_start_17
    sget-object v0, Lcom/sec/erisclient/IPSecConnection$1;->$SwitchMap$com$sec$epdg$DataType$IWlanEnum$IpSecDHGroup:[I

    sget-object v1, Lcom/sec/epdg/DataType/IWlanEnum$IpSecDHGroup;->IPSEC_GROUP_MODP_3072:Lcom/sec/epdg/DataType/IWlanEnum$IpSecDHGroup;

    invoke-virtual {v1}, Lcom/sec/epdg/DataType/IWlanEnum$IpSecDHGroup;->ordinal()I

    move-result v1

    aput v5, v0, v1
    :try_end_17
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_17} :catch_17

    goto :goto_17

    :catch_17
    move-exception v0

    :goto_17
    :try_start_18
    sget-object v0, Lcom/sec/erisclient/IPSecConnection$1;->$SwitchMap$com$sec$epdg$DataType$IWlanEnum$IpSecDHGroup:[I

    sget-object v1, Lcom/sec/epdg/DataType/IWlanEnum$IpSecDHGroup;->IPSEC_GROUP_MODP_4096:Lcom/sec/epdg/DataType/IWlanEnum$IpSecDHGroup;

    invoke-virtual {v1}, Lcom/sec/epdg/DataType/IWlanEnum$IpSecDHGroup;->ordinal()I

    move-result v1

    aput v6, v0, v1
    :try_end_18
    .catch Ljava/lang/NoSuchFieldError; {:try_start_18 .. :try_end_18} :catch_18

    goto :goto_18

    :catch_18
    move-exception v0

    :goto_18
    :try_start_19
    sget-object v0, Lcom/sec/erisclient/IPSecConnection$1;->$SwitchMap$com$sec$epdg$DataType$IWlanEnum$IpSecDHGroup:[I

    sget-object v1, Lcom/sec/epdg/DataType/IWlanEnum$IpSecDHGroup;->IPSEC_GROUP_MODP_6144:Lcom/sec/epdg/DataType/IWlanEnum$IpSecDHGroup;

    invoke-virtual {v1}, Lcom/sec/epdg/DataType/IWlanEnum$IpSecDHGroup;->ordinal()I

    move-result v1

    aput v7, v0, v1
    :try_end_19
    .catch Ljava/lang/NoSuchFieldError; {:try_start_19 .. :try_end_19} :catch_19

    goto :goto_19

    :catch_19
    move-exception v0

    :goto_19
    :try_start_1a
    sget-object v0, Lcom/sec/erisclient/IPSecConnection$1;->$SwitchMap$com$sec$epdg$DataType$IWlanEnum$IpSecDHGroup:[I

    sget-object v1, Lcom/sec/epdg/DataType/IWlanEnum$IpSecDHGroup;->IPSEC_GROUP_MODP_8192:Lcom/sec/epdg/DataType/IWlanEnum$IpSecDHGroup;

    invoke-virtual {v1}, Lcom/sec/epdg/DataType/IWlanEnum$IpSecDHGroup;->ordinal()I

    move-result v1

    aput v8, v0, v1
    :try_end_1a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1a .. :try_end_1a} :catch_1a

    goto :goto_1a

    :catch_1a
    move-exception v0

    :goto_1a
    :try_start_1b
    sget-object v0, Lcom/sec/erisclient/IPSecConnection$1;->$SwitchMap$com$sec$epdg$DataType$IWlanEnum$IpSecDHGroup:[I

    sget-object v1, Lcom/sec/epdg/DataType/IWlanEnum$IpSecDHGroup;->IPSEC_GROUP_ECP_256:Lcom/sec/epdg/DataType/IWlanEnum$IpSecDHGroup;

    invoke-virtual {v1}, Lcom/sec/epdg/DataType/IWlanEnum$IpSecDHGroup;->ordinal()I

    move-result v1

    aput v9, v0, v1
    :try_end_1b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1b .. :try_end_1b} :catch_1b

    goto :goto_1b

    :catch_1b
    move-exception v0

    :goto_1b
    :try_start_1c
    sget-object v0, Lcom/sec/erisclient/IPSecConnection$1;->$SwitchMap$com$sec$epdg$DataType$IWlanEnum$IpSecDHGroup:[I

    sget-object v1, Lcom/sec/epdg/DataType/IWlanEnum$IpSecDHGroup;->IPSEC_GROUP_ECP_384:Lcom/sec/epdg/DataType/IWlanEnum$IpSecDHGroup;

    invoke-virtual {v1}, Lcom/sec/epdg/DataType/IWlanEnum$IpSecDHGroup;->ordinal()I

    move-result v1

    aput v10, v0, v1
    :try_end_1c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1c .. :try_end_1c} :catch_1c

    goto :goto_1c

    :catch_1c
    move-exception v0

    :goto_1c
    :try_start_1d
    sget-object v0, Lcom/sec/erisclient/IPSecConnection$1;->$SwitchMap$com$sec$epdg$DataType$IWlanEnum$IpSecDHGroup:[I

    sget-object v1, Lcom/sec/epdg/DataType/IWlanEnum$IpSecDHGroup;->IPSEC_GROUP_ECP_521:Lcom/sec/epdg/DataType/IWlanEnum$IpSecDHGroup;

    invoke-virtual {v1}, Lcom/sec/epdg/DataType/IWlanEnum$IpSecDHGroup;->ordinal()I

    move-result v1

    aput v11, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_1d} :catch_1d

    goto :goto_1d

    :catch_1d
    move-exception v0

    :goto_1d
    :try_start_1e
    sget-object v0, Lcom/sec/erisclient/IPSecConnection$1;->$SwitchMap$com$sec$epdg$DataType$IWlanEnum$IpSecDHGroup:[I

    sget-object v1, Lcom/sec/epdg/DataType/IWlanEnum$IpSecDHGroup;->IPSEC_GROUP_MODP_1024_160:Lcom/sec/epdg/DataType/IWlanEnum$IpSecDHGroup;

    invoke-virtual {v1}, Lcom/sec/epdg/DataType/IWlanEnum$IpSecDHGroup;->ordinal()I

    move-result v1

    aput v12, v0, v1
    :try_end_1e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1e .. :try_end_1e} :catch_1e

    goto :goto_1e

    :catch_1e
    move-exception v0

    :goto_1e
    :try_start_1f
    sget-object v0, Lcom/sec/erisclient/IPSecConnection$1;->$SwitchMap$com$sec$epdg$DataType$IWlanEnum$IpSecDHGroup:[I

    sget-object v1, Lcom/sec/epdg/DataType/IWlanEnum$IpSecDHGroup;->IPSEC_GROUP_MODP_2048_224:Lcom/sec/epdg/DataType/IWlanEnum$IpSecDHGroup;

    invoke-virtual {v1}, Lcom/sec/epdg/DataType/IWlanEnum$IpSecDHGroup;->ordinal()I

    move-result v1

    aput v13, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_1f} :catch_1f

    goto :goto_1f

    :catch_1f
    move-exception v0

    :goto_1f
    :try_start_20
    sget-object v0, Lcom/sec/erisclient/IPSecConnection$1;->$SwitchMap$com$sec$epdg$DataType$IWlanEnum$IpSecDHGroup:[I

    sget-object v1, Lcom/sec/epdg/DataType/IWlanEnum$IpSecDHGroup;->IPSEC_GROUP_MODP_2048_256:Lcom/sec/epdg/DataType/IWlanEnum$IpSecDHGroup;

    invoke-virtual {v1}, Lcom/sec/epdg/DataType/IWlanEnum$IpSecDHGroup;->ordinal()I

    move-result v1

    aput v14, v0, v1
    :try_end_20
    .catch Ljava/lang/NoSuchFieldError; {:try_start_20 .. :try_end_20} :catch_20

    goto :goto_20

    :catch_20
    move-exception v0

    :goto_20
    :try_start_21
    sget-object v0, Lcom/sec/erisclient/IPSecConnection$1;->$SwitchMap$com$sec$epdg$DataType$IWlanEnum$IpSecDHGroup:[I

    sget-object v1, Lcom/sec/epdg/DataType/IWlanEnum$IpSecDHGroup;->IPSEC_GROUP_ECP_192:Lcom/sec/epdg/DataType/IWlanEnum$IpSecDHGroup;

    invoke-virtual {v1}, Lcom/sec/epdg/DataType/IWlanEnum$IpSecDHGroup;->ordinal()I

    move-result v1

    aput v15, v0, v1
    :try_end_21
    .catch Ljava/lang/NoSuchFieldError; {:try_start_21 .. :try_end_21} :catch_21

    goto :goto_21

    :catch_21
    move-exception v0

    :goto_21
    :try_start_22
    sget-object v0, Lcom/sec/erisclient/IPSecConnection$1;->$SwitchMap$com$sec$epdg$DataType$IWlanEnum$IpSecDHGroup:[I

    sget-object v1, Lcom/sec/epdg/DataType/IWlanEnum$IpSecDHGroup;->IPSEC_GROUP_ECP_224:Lcom/sec/epdg/DataType/IWlanEnum$IpSecDHGroup;

    invoke-virtual {v1}, Lcom/sec/epdg/DataType/IWlanEnum$IpSecDHGroup;->ordinal()I

    move-result v1

    aput v16, v0, v1
    :try_end_22
    .catch Ljava/lang/NoSuchFieldError; {:try_start_22 .. :try_end_22} :catch_22

    goto :goto_22

    :catch_22
    move-exception v0

    :goto_22
    :try_start_23
    sget-object v0, Lcom/sec/erisclient/IPSecConnection$1;->$SwitchMap$com$sec$epdg$DataType$IWlanEnum$IpSecDHGroup:[I

    sget-object v1, Lcom/sec/epdg/DataType/IWlanEnum$IpSecDHGroup;->IPSEC_GROUP_ANY_OR_NONE:Lcom/sec/epdg/DataType/IWlanEnum$IpSecDHGroup;

    invoke-virtual {v1}, Lcom/sec/epdg/DataType/IWlanEnum$IpSecDHGroup;->ordinal()I

    move-result v1

    aput v17, v0, v1
    :try_end_23
    .catch Ljava/lang/NoSuchFieldError; {:try_start_23 .. :try_end_23} :catch_23

    goto :goto_23

    :catch_23
    move-exception v0

    :goto_23
    :try_start_24
    sget-object v0, Lcom/sec/erisclient/IPSecConnection$1;->$SwitchMap$com$sec$epdg$DataType$IWlanEnum$IpSecDHGroup:[I

    sget-object v1, Lcom/sec/epdg/DataType/IWlanEnum$IpSecDHGroup;->IPSEC_GROUP_ANY:Lcom/sec/epdg/DataType/IWlanEnum$IpSecDHGroup;

    invoke-virtual {v1}, Lcom/sec/epdg/DataType/IWlanEnum$IpSecDHGroup;->ordinal()I

    move-result v1

    aput v18, v0, v1
    :try_end_24
    .catch Ljava/lang/NoSuchFieldError; {:try_start_24 .. :try_end_24} :catch_24

    goto :goto_24

    :catch_24
    move-exception v0

    :goto_24
    return-void
.end method
