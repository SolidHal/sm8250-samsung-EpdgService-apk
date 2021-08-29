.class public Lcom/sec/epdg/DataType/ApnData$IWlanLinkProperties;
.super Ljava/lang/Object;
.source "ApnData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/DataType/ApnData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IWlanLinkProperties"
.end annotation


# instance fields
.field private final mIntfName:Ljava/lang/String;

.field private final mIpType:Lcom/sec/epdg/DataType/IWlanEnum$IPSecIpType;

.field private final mIpv4Addr:Ljava/lang/String;

.field private final mIpv4Dnses:[Ljava/lang/String;

.field private final mIpv4PcscfAddr:[Ljava/lang/String;

.field private final mIpv4PrefixLen:I

.field private final mIpv6Addr:Ljava/lang/String;

.field private final mIpv6Dnses:[Ljava/lang/String;

.field private final mIpv6PcscfAddr:[Ljava/lang/String;

.field private final mIpv6PrefixLen:I

.field private final mPlmnid:Ljava/lang/String;

.field private final mSnssai:Ljava/lang/String;


# direct methods
.method public constructor <init>(IILcom/sec/epdg/DataType/IWlanEnum$IPSecIpType;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
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
    .param p11, "Snssai"    # Ljava/lang/String;
    .param p12, "plmnid"    # Ljava/lang/String;

    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 158
    iput p1, p0, Lcom/sec/epdg/DataType/ApnData$IWlanLinkProperties;->mIpv4PrefixLen:I

    .line 159
    iput p2, p0, Lcom/sec/epdg/DataType/ApnData$IWlanLinkProperties;->mIpv6PrefixLen:I

    .line 160
    iput-object p3, p0, Lcom/sec/epdg/DataType/ApnData$IWlanLinkProperties;->mIpType:Lcom/sec/epdg/DataType/IWlanEnum$IPSecIpType;

    .line 161
    iput-object p4, p0, Lcom/sec/epdg/DataType/ApnData$IWlanLinkProperties;->mIntfName:Ljava/lang/String;

    .line 162
    iput-object p5, p0, Lcom/sec/epdg/DataType/ApnData$IWlanLinkProperties;->mIpv4Dnses:[Ljava/lang/String;

    .line 163
    iput-object p6, p0, Lcom/sec/epdg/DataType/ApnData$IWlanLinkProperties;->mIpv6Dnses:[Ljava/lang/String;

    .line 164
    iput-object p7, p0, Lcom/sec/epdg/DataType/ApnData$IWlanLinkProperties;->mIpv4PcscfAddr:[Ljava/lang/String;

    .line 165
    iput-object p8, p0, Lcom/sec/epdg/DataType/ApnData$IWlanLinkProperties;->mIpv6PcscfAddr:[Ljava/lang/String;

    .line 166
    iput-object p9, p0, Lcom/sec/epdg/DataType/ApnData$IWlanLinkProperties;->mIpv4Addr:Ljava/lang/String;

    .line 167
    iput-object p10, p0, Lcom/sec/epdg/DataType/ApnData$IWlanLinkProperties;->mIpv6Addr:Ljava/lang/String;

    .line 168
    iput-object p11, p0, Lcom/sec/epdg/DataType/ApnData$IWlanLinkProperties;->mSnssai:Ljava/lang/String;

    .line 169
    iput-object p12, p0, Lcom/sec/epdg/DataType/ApnData$IWlanLinkProperties;->mPlmnid:Ljava/lang/String;

    .line 170
    return-void
.end method


# virtual methods
.method public getAddresses()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/net/LinkAddress;",
            ">;"
        }
    .end annotation

    .line 210
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 211
    .local v0, "addresses":Ljava/util/List;, "Ljava/util/List<Landroid/net/LinkAddress;>;"
    iget-object v1, p0, Lcom/sec/epdg/DataType/ApnData$IWlanLinkProperties;->mIpv4Addr:Ljava/lang/String;

    const-string v2, "/"

    if-eqz v1, :cond_0

    .line 212
    new-instance v1, Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/sec/epdg/DataType/ApnData$IWlanLinkProperties;->mIpv4Addr:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/sec/epdg/DataType/ApnData$IWlanLinkProperties;->mIpv4PrefixLen:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 214
    .local v1, "ipv4":Ljava/lang/StringBuilder;
    new-instance v3, Landroid/net/LinkAddress;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/net/LinkAddress;-><init>(Ljava/lang/String;)V

    .line 215
    .local v3, "ipv4Addr":Landroid/net/LinkAddress;
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 218
    .end local v1    # "ipv4":Ljava/lang/StringBuilder;
    .end local v3    # "ipv4Addr":Landroid/net/LinkAddress;
    :cond_0
    iget-object v1, p0, Lcom/sec/epdg/DataType/ApnData$IWlanLinkProperties;->mIpv6Addr:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 219
    new-instance v1, Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/sec/epdg/DataType/ApnData$IWlanLinkProperties;->mIpv6Addr:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sec/epdg/DataType/ApnData$IWlanLinkProperties;->mIpv6PrefixLen:I

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 221
    .local v1, "ipv6":Ljava/lang/StringBuilder;
    new-instance v2, Landroid/net/LinkAddress;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/net/LinkAddress;-><init>(Ljava/lang/String;)V

    .line 222
    .local v2, "ipv6Addr":Landroid/net/LinkAddress;
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 224
    .end local v1    # "ipv6":Ljava/lang/StringBuilder;
    .end local v2    # "ipv6Addr":Landroid/net/LinkAddress;
    :cond_1
    return-object v0
.end method

.method public getIntfName()Ljava/lang/String;
    .locals 1

    .line 182
    iget-object v0, p0, Lcom/sec/epdg/DataType/ApnData$IWlanLinkProperties;->mIntfName:Ljava/lang/String;

    return-object v0
.end method

.method public getIptype()Lcom/sec/epdg/DataType/IWlanEnum$IPSecIpType;
    .locals 1

    .line 179
    iget-object v0, p0, Lcom/sec/epdg/DataType/ApnData$IWlanLinkProperties;->mIpType:Lcom/sec/epdg/DataType/IWlanEnum$IPSecIpType;

    return-object v0
.end method

.method public getIpv4PcscfAddr()[Ljava/lang/String;
    .locals 1

    .line 194
    iget-object v0, p0, Lcom/sec/epdg/DataType/ApnData$IWlanLinkProperties;->mIpv4PcscfAddr:[Ljava/lang/String;

    return-object v0
.end method

.method public getIpv4addr()Ljava/lang/String;
    .locals 1

    .line 197
    iget-object v0, p0, Lcom/sec/epdg/DataType/ApnData$IWlanLinkProperties;->mIpv4Addr:Ljava/lang/String;

    return-object v0
.end method

.method public getIpv4prefixlen()I
    .locals 1

    .line 173
    iget v0, p0, Lcom/sec/epdg/DataType/ApnData$IWlanLinkProperties;->mIpv4PrefixLen:I

    return v0
.end method

.method public getIpv6PcscfAddr()[Ljava/lang/String;
    .locals 1

    .line 191
    iget-object v0, p0, Lcom/sec/epdg/DataType/ApnData$IWlanLinkProperties;->mIpv6PcscfAddr:[Ljava/lang/String;

    return-object v0
.end method

.method public getIpv6addr()Ljava/lang/String;
    .locals 1

    .line 200
    iget-object v0, p0, Lcom/sec/epdg/DataType/ApnData$IWlanLinkProperties;->mIpv6Addr:Ljava/lang/String;

    return-object v0
.end method

.method public getIpv6prefixlen()I
    .locals 1

    .line 176
    iget v0, p0, Lcom/sec/epdg/DataType/ApnData$IWlanLinkProperties;->mIpv6PrefixLen:I

    return v0
.end method

.method public getPlmnid()Ljava/lang/String;
    .locals 1

    .line 206
    iget-object v0, p0, Lcom/sec/epdg/DataType/ApnData$IWlanLinkProperties;->mPlmnid:Ljava/lang/String;

    return-object v0
.end method

.method public getSnssai()Ljava/lang/String;
    .locals 1

    .line 203
    iget-object v0, p0, Lcom/sec/epdg/DataType/ApnData$IWlanLinkProperties;->mSnssai:Ljava/lang/String;

    return-object v0
.end method

.method public getmIpv4Dnses()[Ljava/lang/String;
    .locals 1

    .line 185
    iget-object v0, p0, Lcom/sec/epdg/DataType/ApnData$IWlanLinkProperties;->mIpv4Dnses:[Ljava/lang/String;

    return-object v0
.end method

.method public getmIpv6Dnses()[Ljava/lang/String;
    .locals 1

    .line 188
    iget-object v0, p0, Lcom/sec/epdg/DataType/ApnData$IWlanLinkProperties;->mIpv6Dnses:[Ljava/lang/String;

    return-object v0
.end method
