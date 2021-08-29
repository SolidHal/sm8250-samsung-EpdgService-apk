.class public Lcom/sec/erisclient/IPSecConnectionState;
.super Ljava/lang/Object;
.source "IPSecConnectionState.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "IPSecConnectionState"

.field private static final TAG_AT_TRUST_IND:Ljava/lang/String; = "mAtTrustInd"

.field private static final TAG_INTFNAME:Ljava/lang/String; = "mIntfName"

.field private static final TAG_IPTYPE:Ljava/lang/String; = "mIpType"

.field private static final TAG_IPv4ADDR:Ljava/lang/String; = "mIpv4Addr"

.field private static final TAG_IPv4DNS:Ljava/lang/String; = "mIpv4Dnses"

.field private static final TAG_IPv4LENG:Ljava/lang/String; = "mIpv4PrefixLen"

.field private static final TAG_IPv4PCSC:Ljava/lang/String; = "mIpv4PcscfAddr"

.field private static final TAG_IPv6ADDR:Ljava/lang/String; = "mIpv6Addr"

.field private static final TAG_IPv6DNS:Ljava/lang/String; = "mIpv6Dnses"

.field private static final TAG_IPv6LENG:Ljava/lang/String; = "mIpv6PrefixLen"

.field private static final TAG_IPv6PCSC:Ljava/lang/String; = "mIpv6PcscfAddr"


# instance fields
.field private mAtTrustInd:I

.field private mIntfName:Ljava/lang/String;

.field private mIpType:Lcom/sec/epdg/DataType/IWlanEnum$IPSecIpType;

.field private mIpv4Addr:Ljava/lang/String;

