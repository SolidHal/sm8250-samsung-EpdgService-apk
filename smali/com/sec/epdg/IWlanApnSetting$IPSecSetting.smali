.class Lcom/sec/epdg/IWlanApnSetting$IPSecSetting;
.super Ljava/lang/Object;
.source "IWlanApnSetting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/IWlanApnSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "IPSecSetting"
.end annotation


# instance fields
.field private mIpSecDHGroup:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/sec/epdg/DataType/IWlanEnum$IpSecDHGroup;",
            ">;"
        }
    .end annotation
.end field

.field private mIpSecEncryptionType:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/sec/epdg/DataType/IWlanEnum$IpSecEncryptionType;",
            ">;"
        }
    .end annotation
.end field

.field private mIpSecIntegrityType:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/sec/epdg/DataType/IWlanEnum$IpSecIntegrityType;",
            ">;"
        }
    .end annotation
.end field

.field private mIpSecLifeTimeType:Lcom/sec/epdg/DataType/IWlanEnum$IpSecLifeTimeType;

.field private mIpSecLifeval:I

.field private mTunnelMode:Lcom/sec/epdg/DataType/IWlanEnum$TunnelModeType;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 248
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 250
    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/epdg/IWlanApnSetting$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sec/epdg/IWlanApnSetting$1;

    .line 234
    invoke-direct {p0}, Lcom/sec/epdg/IWlanApnSetting$IPSecSetting;-><init>()V

    return-void
.end method

.method static synthetic access$200(Lcom/sec/epdg/IWlanApnSetting$IPSecSetting;Lcom/sec/epdg/DataType/IWlanEnum$TunnelModeType;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/sec/epdg/DataType/IWlanEnum$IpSecLifeTimeType;I)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/IWlanApnSetting$IPSecSetting;
    .param p1, "x1"    # Lcom/sec/epdg/DataType/IWlanEnum$TunnelModeType;
    .param p2, "x2"    # Ljava/util/ArrayList;
    .param p3, "x3"    # Ljava/util/ArrayList;
    .param p4, "x4"    # Ljava/util/ArrayList;
    .param p5, "x5"    # Lcom/sec/epdg/DataType/IWlanEnum$IpSecLifeTimeType;
    .param p6, "x6"    # I

    .line 234
    invoke-direct/range {p0 .. p6}, Lcom/sec/epdg/IWlanApnSetting$IPSecSetting;->updateIpsecValues(Lcom/sec/epdg/DataType/IWlanEnum$TunnelModeType;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/sec/epdg/DataType/IWlanEnum$IpSecLifeTimeType;I)V

    return-void
.end method

.method private updateIpsecValues(Lcom/sec/epdg/DataType/IWlanEnum$TunnelModeType;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/sec/epdg/DataType/IWlanEnum$IpSecLifeTimeType;I)V
    .locals 0
    .param p1, "tunnelmode"    # Lcom/sec/epdg/DataType/IWlanEnum$TunnelModeType;
    .param p5, "ipseclifetype"    # Lcom/sec/epdg/DataType/IWlanEnum$IpSecLifeTimeType;
    .param p6, "ipseclifeval"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/epdg/DataType/IWlanEnum$TunnelModeType;",
            "Ljava/util/ArrayList<",
            "Lcom/sec/epdg/DataType/IWlanEnum$IpSecEncryptionType;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/sec/epdg/DataType/IWlanEnum$IpSecIntegrityType;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/sec/epdg/DataType/IWlanEnum$IpSecDHGroup;",
            ">;",
            "Lcom/sec/epdg/DataType/IWlanEnum$IpSecLifeTimeType;",
            "I)V"
        }
    .end annotation

    .line 255
    .local p2, "ipsecencryptiontype":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sec/epdg/DataType/IWlanEnum$IpSecEncryptionType;>;"
    .local p3, "ipsecintegrity":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sec/epdg/DataType/IWlanEnum$IpSecIntegrityType;>;"
    .local p4, "ipsecdhgroup":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sec/epdg/DataType/IWlanEnum$IpSecDHGroup;>;"
    iput-object p1, p0, Lcom/sec/epdg/IWlanApnSetting$IPSecSetting;->mTunnelMode:Lcom/sec/epdg/DataType/IWlanEnum$TunnelModeType;

    .line 256
    iput-object p2, p0, Lcom/sec/epdg/IWlanApnSetting$IPSecSetting;->mIpSecEncryptionType:Ljava/util/ArrayList;

    .line 257
    iput-object p3, p0, Lcom/sec/epdg/IWlanApnSetting$IPSecSetting;->mIpSecIntegrityType:Ljava/util/ArrayList;

    .line 258
    iput-object p4, p0, Lcom/sec/epdg/IWlanApnSetting$IPSecSetting;->mIpSecDHGroup:Ljava/util/ArrayList;

    .line 259
    iput-object p5, p0, Lcom/sec/epdg/IWlanApnSetting$IPSecSetting;->mIpSecLifeTimeType:Lcom/sec/epdg/DataType/IWlanEnum$IpSecLifeTimeType;

    .line 260
    iput p6, p0, Lcom/sec/epdg/IWlanApnSetting$IPSecSetting;->mIpSecLifeval:I

    .line 261
    return-void
.end method


# virtual methods
.method public getmIpSecDHGroup()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/sec/epdg/DataType/IWlanEnum$IpSecDHGroup;",
            ">;"
        }
    .end annotation

    .line 276
    iget-object v0, p0, Lcom/sec/epdg/IWlanApnSetting$IPSecSetting;->mIpSecDHGroup:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getmIpSecEncryptionType()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/sec/epdg/DataType/IWlanEnum$IpSecEncryptionType;",
            ">;"
        }
    .end annotation

    .line 268
    iget-object v0, p0, Lcom/sec/epdg/IWlanApnSetting$IPSecSetting;->mIpSecEncryptionType:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getmIpSecIntegrityType()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/sec/epdg/DataType/IWlanEnum$IpSecIntegrityType;",
            ">;"
        }
    .end annotation

    .line 272
    iget-object v0, p0, Lcom/sec/epdg/IWlanApnSetting$IPSecSetting;->mIpSecIntegrityType:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getmIpSecLifeTimeType()Lcom/sec/epdg/DataType/IWlanEnum$IpSecLifeTimeType;
    .locals 1

    .line 280
    iget-object v0, p0, Lcom/sec/epdg/IWlanApnSetting$IPSecSetting;->mIpSecLifeTimeType:Lcom/sec/epdg/DataType/IWlanEnum$IpSecLifeTimeType;

    return-object v0
.end method

.method public getmIpSecLifeval()I
    .locals 1

    .line 284
    iget v0, p0, Lcom/sec/epdg/IWlanApnSetting$IPSecSetting;->mIpSecLifeval:I

    return v0
.end method

.method public getmTunnelMode()Lcom/sec/epdg/DataType/IWlanEnum$TunnelModeType;
    .locals 1

    .line 264
    iget-object v0, p0, Lcom/sec/epdg/IWlanApnSetting$IPSecSetting;->mTunnelMode:Lcom/sec/epdg/DataType/IWlanEnum$TunnelModeType;

    return-object v0
.end method