.field private mIpv4Dnses:[Ljava/lang/String;

.field private mIpv4PcscfAddr:[Ljava/lang/String;

.field private mIpv4PrefixLen:I

.field private mIpv6Addr:Ljava/lang/String;

.field private mIpv6Dnses:[Ljava/lang/String;

.field private mIpv6PcscfAddr:[Ljava/lang/String;

.field private mIpv6PrefixLen:I


# direct methods
.method public constructor <init>(IILcom/sec/epdg/DataType/IWlanEnum$IPSecIpType;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2
    .param p1, "ipv4prefixlen"    # I
    .param p2, "ipv6prefixlen"    # I
    .param p3, "iptype"    # Lcom/sec/epdg/DataType/IWlanEnum$IPSecIpType;
    .param p4, "intfName"    # Ljava/lang/String;
    .param p5, "ipv4Dnses"    # [Ljava/lang/String;
    .param p6, "ipv6Dnses"    # [Ljava/lang/String;
    .param p7, "ipv4PcscfAddr"    # [Ljava/lang/String;
    .param p8, "ipv6PcscfAddr"    # [Ljava/lang/String;
    .param p9, "ipv4Addr"    # Ljava/lang/String;
    .param p10, "ipv6Addr"    # Ljava/lang/String;
    .param p11, "mAtTrustInd"    # I

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const-string v0, "IPSecConnectionState"

    const-string v1, "IPSecConnectionState()"

    invoke-static {v0, v1}, Lcom/sec/erisclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    iput p1, p0, Lcom/sec/erisclient/IPSecConnectionState;->mIpv4PrefixLen:I

    .line 50
    iput p2, p0, Lcom/sec/erisclient/IPSecConnectionState;->mIpv6PrefixLen:I

    .line 51
    iput-object p3, p0, Lcom/sec/erisclient/IPSecConnectionState;->mIpType:Lcom/sec/epdg/DataType/IWlanEnum$IPSecIpType;

    .line 52
    iput-object p4, p0, Lcom/sec/erisclient/IPSecConnectionState;->mIntfName:Ljava/lang/String;

    .line 53
    iput-object p5, p0, Lcom/sec/erisclient/IPSecConnectionState;->mIpv4Dnses:[Ljava/lang/String;

    .line 54
    iput-object p6, p0, Lcom/sec/erisclient/IPSecConnectionState;->mIpv6Dnses:[Ljava/lang/String;

    .line 55
    iput-object p7, p0, Lcom/sec/erisclient/IPSecConnectionState;->mIpv4PcscfAddr:[Ljava/lang/String;

    .line 56
    iput-object p8, p0, Lcom/sec/erisclient/IPSecConnectionState;->mIpv6PcscfAddr:[Ljava/lang/String;

    .line 57
    iput-object p9, p0, Lcom/sec/erisclient/IPSecConnectionState;->mIpv4Addr:Ljava/lang/String;

    .line 58
    iput-object p10, p0, Lcom/sec/erisclient/IPSecConnectionState;->mIpv6Addr:Ljava/lang/String;

    .line 59
    iput p11, p0, Lcom/sec/erisclient/IPSecConnectionState;->mAtTrustInd:I

    .line 60
    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 18
    .param p1, "jobject"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 62
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 63
    const-string v2, "IPSecConnectionState"

    const-string v3, "IPSecConnectionState()"

    invoke-static {v2, v3}, Lcom/sec/erisclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    const-string v2, "mIntfName"

    invoke-direct {v0, v1, v2}, Lcom/sec/erisclient/IPSecConnectionState;->getStringFromJson(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 77
    .local v2, "mIntfName":Ljava/lang/String;
    const-string v3, "mIpType"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-direct {v0, v3}, Lcom/sec/erisclient/IPSecConnectionState;->getIpTypeFromInt(I)Lcom/sec/epdg/DataType/IWlanEnum$IPSecIpType;

    move-result-object v3

    .line 78
    .local v3, "mIpType":Lcom/sec/epdg/DataType/IWlanEnum$IPSecIpType;
    const-string v4, "mIpv4Addr"

    invoke-direct {v0, v1, v4}, Lcom/sec/erisclient/IPSecConnectionState;->getStringFromJson(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 79
    .local v4, "mIpv4Addr":Ljava/lang/String;
    const-string v5, "mIpv6Addr"

    invoke-direct {v0, v1, v5}, Lcom/sec/erisclient/IPSecConnectionState;->getStringFromJson(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 80
    .local v5, "mIpv6Addr":Ljava/lang/String;
    const-string v6, "mIpv4PrefixLen"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 81
    .local v6, "mIpv4PrefixLen":I
    const-string v7, "mIpv6PrefixLen"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    .line 82
    .local v7, "mIpv6PrefixLen":I
    const-string v8, "mAtTrustInd"

    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8

    .line 85
    .local v8, "mAtTrustInd":I
    const-string v9, "mIpv4Dnses"

    invoke-virtual {v1, v9}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v9

    .line 86
    .local v9, "ipv4dnsarr":Lorg/json/JSONArray;
    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v10

    new-array v10, v10, [Ljava/lang/String;

    .line 87
    .local v10, "mIpv4Dnses":[Ljava/lang/String;
    const/4 v11, 0x0

    .local v11, "index":I
    :goto_0
    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v12

    if-ge v11, v12, :cond_0

    .line 88
    invoke-virtual {v9, v11}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    .line 87
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 91
    .end local v11    # "index":I
    :cond_0
    const-string v11, "mIpv6Dnses"

    invoke-virtual {v1, v11}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v11

    .line 92
    .local v11, "ipv6dnsarr":Lorg/json/JSONArray;
    invoke-virtual {v11}, Lorg/json/JSONArray;->length()I

    move-result v12

    new-array v12, v12, [Ljava/lang/String;

    .line 93
    .local v12, "mIpv6Dnses":[Ljava/lang/String;
    const/4 v13, 0x0

    .local v13, "index":I
    :goto_1
    invoke-virtual {v11}, Lorg/json/JSONArray;->length()I

    move-result v14

    if-ge v13, v14, :cond_1

    .line 94
    invoke-virtual {v11, v13}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    .line 93
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 97
    .end local v13    # "index":I
    :cond_1
    const-string v13, "mIpv4PcscfAddr"

    invoke-virtual {v1, v13}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v13

    .line 98
    .local v13, "ipv4pcscarr":Lorg/json/JSONArray;
    invoke-virtual {v13}, Lorg/json/JSONArray;->length()I

    move-result v14

    new-array v14, v14, [Ljava/lang/String;

    .line 99
    .local v14, "mIpv4PcscfAddr":[Ljava/lang/String;
    const/4 v15, 0x0

    .local v15, "index":I
    :goto_2
    move-object/from16 v16, v9

    .end local v9    # "ipv4dnsarr":Lorg/json/JSONArray;
    .local v16, "ipv4dnsarr":Lorg/json/JSONArray;
    invoke-virtual {v13}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-ge v15, v9, :cond_2

    .line 100
    invoke-virtual {v13, v15}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v14, v15

    .line 99
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v9, v16

    goto :goto_2

    .line 103
    .end local v15    # "index":I
    :cond_2
    const-string v9, "mIpv6PcscfAddr"

    invoke-virtual {v1, v9}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v9

    .line 104
    .local v9, "ipv6pcscarr":Lorg/json/JSONArray;
    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v15

    new-array v15, v15, [Ljava/lang/String;

    .line 105
    .local v15, "mIpv6PcscfAddr":[Ljava/lang/String;
    const/16 v17, 0x0

    move/from16 v1, v17

    .local v1, "index":I
    :goto_3
    move-object/from16 v17, v11

    .end local v11    # "ipv6dnsarr":Lorg/json/JSONArray;
    .local v17, "ipv6dnsarr":Lorg/json/JSONArray;
    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v11

    if-ge v1, v11, :cond_3

    .line 106
    invoke-virtual {v9, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v15, v1

    .line 105
    add-int/lit8 v1, v1, 0x1

    move-object/from16 v11, v17

    goto :goto_3

    .line 108
    .end local v1    # "index":I
    :cond_3
    iput v6, v0, Lcom/sec/erisclient/IPSecConnectionState;->mIpv4PrefixLen:I

    .line 109
    iput v7, v0, Lcom/sec/erisclient/IPSecConnectionState;->mIpv6PrefixLen:I

    .line 110
    iput-object v3, v0, Lcom/sec/erisclient/IPSecConnectionState;->mIpType:Lcom/sec/epdg/DataType/IWlanEnum$IPSecIpType;

    .line 111
    iput-object v2, v0, Lcom/sec/erisclient/IPSecConnectionState;->mIntfName:Ljava/lang/String;

    .line 112
    iput-object v10, v0, Lcom/sec/erisclient/IPSecConnectionState;->mIpv4Dnses:[Ljava/lang/String;

    .line 113
    iput-object v12, v0, Lcom/sec/erisclient/IPSecConnectionState;->mIpv6Dnses:[Ljava/lang/String;

    .line 114
    iput-object v14, v0, Lcom/sec/erisclient/IPSecConnectionState;->mIpv4PcscfAddr:[Ljava/lang/String;

    .line 115
    iput-object v15, v0, Lcom/sec/erisclient/IPSecConnectionState;->mIpv6PcscfAddr:[Ljava/lang/String;

    .line 116
    iput-object v4, v0, Lcom/sec/erisclient/IPSecConnectionState;->mIpv4Addr:Ljava/lang/String;

    .line 117
    iput-object v5, v0, Lcom/sec/erisclient/IPSecConnectionState;->mIpv6Addr:Ljava/lang/String;

    .line 118
    iput v8, v0, Lcom/sec/erisclient/IPSecConnectionState;->mAtTrustInd:I

    .line 119
    return-void
.end method

.method private getIpTypeFromInt(I)Lcom/sec/epdg/DataType/IWlanEnum$IPSecIpType;
    .locals 1
    .param p1, "val"    # I

    .line 129
    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    .line 137
    sget-object v0, Lcom/sec/epdg/DataType/IWlanEnum$IPSecIpType;->IP_VERSION_V4V6:Lcom/sec/epdg/DataType/IWlanEnum$IPSecIpType;

    return-object v0

    .line 135
    :cond_0
    sget-object v0, Lcom/sec/epdg/DataType/IWlanEnum$IPSecIpType;->IP_VERSION_6:Lcom/sec/epdg/DataType/IWlanEnum$IPSecIpType;

    return-object v0

    .line 133
    :cond_1
    sget-object v0, Lcom/sec/epdg/DataType/IWlanEnum$IPSecIpType;->IP_VERSION_4:Lcom/sec/epdg/DataType/IWlanEnum$IPSecIpType;

    return-object v0

    .line 131
    :cond_2
    sget-object v0, Lcom/sec/epdg/DataType/IWlanEnum$IPSecIpType;->IP_VERSION_V4V6:Lcom/sec/epdg/DataType/IWlanEnum$IPSecIpType;

    return-object v0
.end method

.method private getStringFromJson(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "jobject"    # Lorg/json/JSONObject;
    .param p2, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 122
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 123
    .local v0, "result":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 124
    const/4 v1, 0x0

    return-object v1

    .line 125
    :cond_0
    return-object v0
.end method


# virtual methods
.method public getAtTrustInd()I
    .locals 1

    .line 191
    iget v0, p0, Lcom/sec/erisclient/IPSecConnectionState;->mAtTrustInd:I

    return v0
.end method

.method public getIntfName()Ljava/lang/String;
    .locals 1

    .line 162
    iget-object v0, p0, Lcom/sec/erisclient/IPSecConnectionState;->mIntfName:Ljava/lang/String;

    return-object v0
.end method

.method public getIptype()Lcom/sec/epdg/DataType/IWlanEnum$IPSecIpType;
    .locals 1

    .line 158
    iget-object v0, p0, Lcom/sec/erisclient/IPSecConnectionState;->mIpType:Lcom/sec/epdg/DataType/IWlanEnum$IPSecIpType;

    return-object v0
.end method

.method public getIpv4PcscfAddr()[Ljava/lang/String;
    .locals 1

    .line 178
    iget-object v0, p0, Lcom/sec/erisclient/IPSecConnectionState;->mIpv4PcscfAddr:[Ljava/lang/String;

    return-object v0
.end method

.method public getIpv4addr()Ljava/lang/String;
    .locals 1

    .line 182
    iget-object v0, p0, Lcom/sec/erisclient/IPSecConnectionState;->mIpv4Addr:Ljava/lang/String;

    return-object v0
.end method

.method public getIpv4prefixlen()I
    .locals 1

    .line 150
    iget v0, p0, Lcom/sec/erisclient/IPSecConnectionState;->mIpv4PrefixLen:I

    return v0
.end method

.method public getIpv6PcscfAddr()[Ljava/lang/String;
    .locals 1

    .line 174
    iget-object v0, p0, Lcom/sec/erisclient/IPSecConnectionState;->mIpv6PcscfAddr:[Ljava/lang/String;

    return-object v0
.end method

.method public getIpv6addr()Ljava/lang/String;
    .locals 1

    .line 186
    iget-object v0, p0, Lcom/sec/erisclient/IPSecConnectionState;->mIpv6Addr:Ljava/lang/String;

    return-object v0
.end method

.method public getIpv6prefixlen()I
    .locals 1

    .line 154
    iget v0, p0, Lcom/sec/erisclient/IPSecConnectionState;->mIpv6PrefixLen:I

    return v0
.end method

.method public getmIpv4Dnses()[Ljava/lang/String;
    .locals 1

    .line 166
    iget-object v0, p0, Lcom/sec/erisclient/IPSecConnectionState;->mIpv4Dnses:[Ljava/lang/String;

    return-object v0
.end method

.method public getmIpv6Dnses()[Ljava/lang/String;
    .locals 1

    .line 170
    iget-object v0, p0, Lcom/sec/erisclient/IPSecConnectionState;->mIpv6Dnses:[Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 196
    const-string v0, "{"

    .line 197
    .local v0, "result":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Ipv4prefixlen="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sec/erisclient/IPSecConnectionState;->getIpv4prefixlen()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 198
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", Ipv6prefixlen="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sec/erisclient/IPSecConnectionState;->getIpv6prefixlen()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 199
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", Iptype="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sec/erisclient/IPSecConnectionState;->getIptype()Lcom/sec/epdg/DataType/IWlanEnum$IPSecIpType;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 200
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", IntfName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sec/erisclient/IPSecConnectionState;->getIntfName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 201
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", Ipv4Dnses="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sec/erisclient/IPSecConnectionState;->getmIpv4Dnses()[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 202
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", Ipv6Dnses="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sec/erisclient/IPSecConnectionState;->getmIpv6Dnses()[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 203
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", Ipv4PcscfAddr="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sec/erisclient/IPSecConnectionState;->getIpv4PcscfAddr()[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 204
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", Ipv6PcscfAddr="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sec/erisclient/IPSecConnectionState;->getIpv6PcscfAddr()[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 205
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", Ipv4addr="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sec/erisclient/IPSecConnectionState;->getIpv4addr()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 206
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", Ipv6addr="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sec/erisclient/IPSecConnectionState;->getIpv6addr()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 207
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", AtTrustInd="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sec/erisclient/IPSecConnectionState;->getAtTrustInd()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 208
    return-object v0
.end method
